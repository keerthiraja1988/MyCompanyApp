using Domain;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ServiceInterface
{
    public interface IAdminService
    {
        Task<List<User>> GetUsers();

        Task<long> AddUser(User user);
    }
}
