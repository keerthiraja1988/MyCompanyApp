using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Threading.Tasks;

namespace WebApp.Infrastructure.Security
{
    public class CustomPrincipal : IPrincipal
    {
        #region Identity Properties

        public Int64 UserId { get; set; }
        public string UserName { get; set; }

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }

        public DateTime SessionExpiration { get; set; }

        public string[] Roles { get; set; }
        #endregion

        public IIdentity Identity
        {
            get; private set;
        }

        //public bool IsInRole(string role)
        //{
        //    if (Roles.Any(r => role.Contains(r)))
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }
        //}

        public bool IsInRole(string assetName)
        {
            //var conn = new SqlConnection("Data Source=.;Initial Catalog=Authdemo;Integrated Security=True");

            //List<RoleAssetMapping> userRoles = conn.QuerySql<RoleAssetMapping>(" [dbo].[GetRoleAssetDetails]").ToList();

            //var result = (from q in userRoles.Where(w => w.AssetName == assetName).Select(s => s.RoleName)
            //              join a in Roles on q equals a
            //              select new { q }).ToList();

            //if (result.Count > 0)
            //{
            //    return true;
            //}

            //return false;
            return true;
        }

        public CustomPrincipal(string username)
        {
            Identity = new GenericIdentity(username);
        }

    }
}
