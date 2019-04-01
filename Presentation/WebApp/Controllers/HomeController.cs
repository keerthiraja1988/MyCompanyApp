namespace WebApp.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics;
    using System.Linq;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using Domain;
    using Domain.Admin;
    using ElmahCore;
    using Microsoft.AspNetCore.Authentication;
    using Microsoft.AspNetCore.Authentication.Cookies;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.SignalR;
    using Microsoft.Extensions.Logging;
    using Newtonsoft.Json.Linq;
    using ServiceInterface;
    using WebApp.Hubs;
    using WebApp.Infrastructure;
    using WebApp.Infrastructure.Security;
    using WebApp.Models;

    [Authorize]
    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public class HomeController : Controller
    {
        private readonly IAdminService _adminService;
        private readonly ILogger<HomeController> _logger;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IHubContext<AnonymousClientHub> _anonymousHubContext;

        public HomeController(IAdminService adminService,
                              ILogger<HomeController> logger,
                              IHttpContextAccessor httpContextAccessor,
                              IHubContext<AnonymousClientHub> anonymousHubContext)
        {
            this._adminService = adminService;
            this._logger = logger;
            this._httpContextAccessor = httpContextAccessor;
            this._anonymousHubContext = anonymousHubContext;
        }

        [Roles("Admin")]
        public IActionResult Index()
        {
            var vvv = this.User.GetLoggedInUserDetails();
            this._logger.LogInformation("Index page says hello");
            return this.View();
        }

        public IActionResult Privacy()
        {
            return this.View();
        }

        [AllowAnonymous]
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return this.View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [AllowAnonymous]
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult AccessDeniedPage()
        {
            return this.View("AccessDenied");
        }

        [AllowAnonymous]
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult AccessDenied(string returnUrl)
        {
            var isUserAuthenticated = this.User.IsUserAuthenticated();

            if (!isUserAuthenticated)
            {
                return this.RedirectToAction("Login", new { returnUrl });
            }

            return this.View();
        }

        [AllowAnonymous]
        public async Task<IActionResult> Login(string returnUrl = null)
        {
            var identity = (ClaimsIdentity)HttpContext.User.Identity;

            var userName = identity.Name.Substring(identity.Name.LastIndexOf(@"\") + 1);

            User user = new User();
            user.UserName = userName;

            (User user, List<UserRoleModel> userRoles) userDetailAndRoles 
                        = await this._adminService.GetUserDetailsForAuthentication(user);
           
            List<UserRoleModel> userRoles = userDetailAndRoles.userRoles;

            List<Claim> claims = new List<Claim>
             {
                new Claim ("http://example.org/claims/UserName", "UserName", user.UserName),
                new Claim(ClaimTypes.Name , userName),
                new Claim(ClaimTypes.Authentication , "Authenticated"),
                new Claim("http://example.org/claims/LoggedInTime", "LoggedInTime", DateTime.Now.ToString())
             };

            foreach (var item in userRoles)
            {
                claims.Add(new Claim(ClaimTypes.Role, item.RoleName));
            }

            var identityClaims = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

            // create principal
            ClaimsPrincipal principal = new ClaimsPrincipal(identityClaims);
            await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, principal);

            CookieOptions option = new CookieOptions();
            option.Expires = DateTime.Now.AddSeconds(10);
            option.HttpOnly = false;
            option.Secure = true;
            option.SameSite = SameSiteMode.Lax;
            Response.Cookies.Append("AuthenticatedNow", "Yes", option);

            if (Url.IsLocalUrl(returnUrl))
            {
                return this.Redirect(returnUrl);
            }
            else
            {
                throw new UnauthorizedAccessException();
            }
        }

        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> Logout()
        {
            var cookies = Request.Cookies;

            if (cookies != null || cookies.Count > 0)
            {
                foreach (var item in cookies)
                {
                    Response.Cookies.Delete(item.Key);
                }
            }

            dynamic ajaxReturn = new JObject();
            ajaxReturn.Status = "Success";
            ajaxReturn.Message = "You have been successfully logged out. " +
                                    "Current window will be closed now";

            return this.Json(ajaxReturn);
        }

        private IActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return this.Redirect(returnUrl);
            }
            else
            {
                return this.RedirectToAction("Index", "Home");
            }
        }
    }
}
