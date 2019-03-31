namespace ServiceInterface
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Autofac.Extras.DynamicProxy;
    using CrossCutting.Logging;
    using Domain;
    using Domain.Admin;

    [Intercept(typeof(ServiceClassLoggingInterceptor))]
    public interface IAdminService
    {
        Task<List<User>> GetUsers();

        Task<List<RoleAssetMapping>> GetRoleAssetDetails();

        Task<long> AddUser(User user);

        Task AddRolesToUser(List<RoleAssetMapping> roleAssetMappings,
                                         long userId,
                                         long createdBy);

        Task DeleteUser(User user);

        Task EditUser(User user);

        #region User Authentication
        Task<(UserAuthenticationModel userDetail, List<UserRoleModel> userRoles)> 
                    GetUserDetailsForAuthentication(UserAuthenticationModel userAuthentication);
       
        #endregion
    }
}
