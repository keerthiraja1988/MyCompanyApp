﻿namespace WebApp.Areas.Admin.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using AutoMapper;
    using Domain;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.SignalR;
    using Newtonsoft.Json.Linq;
    using ServiceInterface;
    using WebApp.Hubs;
    using WebApp.Infrastructure;
    using WebApp.Infrastructure.Filters;
    using WebApp.Models;

    [AppAuthorization]
    [Area("Admin")]
    public class AdminController : Controller
    {
        private readonly IAdminService _adminService;

        private readonly IMapper _mapper;
        private readonly IHubContext<AnonymousClientHub> _anonymousHubContext;

        public AdminController(
                IAdminService adminService, 
                IMapper mapper,
                IHubContext<AnonymousClientHub> anonymousHubContext)
        {
            this._adminService = adminService;
            this._mapper = mapper;
            this._anonymousHubContext = anonymousHubContext;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var userId = this.User.FindFirstValue(ClaimTypes.Name);

            List<User> users = await this._adminService.GetUsers();

            List<UserViewModel> usersViewModel = new List<UserViewModel>();

            usersViewModel = this._mapper.Map<List<UserViewModel>>(users);

            return await Task.Run(() => this.View());
        }

        [HttpGet]
        public async Task<IActionResult> GetAddUserPartialView()
        {
            UserViewModel userViewModel = new UserViewModel();

            return await Task.Run(() => this.PartialView("_AddUser1", userViewModel));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AddUser([FromForm]UserViewModel userViewModel)
        {
            await this._anonymousHubContext.Clients.
                 Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "0");

            if (!ModelState.IsValid)
            {
                await this._anonymousHubContext.Clients.
                   Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "100");

                return await Task.Run(() => this.PartialView("_AddUser1", userViewModel));
            }

            await this._anonymousHubContext.Clients.
             Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "20");

            User user = new User();
            user = this._mapper.Map<User>(userViewModel);

            await this._anonymousHubContext.Clients.
               Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "40");

            var userId = await this._adminService.AddUser(user);

            await this._anonymousHubContext.Clients.
              Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "80");

            dynamic ajaxReturn = new JObject();
            ajaxReturn.Status = "Success";
            ajaxReturn.UserId = userId;
            ajaxReturn.GetGoodJobVerb = GoodWorkVerbs.GetGoodJobVerb();
            ajaxReturn.Message = userViewModel.UserName + " - user sucessfully created." +
                " Now you can setup application roles";

            await this._anonymousHubContext.Clients.
                    Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "100");

            return this.Json(ajaxReturn);
        }

        [HttpGet]
        public IActionResult GetAddUserRolesPartialView(long userId)
        {
            UserViewModel userViewModel = new UserViewModel();

            return this.PartialView("_AddUserRoles", userViewModel);
        }
    }
}