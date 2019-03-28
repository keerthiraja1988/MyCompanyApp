using Domain;
using Insight.Database;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace RepositoryInterface
{
    public interface IAdminRepository
    {
        [Sql("SELECT *  FROM [dbo].[User]")]
        Task<List<User>> GetUsers();

        [Sql("P_AddUser")]
        Task<long> AddUser(User user);
        
    }
}
