namespace WebApp.Hubs
{
    using System;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.SignalR;

    public class AnonymousClientHub : Hub
    {
        private readonly IHttpContextAccessor _httpContextAccessor;

        public AnonymousClientHub(IHttpContextAccessor httpContextAccessor)
        {
            this._httpContextAccessor = httpContextAccessor;
        }

        public string GetConnectionId()
        {
            return Context.ConnectionId;
        }

        public async Task SendMessage(string user, string message)
        {
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }
    }
}