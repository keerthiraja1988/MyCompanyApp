using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApp.Infrastructure.Security
{
    public class RolesAttribute : AuthorizeAttribute
    {
        public RolesAttribute(params string[] roles)
        {
            Roles = String.Join(",", roles);
        }
    }
}
