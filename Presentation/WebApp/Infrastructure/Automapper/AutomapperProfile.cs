using AutoMapper;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Models;

namespace WebApp.Infrastructure.Automapper
{
    public class AutomapperProfile : Profile
    {
        public AutomapperProfile()
        {
            CreateMap<UserViewModel, User>()
                    .ReverseMap().ForAllMembers(opt => opt.Ignore()); 
        }
    }
}
