


-- =============================================
-- Author:           <Author,,Name>
-- Create date: <Create Date,,>
-- Description:      <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[P_GetRoleAssetDetails]    
AS
BEGIN
       -- SET NOCOUNT ON added to prevent extra result sets from
       -- interfering with SELECT statements.
       SET NOCOUNT ON;
 
  
	SELECT [AssetId]
      	  ,[AssetName]
		  ,[AssetType]
		  ,[ScreenName]
      	  ,'Admin' AS RoleName
      	  ,1 AS RoleId
  	  FROM [dbo].[RoleAssetMapping]
  	  WHERE [IsActive] = 1 AND [IsActiveForAdmin] = 1
 
	UNION
  
	SELECT [AssetId]
      	  ,[AssetName]
		  ,[AssetType]
		  ,[ScreenName]
       	   ,'Access2' AS RoleName
      	  ,2 AS RoleId
  	  FROM [dbo].[RoleAssetMapping]
  	  WHERE [IsActive] = 1 AND [IsActiveForAccess2] = 1
 
	UNION
  
	SELECT [AssetId]	 
      	  ,[AssetName]
		  ,[AssetType]
		  ,[ScreenName]
         	 ,'Access1' AS RoleName
      	  ,3 AS RoleId
  	  FROM [dbo].[RoleAssetMapping]
  	  WHERE [IsActive] = 1 AND [IsActiveForAccess1] = 1
 
	UNION
  
	SELECT [AssetId]	 
      	  ,[AssetName]
		  ,[AssetType]
		  ,[ScreenName]
         	 ,'Manager' AS RoleName
      	  ,4 AS RoleId
  	  FROM [dbo].[RoleAssetMapping]
  	  WHERE [IsActive] = 1 AND [IsActiveForManager] = 1
END