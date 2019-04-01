
CREATE PROC [dbo].[P_GetUserDetailsForAuthentication] 
	@Username		[nvarchar](500) ,
		@UserId		BIGINT
  AS
begin
	
	IF(@UserId = 0)
	BEGIN
		SELECT @UserId = (SELECT TOP 1 [UserId]									 
								FROM [dbo].[User]
								WHERE [Username] = @Username AND [IsActive] = 1)
	END



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
	WHERE [UserId] = @UserId AND [IsActive] = 1



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