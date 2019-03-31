
-- =============================================
-- Author:           <Author,,Name>
-- Create date: <Create Date,,>
-- Description:      <Description,,>
-- =============================================
create PROCEDURE [dbo].[GetRoleAssetDetails]    
AS
BEGIN
       -- SET NOCOUNT ON added to prevent extra result sets from
       -- interfering with SELECT statements.
       SET NOCOUNT ON;
 
  
SELECT [AssetId]
      ,[AssetName]
      ,'Admin' AS RoleName
      ,1 AS RoleId
  FROM [dbo].[RoleAssetMapping]
  WHERE [IsActive] = 1 AND [IsActiveForAdmin] = 1
 
UNION
  
SELECT [AssetId]
      ,[AssetName]
       ,'Access2' AS RoleName
      ,2 AS RoleId
  FROM [dbo].[RoleAssetMapping]
  WHERE [IsActive] = 1 AND [IsActiveForAccess2] = 1
 
UNION
  
SELECT [AssetId]
      ,[AssetName]
         ,'Access1' AS RoleName
      ,3 AS RoleId
  FROM [dbo].[RoleAssetMapping]
  WHERE [IsActive] = 1 AND [IsActiveForAccess1] = 1
 
END