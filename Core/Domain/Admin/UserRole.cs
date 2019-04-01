namespace Domain.Admin
{
    using System;
    using System.Collections.Generic;
    using System.Text;

    public class UserRole
    {
        public long UserId { get; set; }

        public string UserName { get; set; }

        public List<UserRoleModel> Roles { get; set; }
    }

    public class UserAuthenticationModel
    {
        public Guid UserAuthenticationId { get; set; }

        public User User { get; set; } = new User();

        public List<UserRoleModel> Roles { get; set; } = new List<UserRoleModel>();
    }

    public class UserRoleModel
    {
        public string UserName { get; set; }

        public long UserId { get; set; }

        public int RoleId { get; set; }

        public string RoleName { get; set; }
    }

    public class RoleAssetMapping
    {
        public int AssetId { get; set; }
        public string AssetName { get; set; }
        public string AssetType { get; set; }
        public string ScreenName { get; set; }
        public string AssetFileFullPath { get; set; }
        public string AssetFileName { get; set; }
        public bool IsActive { get; set; }
        public string RoleName { get; set; }
        public int RoleId { get; set; }
    }
}
