using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Controllers;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Routing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using WebApp.Infrastructure.Security;

namespace WebApp.Infrastructure.Filters
{
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
                //     var controllerInfo = filterContext.ActionDescriptor as ControllerActionDescriptor;
                //     if (filterContext != null)
                //     {
                //         string controllerName = controllerInfo.ControllerName;

                //         if (controllerName != "Home")
                //         {
                //             if (filterContext.HttpContext.Request.Headers["X-Requested-With"] == "XMLHttpRequest")
                //             {
                //                 filterContext.Result = new JsonResult("")
                //                 {
                //                     Value = new
                //                     {
                //                         Status = "Error"
                //                     },
                //                 };
                //             }
                //             else
                //             {
                //                 filterContext.Result = new RedirectToRouteResult(
                //                  new RouteValueDictionary {
                //{
                // "Controller",
                // "Home"
                //}, {
                // "Action",
                // "SessionExpired"
                //}
                //                  });
                //             }
                //         }
                //     }
            }
        }
    //public class AuthorizationAttribute : AuthorizeAttribute
    //{
    //    protected override bool AuthorizeCore(HttpContextBase httpContext)
    //    {
    //        var CurrentUser = HttpContext.Current.User as CustomPrincipal;

    //        if ((CurrentUser == null) || CurrentUser != null && CurrentUser.SessionExpiration < DateTime.Now)
    //        {
    //            HttpContext.Current.User = null;
    //            return false;
    //        }

    //        var roles = Roles.Split(',');

    //        var result = (from q in CurrentUser.Roles
    //                      join a in roles on q equals a
    //                      select new { q }).ToList();



    //        if (result.Count == 0)
    //        {
    //            return false;
    //        }

    //        return true;
    //    }

    //    protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
    //    {
    //        var CurrentUser = HttpContext.Current.User as CustomPrincipal;

    //        RedirectToRouteResult routeData = null;

    //        if (CurrentUser == null)
    //        {
    //            routeData = new RedirectToRouteResult
    //            (new System.Web.Routing.RouteValueDictionary
    //            (new
    //            {

    //                controller = "Home",
    //                action = "AccessDenied"
    //            }
    //            ));
    //        }
    //        else
    //        {

    //        }


    //        filterContext.Result = routeData;
    //    }

    //}
}
