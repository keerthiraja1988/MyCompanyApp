namespace ServiceConcrete
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using System.Linq;
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

        public async Task<long> AddUser(User user)
        {
            return await this._adminRepository.AddUser(user);
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
        public async Task<(UserAuthenticationModel userDetail, List<UserRoleModel> userRoles)>
                        GetUserDetailsForAuthentication(UserAuthenticationModel userAuthentication)
        {
            var userDetails = await this._adminRepository.GetUserDetailsForAuthentication(userAuthentication);
            var userRoles = userDetails.Set2.ToList();
            return (userDetails.Set1.FirstOrDefault(), userRoles);
        }
        #endregion
    }
}
