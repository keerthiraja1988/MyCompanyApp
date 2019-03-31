
CREATE PROC [dbo].[P_GetUserDetailsForAuthentication] 
	@Username		[nvarchar](500) 	
  AS
begin

	DECLARE @TodaysDate DATETIME = GETDATE()

	SELECT TOP 1 [UserId]
			  ,[Username]
			  ,[FirstName]
			  ,[LastName]
			  ,[MiddleName]
			  ,[IsActive]
			  ,[CreatedOn]
			  ,[CreatedBy]
			  ,[ModifiedOn]
			  ,[ModifiedBy]
	FROM [dbo].[User]
	WHERE [Username] = @Username AND [IsActive] = 1

	DECLARE @UserId [bigint] = (SELECT TOP 1 [UserId]									 
								FROM [dbo].[User]
								WHERE [Username] = @Username AND [IsActive] = 1)

	SELECT USRROLES.[UserRoleId]
		  ,USRROLES.[UserId]
		  ,USRROLES.[RoleId]
		  ,ROL.[RoleName]
	  FROM [dbo].[UserRoles] USRROLES
	  INNER JOIN [Roles] ROL
	  ON USRROLES.[RoleId] = ROL.[RoleId]
	WHERE [UserId] = @UserId 

BEGIN TRANSACTION

	

COMMIT TRANSACTION

	
end