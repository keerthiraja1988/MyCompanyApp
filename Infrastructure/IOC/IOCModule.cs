using Autofac;
using Insight.Database;
using RepositoryInterface;
using ServiceConcrete;
using ServiceInterface;
using System;
using System.Data.Common;
using System.Data.SqlClient;

namespace IOC
{
    public class ServiceIOC : Module
    {
        private readonly string _lifeTime;

        public ServiceIOC(string lifeTime)
        {
            this._lifeTime = lifeTime;
        }
        protected override void Load(ContainerBuilder builder)
        {
            if (this._lifeTime == "InstancePerLifetimeScope")
            {
                builder.RegisterType<AdminService>().As<IAdminService>().InstancePerLifetimeScope();
            }
            else
            {
                builder.RegisterType<AdminService>().As<IAdminService>();
            }

            base.Load(builder);
        }
    }

    public class DatabaseIOC : Module
    {
        private readonly DbConnection _sqlConnection;
        private readonly string _lifeTime;

        public DatabaseIOC(string sqlConnectionString, string lifeTime)
        {
            this._sqlConnection = new SqlConnection(sqlConnectionString);
            this._lifeTime = lifeTime;
        }

        protected override void Load(ContainerBuilder builder)
        {
            SqlInsightDbProvider.RegisterProvider();

            if (this._lifeTime == "InstancePerLifetimeScope")
            {
                builder
                    .Register(b => this._sqlConnection.AsParallel<IAdminRepository>())
                    .InstancePerLifetimeScope();
            }
            else
            {
                builder.Register(b => this._sqlConnection.AsParallel<IAdminRepository>());
            }

            base.Load(builder);
        }
    }
}
