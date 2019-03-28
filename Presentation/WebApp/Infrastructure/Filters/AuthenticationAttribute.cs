using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApp.Infrastructure.Filters
{
  

    //public class AuthenticationAttribute : ActionFilterAttribute, IAuthenticationFilter
    //{
    //    public void OnAuthentication(AuthenticationContext filterContext)
    //    {

    //        if (!filterContext.ActionDescriptor.IsDefined
    //        (typeof(AllowAnonymousAttribute), true) &&
    //        !filterContext.ActionDescriptor.ControllerDescriptor.IsDefined
    //        (typeof(AllowAnonymousAttribute), true))
    //        {
    //            // Check for authorization



    //            HttpCookie getCookieFromRequest = filterContext.HttpContext.Request.Cookies.Get("AppAuthentication");


    //            if (getCookieFromRequest == null)
    //            {
    //                var userNameWithDomain = filterContext.HttpContext.Request.LogonUserIdentity.Name;

    //                var userName = userNameWithDomain.Substring(
    //                filterContext.HttpContext.Request.LogonUserIdentity.Name.LastIndexOf(@"\") + 1);

    //                var conn = new SqlConnection("Data Source=.;Initial Catalog=Authdemo;Integrated Security=True");

    //                List<UserRoleModel> userRoles = conn.QuerySql<UserRoleModel>(
    //                "SELECT Username,  US.UserId, UsrRols.RoleId, Rols.RoleName FROM USERS US INNER JOIN UserRoles UsrRols on US.UserId = UsrRols.UserId    INNER JOIN Roles Rols on UsrRols.RoleId = Rols.RoleId WHERE Username = @UserName"
    //                , new { UserName = userName }).ToList();

    //                UserAuthenticationModel userAuthenticationModel = new UserAuthenticationModel();

    //                if (userRoles != null && userRoles.Count > 0)
    //                {
    //                    var cookieExpirationTime = DateTime.Now.AddHours(1);

    //                    userAuthenticationModel.UserName = userName;
    //                    userAuthenticationModel.UserId = userRoles.FirstOrDefault().UserId;
    //                    userAuthenticationModel.UserAuthenticationId = Guid.NewGuid();
    //                    userAuthenticationModel.CreatedOn = DateTime.Now;
    //                    userAuthenticationModel.ExpiresOn = cookieExpirationTime;
    //                    userAuthenticationModel.Roles = userRoles;

    //                    string userData = JsonConvert.SerializeObject(userAuthenticationModel);

    //                    FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket
    //                    (
    //                    1, userAuthenticationModel.UserName, DateTime.Now, cookieExpirationTime, false, userData
    //                    );

    //                    string encryptedUserData = FormsAuthentication.Encrypt(authTicket);


    //                    var checkSecureConn = filterContext.HttpContext.Request.IsSecureConnection;

    //                    HttpCookie setCookie = new HttpCookie("AppAuthentication");
    //                    setCookie.Value = encryptedUserData;
    //                    setCookie.Expires = cookieExpirationTime;


    //                    if (checkSecureConn)
    //                    {
    //                        setCookie.Shareable = false;
    //                        setCookie.SameSite = SameSiteMode.Strict;
    //                        setCookie.Secure = true;
    //                    }

    //                    filterContext.HttpContext.Response.Cookies.Add(setCookie);

    //                    CustomPrincipal principal = new CustomPrincipal(userAuthenticationModel.UserName);

    //                    principal.UserId = userAuthenticationModel.UserId;
    //                    principal.UserName = userAuthenticationModel.UserName;
    //                    principal.Roles = userAuthenticationModel.Roles.Select(x => x.RoleName).ToArray<string>();
    //                    principal.SessionExpiration = userAuthenticationModel.ExpiresOn;

    //                    HttpContext.Current.User = principal;

    //                }
    //                else
    //                {

    //                }
    //            }
    //        }
    //    }

    //    public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
    //    {

    //        //  throw new NotImplementedException();
    //    }
    //}


}
