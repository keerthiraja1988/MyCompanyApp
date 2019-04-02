namespace ServiceConcrete
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Domain;
    using Domain.Admin;
    using RepositoryInterface;
    using ServiceInterface;

    public class AdminService : IAdminService
    {
        private readonly IAdminRepository _adminRepository;

        public AdminService(IAdminRepository adminRepository)
        {
            this._adminRepository = adminRepository;
        }

        public async Task<List<User>> GetUsers()
        {
            return await this._adminRepository.GetUsers();
        }

        public async Task<List<RoleAssetMapping>> GetRoleAssetDetails()
        {
            return await this._adminRepository.GetRoleAssetDetails();
        }

        public async Task<long> AddUser(User user)
        {
            return await this._adminRepository.AddUser(user);
        }

        public async Task AddRolesToUser(List<RoleAssetMapping> roleAssetMappings,
                                         long userId,
                                         long createdBy)
        {
            await this._adminRepository.AddRolesToUser(roleAssetMappings, userId, createdBy);
        }

        public async Task DeleteUser(User user)
        {
            await this._adminRepository.DeleteUser(user);
        }

        public async Task EditUser(User user)
        {
            await this._adminRepository.EditUser(user);
        }

        #region User Authentication

        public async Task<(User user, List<UserRoleModel> userRoles)>
                        GetUserDetailsForAuthentication(User user)
        {
            var userDetails = await this._adminRepository.GetUserDetailsForAuthentication(user);
            var userRoles = userDetails.Set2.ToList();
            return (userDetails.Set1.FirstOrDefault(), userRoles);
        }

        #endregion User Authentication
    }
}