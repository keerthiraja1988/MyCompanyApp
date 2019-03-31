


CREATE PROC [dbo].[P_AddUser] 
	@UserId 		[bigint] ,
	@UserName 		[nvarchar](500) ,	
	@FirstName		[nvarchar](500) ,
	@LastName 		[nvarchar](500) ,
	@MiddleName 		[nvarchar](500) ,
	@CreatedBy 		[bigint] 
		
  AS
begin

DECLARE @TodaysDate DATETIME = GETDATE()

IF @CreatedBy = 0
BEGIN
	SELECT @CreatedBy = 0
END

BEGIN TRANSACTION

INSERT INTO [dbo].[User]
           ([Username]
           ,[FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[IsActive]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[ModifiedOn]
           ,[ModifiedBy])
	SELECT
			@UserName 	
			
			,@FirstName		
			,@LastName 		
			,@MiddleName	
			,1			
			,@TodaysDate			
			,@CreatedBy 		
			,@TodaysDate
			,@CreatedBy
	
	
	SELECT @UserId = SCOPE_IDENTITY()

COMMIT TRANSACTION

	SELECT @UserId
end