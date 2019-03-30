namespace WebApp.Infrastructure.Automapper
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using AutoMapper;
    using Domain;
    using WebApp.Models;

    public class AutomapperProfile : Profile
    {
        public AutomapperProfile()
        {
            CreateMap<UserViewModel, User>()
                    .ReverseMap().ForAllMembers(opt => opt.Ignore()); 
        }
    }
}
