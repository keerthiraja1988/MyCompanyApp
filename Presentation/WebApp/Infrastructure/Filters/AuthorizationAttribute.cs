namespace WebApp.Infrastructure.Filters
{
    using System;
    using System.Linq;
    using System.Security.Claims;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc.Filters;

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