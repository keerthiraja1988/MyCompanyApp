namespace WebApp
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using Autofac;
    using Autofac.Extensions.DependencyInjection;
    using AutoMapper;
    using CrossCutting.Logging;
    using ElmahCore.Mvc;
    using ElmahCore.Sql;
    using IOC;
    using JSNLog;
    using Microsoft.AspNetCore.Authentication.Cookies;
    using Microsoft.AspNetCore.Builder;
    using Microsoft.AspNetCore.CookiePolicy;
    using Microsoft.AspNetCore.Hosting;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.HttpsPolicy;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Authorization;
    using Microsoft.AspNetCore.Mvc.Razor;
    using Microsoft.Extensions.Configuration;
    using Microsoft.Extensions.DependencyInjection;
    using Microsoft.Extensions.Logging;
    using NLog;
    using WebApp.Hubs;
    using WebApp.Infrastructure;
    using WebApp.Infrastructure.CustomMiddleware;
    using WebApp.Infrastructure.Security;

    public class Startup
    {
        private NLog.Logger logger = NLog.Web.NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public IContainer ApplicationContainer { get; private set; }

        public Startup(IConfiguration configuration)
        {
            this.Configuration = configuration;
            GoodWorkVerbs.RegisterGoodJobVerbs();
        }

        // This method gets called by the runtime. Use this method to add services to the container.
        public IServiceProvider ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.AddAuthentication(options =>
            {
                options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
            })

                 .AddCookie(
                             CookieAuthenticationDefaults.AuthenticationScheme,
                             options =>
                 {
                     options.AccessDeniedPath = new PathString("/Home/AccessDenied");
                     options.LoginPath = new PathString("/Home/Login");
                     options.ExpireTimeSpan = TimeSpan.FromSeconds(600);
                     options.SlidingExpiration = true;

                     options.Events = new CookieAuthenticationEvents()
                     {
                         OnRedirectToAccessDenied = (ctx) =>
                         {
                             var request = ctx.HttpContext.Request.Path;
                           
                             ctx.Response.Redirect(ctx.RedirectUri);
                             return Task.CompletedTask;
                         }
                     };
                 });

            services.AddAuthorization();

            services.AddAutoMapper();

            services.Configure<RazorViewEngineOptions>(options =>
            {
                options.AreaViewLocationFormats.Clear();
                options.AreaViewLocationFormats.Add("/Areas/{2}/Views/{1}/{0}.cshtml");
                options.AreaViewLocationFormats.Add("/Areas/{2}/Views/Shared/{0}.cshtml");
                options.AreaViewLocationFormats.Add("/Views/Shared/{0}.cshtml");
            });

            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddSingleton<AnonymousClientHub>();
            services.AddAntiforgery(options =>
            {
                // new API
                // ReSharper disable once StringLiteralTypo
                options.Cookie.Name = "AntiforgeryCookie";

                options.Cookie.Path = "/";
                options.Cookie.SecurePolicy = CookieSecurePolicy.Always;
            });

            services.AddHttpsRedirection(options =>
            {
                options.RedirectStatusCode = StatusCodes.Status307TemporaryRedirect;
                options.HttpsPort = 443;
            });

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
            builder.Register(c => new ServiceClassLoggingInterceptor(this.logger)).InstancePerLifetimeScope();
            builder.Register(c => new RepositoryInterfaceLogggerInterceptor(this.logger)).InstancePerLifetimeScope();

            this.ApplicationContainer = builder.Build();

            // Create the IServiceProvider based on the container.
            return new AutofacServiceProvider(this.ApplicationContainer);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            // Add a sample response header 
            app.Use(async (context, nextMiddleware) =>
            {
                context.Response.OnStarting(() =>
                {
                    context.Response.Headers.Add("RequestId", context.RequestId());
                    return Task.FromResult(0);
                });
                await nextMiddleware();
            });

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

            // Configure JSNLog
            var jsnlogConfiguration = new JsnlogConfiguration
            {
                    serverSideMessageFormat = "Url : %url %newline* RequestId : %requestId  %entryId %newline*" +
                                                "Message : %message %newline* %jsonmessage %newline*" +
                                                "Sent: %date, Browser: %userAgent %newline*" ,
                           serverSideLogger = "WebApp.Jslogger"
                       };

            app.UseJSNLog(new LoggingAdapter(loggerFactory), jsnlogConfiguration);

            app.UseStaticFiles();

            app.UseCookiePolicy(new CookiePolicyOptions
            {
                HttpOnly = HttpOnlyPolicy.None,                
                Secure = CookieSecurePolicy.None,
                MinimumSameSitePolicy = SameSiteMode.None
            });

            app.UseAuthentication();

            app.UseSignalR(routes =>
            {
                routes.MapHub<AnonymousClientHub>("/anonymousClientHub");
            });

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                     name: "areas",
                     template: "{area:exists}/{controller=Home}/{action=Index}/{id?}");
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
