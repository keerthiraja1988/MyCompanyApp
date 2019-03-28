using Autofac.Extras.DynamicProxy;
using CrossCutting.Logging;
using Domain;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ServiceInterface
{
    [Intercept(typeof(ServiceClassLoggingInterceptor))]
    public interface IAdminService
    {
        Task<List<User>> GetUsers();

        Task<long> AddUser(User user);
    }
}
