using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using AutoMapper;
using CrossCutting.Logging;
using ElmahCore.Mvc;
using ElmahCore.Sql;
using IOC;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.AspNetCore.Mvc.Razor;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using NLog;
using WebApp.Hubs;
using WebApp.Infrastructure;

namespace WebApp
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            GoodWorkVerbs.RegisterGoodJobVerbs();
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        public IContainer ApplicationContainer { get; private set; }

        Logger logger = NLog.Web.NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();

        // This method gets called by the runtime. Use this method to add services to the container.
        public IServiceProvider ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.AddAutoMapper();

            services.Configure<RazorViewEngineOptions>(options =>
            {
                options.AreaViewLocationFormats.Clear();
                options.AreaViewLocationFormats.Add("/Areas/{2}/Views/{1}/{0}.cshtml");
                options.AreaViewLocationFormats.Add("/Areas/{2}/Views/Shared/{0}.cshtml");
                options.AreaViewLocationFormats.Add("/Views/Shared/{0}.cshtml");
            });

            services.AddSingleton<AnonymousClientHub>();

            //services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
            //  .AddCookie(options =>
            //  {

            //      options.Cookie.Name = "TEst";
            //      options.Cookie.HttpOnly = true;
            //      options.Cookie.SecurePolicy =  CookieSecurePolicy.Always;
            //      options.Cookie.SameSite = SameSiteMode.Lax;
            //      options.AccessDeniedPath = "/Identity/Account/AccessDenied";
            //      options.SlidingExpiration = true;
            //      options.ExpireTimeSpan = TimeSpan.FromMinutes(5);
            //  });

            services.AddElmah(options =>
            {
                //options.CheckPermissionAction = context => context.User.Identity.IsAuthenticated;
                options.Path = @"elmah";
            });
            services.AddElmah<SqlErrorLog>(options =>
            {
               
                options.ConnectionString = "Data Source=.;Initial Catalog=MyCompanyAppDB;Integrated Security=True"; // DB structure see here: https://bitbucket.org/project-elmah/main/downloads/ELMAH-1.2-db-SQLServer.sql
            });

            services.AddMvc(options => options.Filters.Add(new AuthorizeFilter()))
                .SetCompatibilityVersion(CompatibilityVersion.Version_2_2);
            services.AddSignalR();

            var builder = new ContainerBuilder();
            builder.Populate(services);
            builder.RegisterModule(new ServiceIOC("InstancePerLifetimeScope"));
            builder.RegisterModule(new DatabaseIOC("Data Source=.;Initial Catalog=MyCompanyAppDB;Integrated Security=True", "InstancePerLifetimeScope"));
            builder.Register(c => new ServiceClassLoggingInterceptor(logger)).InstancePerLifetimeScope();
            builder.Register(c => new RepositoryInterfaceLogggerInterceptor(logger)).InstancePerLifetimeScope();

            this.ApplicationContainer = builder.Build();

            // Create the IServiceProvider based on the container.
            return new AutofacServiceProvider(this.ApplicationContainer);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseElmah();
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseCookiePolicy();

            app.UseSignalR(routes =>
            {
                routes.MapHub<AnonymousClientHub>("/anonymousClientHub");
            });

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                     name: "areas",
                     template: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
                        );
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
