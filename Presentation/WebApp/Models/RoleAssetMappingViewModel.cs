namespace WebApp.Models
{
    using System;
    using System.Collections.Generic;

    public class RoleAssetMappingViewModel
    {
        public RoleAssetMappingViewModel()
        {
            this.RoleAssetMappings = new List<RoleAssetMappingViewModel>();
        }

        public int AssetId { get; set; }
        public string AssetName { get; set; }
        public string AssetType { get; set; }
        public string ScreenName { get; set; }
        public string AssetFileFullPath { get; set; }
        public string AssetFileName { get; set; }
        public bool IsActive { get; set; }
        public string RoleName { get; set; }
        public int RoleId { get; set; }
        public List<RoleAssetMappingViewModel> RoleAssetMappings { get; set; }
    }
}