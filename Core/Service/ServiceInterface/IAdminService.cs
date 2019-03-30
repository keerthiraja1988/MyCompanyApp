namespace ServiceInterface
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Autofac.Extras.DynamicProxy;
    using CrossCutting.Logging;
    using Domain;

    [Intercept(typeof(ServiceClassLoggingInterceptor))]
    public interface IAdminService
    {
        Task<List<User>> GetUsers();

        Task<long> AddUser(User user);

        Task DeleteUser(User user);

        Task EditUser(User user);
    }
}
