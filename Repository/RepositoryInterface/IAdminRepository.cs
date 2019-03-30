namespace RepositoryInterface
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Autofac.Extras.DynamicProxy;
    using CrossCutting.Logging;
    using Domain;
    using Insight.Database;

    [Intercept(typeof(RepositoryInterfaceLogggerInterceptor))]
    public interface IAdminRepository
    {
        [Sql("SELECT * FROM [dbo].[User]")]
        Task<List<User>> GetUsers();

        [Sql("P_AddUser")]
        Task<long> AddUser(User user);        
    }
}
