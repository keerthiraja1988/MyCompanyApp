namespace RepositoryInterface
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Autofac.Extras.DynamicProxy;
    using CrossCutting.Logging;
    using Domain;
    using Domain.Admin;
    using Insight.Database;

    [Intercept(typeof(RepositoryInterfaceLogggerInterceptor))]
    public interface IAdminRepository
    {
        #region User Management

        [Sql("SELECT * FROM [dbo].[User] WHERE [IsActive] = 1")]
        Task<List<User>> GetUsers();

        [Sql("[dbo].[P_GetRoleAssetDetails]")]
        Task<List<RoleAssetMapping>> GetRoleAssetDetails();

        [Sql("P_AddUser")]
        Task<long> AddUser(User user);

        [Sql("[dbo].[P_AddRolesToUser]")]
        Task AddRolesToUser(List<RoleAssetMapping> T_AddRolesToUser,
                                         long userId,
                                         long createdBy);

        [Sql("P_DeleteUser")]
        Task DeleteUser(User user);

        [Sql("P_EditUser")]
        Task EditUser(User user);
        #endregion

        #region User Authentication
        [Sql("P_GetUserDetailsForAuthentication")]
        Task<Results<UserAuthenticationModel, UserRoleModel>> GetUserDetailsForAuthentication(UserAuthenticationModel userAuthentication);
        
        #endregion
    }
}
