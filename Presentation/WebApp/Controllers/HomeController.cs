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

namespace WebApp.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IHttpContextAccessor _IHttpContextAccessor;

        public HomeController(ILogger<HomeController> logger, IHttpContextAccessor httpContextAccessor)
        {
            _logger = logger;
            _IHttpContextAccessor = httpContextAccessor;
        }

        [Roles("Test")]
        //[Authorize(Policy = "Admin")]
        public IActionResult Index()
        {
            
            var vvv = this.User.GetLoggedInUserDetails();
            _logger.LogInformation("Index page says hello");
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [AllowAnonymous]
       [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [AllowAnonymous]
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult AccessDenied(string returnUrl)
        {
            var isUserAuthenticated = this.User.IsUserAuthenticated();

            if (!isUserAuthenticated)
            {
                return RedirectToAction("Login", new { returnUrl });
            }

            return View();
        }

        [AllowAnonymous]
        public async Task<IActionResult> Login(string returnUrl = null)
        {
            var identity1 = ((ClaimsIdentity)HttpContext.User.Identity);


            List<Claim> claims = new List<Claim>
                {

                new Claim ( "http://example.org/claims/UserName", "UserName", identity1.Name),

                    new Claim(ClaimTypes.Name ,identity1.Name),
                new Claim("http://example.org/claims/LoggedInTime", "LoggedInTime", DateTime.Now.ToString())


            };


            claims.Add(new Claim(ClaimTypes.Role, "Authenticated"));
            claims.Add(new Claim(ClaimTypes.Role, "Admin"));


            var identity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

            // create principal
            ClaimsPrincipal principal = new ClaimsPrincipal(identity);
            await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, principal);

            //    var claims = new List<Claim>
            //{
            //    new Claim(ClaimTypes.Role, "Authenticated"),
            //     new Claim(ClaimTypes.Role, "Admin"),
            //    new Claim(ClaimTypes.Name,
            //        identity.FindFirst(c => c.Type == ClaimTypes.Name).Value),
            //    new Claim(ClaimTypes.PrimarySid,
            //        identity.FindFirst(c => c.Type == ClaimTypes.PrimarySid).Value)
            //};

            //    var claimsIdentity = new ClaimsIdentity(
            //        claims,
            //        identity.AuthenticationType,
            //        identity.NameClaimType,
            //        identity.RoleClaimType);

            //    await HttpContext.SignInAsync(
            //        CookieAuthenticationDefaults.AuthenticationScheme,
            //        new ClaimsPrincipal(claimsIdentity),
            //        new AuthenticationProperties());

            return Redirect(returnUrl);
        }

        private IActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
    }
}
