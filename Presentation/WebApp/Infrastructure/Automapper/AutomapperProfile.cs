namespace WebApp.Infrastructure.Automapper
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using AutoMapper;
    using Domain;
    using Domain.Admin;
    using WebApp.Models;

    public class AutomapperProfile : Profile
    {
        public AutomapperProfile()
        {
            CreateMap<UserViewModel, User>()
                    .ReverseMap();
            CreateMap<RoleAssetMappingViewModel, RoleAssetMapping>()
                    .ReverseMap();
        }
    }
}
