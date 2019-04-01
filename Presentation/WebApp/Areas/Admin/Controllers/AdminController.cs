namespace WebApp.Areas.Admin.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using AutoMapper;
    using Domain;
    using Domain.Admin;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.SignalR;
    using Newtonsoft.Json.Linq;
    using ServiceInterface;
    using WebApp.Hubs;
    using WebApp.Infrastructure;
    using WebApp.Infrastructure.Filters;
    using WebApp.Infrastructure.Security;
    using WebApp.Models;

    [Authorize( Roles = "Admin" )]
    [AutoValidateAntiforgeryToken]
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
            return await Task.Run(() => this.View());
        }

        [HttpGet]
        public async Task<IActionResult> GetUsers()
        {
            var userId = this.User.FindFirstValue(ClaimTypes.Name);

            List<User> users = await this._adminService.GetUsers();

            List<UserViewModel> usersViewModel = new List<UserViewModel>();

            usersViewModel = this._mapper.Map<List<UserViewModel>>(users);

            return await Task.Run(() => this.PartialView("_GetUsers", usersViewModel));
        }

        [HttpGet]
        public async Task<IActionResult> GetUserDetailsSummary(long userId)
        {
            UserViewModel userViewModel = new UserViewModel();
            List<UserRoleViewModel> userRoleViewModels = new List<UserRoleViewModel>();
            List<RoleAssetMappingViewModel> roleAssetMappingViewModels = new List<RoleAssetMappingViewModel>();
            
            User user = new User();
            user.UserId = userId;

            (User user, List<UserRoleModel> userRoles) userDetailAndRoles
                        = await this._adminService.GetUserDetailsForAuthentication(user);

            List<UserRoleModel> userRoles = userDetailAndRoles.userRoles;
            user = userDetailAndRoles.user;
            userViewModel = _mapper.Map<UserViewModel>(user);
            userRoleViewModels = _mapper.Map<List<UserRoleViewModel>>(userRoles);

            List<RoleAssetMapping> roleAssetMappings = await this._adminService.GetRoleAssetDetails();

            List<string> roles = roleAssetMappings
                                    .Select(x => x.RoleName)
                                    .Distinct()
                                    .ToList();

            foreach (var item in roles)
            {
                if (userRoleViewModels.Any(a => a.RoleName == item))
                {
                    List<RoleAssetMapping> viewsForRole = roleAssetMappings
                                     .Where(w => w.RoleName == item && w.AssetType == "View")
                                     .ToList();

                    RoleAssetMappingViewModel roleAssetMappingViewModel = new RoleAssetMappingViewModel();
                    roleAssetMappingViewModel.RoleName = item;
                    roleAssetMappingViewModel.RoleAssetMappings =
                                            this._mapper.Map<List<RoleAssetMappingViewModel>>(viewsForRole);

                    roleAssetMappingViewModels.Add(roleAssetMappingViewModel);
                }
            }

            return await Task.Run(() => 
                        this.PartialView("_UserDetaillSummary",
                                         (userViewModel, 
                                          userRoleViewModels,
                                          roleAssetMappingViewModels)));
        }

        [HttpGet]
        public async Task<IActionResult> GetAddUserPartialView()
        {
            UserViewModel userViewModel = new UserViewModel();

            return await Task.Run(() => this.PartialView("_AddUser", userViewModel));
        }

        [HttpGet]
        public async Task<IActionResult> GetAddRolesToUserPartialView(long userId)
        {
            List<RoleAssetMappingViewModel> roleAssetMappingViewModels = new List<RoleAssetMappingViewModel>();

            List<RoleAssetMapping> roleAssetMappings = await this._adminService.GetRoleAssetDetails();

            List<string> roles = roleAssetMappings.Select(x => x.RoleName).Distinct().ToList();

            foreach (var item in roles)
            {
                List<RoleAssetMapping> viewsForRole = roleAssetMappings
                                                     .Where(w => w.RoleName == item && w.AssetType == "View")
                                                     .ToList();

                RoleAssetMappingViewModel roleAssetMappingViewModel = new RoleAssetMappingViewModel();
                roleAssetMappingViewModel.RoleName = item;
                roleAssetMappingViewModel.RoleAssetMappings =
                                        this._mapper.Map<List<RoleAssetMappingViewModel>>(viewsForRole);

                roleAssetMappingViewModels.Add(roleAssetMappingViewModel);
            }

            return await Task.Run(() => 
                            this.PartialView("_AddRolesToUser", 
                                            (roleAssetMappingViewModels,
                                             userId)));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AddRolesToUser(
                     [FromForm] List<RoleAssetMappingViewModel> roleAssetMappingViewModels,
                     long userId)
        {
            if (!roleAssetMappingViewModels.Any(a => a.IsActive == true))
            {
                dynamic ajaxValidatationErrorReturn = new JObject();
                ajaxValidatationErrorReturn.Status = "ValidatationError";

                ajaxValidatationErrorReturn.Message = "Please select at least one role.";

                return this.Json(ajaxValidatationErrorReturn);
            }

            roleAssetMappingViewModels = roleAssetMappingViewModels.Where(w => w.IsActive == true).ToList();
            List<RoleAssetMapping> roleAssetMappings = new List<RoleAssetMapping>();
            roleAssetMappings = this._mapper.Map<List<RoleAssetMapping>>(roleAssetMappingViewModels);

            await this._adminService.AddRolesToUser(roleAssetMappings,
                                                    userId,
                                                    123);

            dynamic ajaxReturn = new JObject();
            ajaxReturn.Status = "Success";
            ajaxReturn.UserId = userId;
            ajaxReturn.GetGoodJobVerb = GoodWorkVerbs.GetGoodJobVerb();
            ajaxReturn.Message = "Roles has been added to users. " +
                "Please click next to view user's summary";        

            return this.Json(ajaxReturn);
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
        public async Task<IActionResult> GetEditUserPartialView(long userId)
        {
            List<User> users = await this._adminService.GetUsers();

            List<UserViewModel> usersViewModel = new List<UserViewModel>();

            usersViewModel = this._mapper.Map<List<UserViewModel>>(users);

            var userViewModel = usersViewModel.Where(x => x.UserId == userId).FirstOrDefault();

            return await Task.Run(() => this.PartialView("_EditUser", userViewModel));
        }

        [HttpPost]
        public async Task<IActionResult> EditUser([FromForm]UserViewModel userViewModel)
        {
            await this._anonymousHubContext.Clients.
                        Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "0");

            User user = new User();
            user = this._mapper.Map<User>(userViewModel);

            await this._anonymousHubContext.Clients.
                     Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "40");

            await this._adminService.EditUser(user);

            await this._anonymousHubContext.Clients.
                     Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "80");

            dynamic ajaxReturn = new JObject();
            ajaxReturn.Status = "Success";
            ajaxReturn.UserId = userViewModel.UserId;
            ajaxReturn.GetGoodJobVerb = GoodWorkVerbs.GetGoodJobVerb();
            ajaxReturn.Message = "UserName" + " - user details updated successfully";

            await this._anonymousHubContext.Clients.
                    Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "100");

            return this.Json(ajaxReturn);
        }

        [HttpGet]
        public async Task<IActionResult> GetDeleteUserPartialView(long userId)
        {
            List<User> users = await this._adminService.GetUsers();

            List<UserViewModel> usersViewModel = new List<UserViewModel>();

            usersViewModel = this._mapper.Map<List<UserViewModel>>(users);

            var userViewModel = usersViewModel.Where(x => x.UserId == userId).FirstOrDefault();

            return await Task.Run(() => this.PartialView("_DeleteUser", userViewModel));
        }

        [HttpPost]
        public async Task<IActionResult> DeleteUser([FromForm]UserViewModel userViewModel)
        {
            await this._anonymousHubContext.Clients.
                        Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "0");

            User user = new User();
            user.UserId = userViewModel.UserId;
            user.ModifiedBy = 5;

            await this._anonymousHubContext.Clients.
                     Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "40");

            await this._adminService.DeleteUser(user);

            dynamic ajaxReturn = new JObject();
            ajaxReturn.Status = "Success";
            ajaxReturn.UserId = userViewModel.UserId;
            ajaxReturn.GetGoodJobVerb = GoodWorkVerbs.GetGoodJobVerb();
            ajaxReturn.Message = "UserName" + " - user sucessfully delete from application.";

            await this._anonymousHubContext.Clients.
                    Client(userViewModel.ConnectionId).SendAsync("progressBarUpdate", "100");

            return this.Json(ajaxReturn);
        }
    }
}