



create PROC [dbo].[P_AddRolesToUser] 
	@UserId 		[bigint] ,
	@CreatedBy		[bigint],
    @T_AddRolesToUser  [dbo].[T_AddRolesToUser] READONLY		
  AS
begin

	DECLARE @TodaysDate DATETIME = GETDATE()

	IF @CreatedBy = 0
	BEGIN
		SELECT @CreatedBy = 1
	END

	BEGIN TRANSACTION
		INSERT INTO [dbo].[UserRoles]
			   ([UserId]
			   ,[RoleId]
			   ,[RoleName]
			   ,[IsActive]
			   ,[CreatedOn]
			   ,[CreatedBy]
			   ,[ModifiedOn]
			   ,[ModifiedBy])
		SELECT @UserId
			  ,ROLS.[RoleId]
			  ,AddRolesToUser.[RoleName]
			  ,[IsActive]
			  ,@TodaysDate
			  ,@CreatedBy
			  ,@TodaysDate
			  ,@CreatedBy
		FROM @T_AddRolesToUser AS AddRolesToUser
			INNER JOIN [dbo].[Roles] AS ROLS
			ON ROLS.[RoleName] = AddRolesToUser.[RoleName]

	COMMIT TRANSACTION


end