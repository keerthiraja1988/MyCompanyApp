namespace WebApp.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics;
    using System.Linq;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using ElmahCore;
    using Microsoft.AspNetCore.Authentication;
    using Microsoft.AspNetCore.Authentication.Cookies;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.Extensions.Logging;
    using WebApp.Infrastructure;
    using WebApp.Infrastructure.Security;
    using WebApp.Models;

    [Authorize]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public HomeController(ILogger<HomeController> logger, IHttpContextAccessor httpContextAccessor)
        {
            this._logger = logger;
            this._httpContextAccessor = httpContextAccessor;
        }

        [Roles("Test")]

        //[Authorize(Policy = "Admin")]
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
            var identity1 = (ClaimsIdentity)HttpContext.User.Identity;

            List<Claim> claims = new List<Claim>
             {
                new Claim ("http://example.org/claims/UserName", "UserName", identity1.Name),
                new Claim(ClaimTypes.Name ,identity1.Name),
                new Claim("http://example.org/claims/LoggedInTime", "LoggedInTime", DateTime.Now.ToString())
             };

            claims.Add(new Claim(ClaimTypes.Role, "Authenticated"));
            claims.Add(new Claim(ClaimTypes.Role, "Admin"));

            var identity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

            // create principal
            ClaimsPrincipal principal = new ClaimsPrincipal(identity);
            await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, principal);

            return this.Redirect(returnUrl);
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
