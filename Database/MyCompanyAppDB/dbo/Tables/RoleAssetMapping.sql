CREATE TABLE [dbo].[RoleAssetMapping] (
    [AssetId]            INT            IDENTITY (1, 1) NOT NULL,
    [AssetName]          NVARCHAR (MAX) NOT NULL,
    [AssetFileFullPath]  NVARCHAR (MAX) NOT NULL,
    [AssetFileFullName]  NVARCHAR (MAX) NOT NULL,
    [IsActive]           BIT            DEFAULT ((1)) NOT NULL,
    [IsActiveForAdmin]   INT            DEFAULT ((0)) NOT NULL,
    [IsActiveForAccess2] INT            DEFAULT ((0)) NOT NULL,
    [IsActiveForAccess1] INT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dbo.RoleAssetMapping] PRIMARY KEY CLUSTERED ([AssetId] ASC, [IsActive] ASC),
    CHECK ([IsActiveForAccess1]<=(1)),
    CHECK ([IsActiveForAccess2]<=(1)),
    CHECK ([IsActiveForAdmin]<=(1))
);

