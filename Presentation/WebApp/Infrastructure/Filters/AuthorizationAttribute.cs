namespace WebApp.Infrastructure.Filters
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using System.Security.Claims;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Controllers;
    using Microsoft.AspNetCore.Mvc.Filters;
    using Microsoft.AspNetCore.Routing;
    using WebApp.Infrastructure.Security;

    [AttributeUsage(AttributeTargets.Class)]
    public sealed class AppAuthorization : Attribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationFilterContext filterContext)
        {
            var userName = filterContext.HttpContext.User.FindFirstValue(ClaimTypes.Name);

            userName = userName.Substring(
                  userName.LastIndexOf(@"\") + 1);

            var getCookieFromRequest = filterContext.HttpContext.Request.Cookies.Where(w => w.Key == "AppAuthentication");

            if (getCookieFromRequest == null)
            {
                var option = new CookieOptions();
                option.Expires = DateTime.Now.AddMinutes(10);
                filterContext.HttpContext.Response.Cookies.Append("AppAuthentication", "true", option);
            }
        }
    }
}