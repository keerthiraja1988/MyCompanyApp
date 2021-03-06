﻿namespace WebApp.Infrastructure
{
    using System;
    using System.Linq;
    using System.Security.Claims;

    public static class ControllerExtensions
    {
        public static bool GetLoggedInUserDetails(this ClaimsPrincipal principal)
        {
            if (principal == null)
            {
                throw new ArgumentNullException(nameof(principal));
            }

            return true;
        }

        public static bool IsUserAuthenticated(this ClaimsPrincipal principal)
        {
            if (principal == null)
            {
                throw new ArgumentNullException(nameof(principal));
            }

            var userRoles = principal.FindAll(ClaimTypes.Authentication).Select(s => s.Value).ToList();

            if (userRoles.Any(x => x == "Authenticated"))
            {
                return true;
            }

            return false;
        }
    }
}