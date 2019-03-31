CREATE TABLE [dbo].[Asset] (
    [AssetId]   INT IDENTITY (1, 1) NOT NULL,
    [AssetName] INT NOT NULL,
    CONSTRAINT [PK_dbo.Asset] PRIMARY KEY CLUSTERED ([AssetId] ASC, [AssetName] ASC)
);

