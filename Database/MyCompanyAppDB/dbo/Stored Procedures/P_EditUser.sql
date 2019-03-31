



CREATE PROC [dbo].[P_EditUser] 
	@UserId 		[bigint] ,
	@UserName 		[nvarchar](500) ,	
	@FirstName		[nvarchar](500) ,
	@LastName 		[nvarchar](500) ,
	@MiddleName 		[nvarchar](500) ,
	@ModifiedBy 		[bigint] 
		
  AS
begin

DECLARE @TodaysDate DATETIME = GETDATE()

IF @ModifiedBy = 0
BEGIN
	SELECT @ModifiedBy = 5
END

BEGIN TRANSACTION

UPDATE [dbo].[User]
   SET [Username] = @UserName
      ,[FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[MiddleName] = @MiddleName    
      ,[ModifiedOn] = @TodaysDate
      ,[ModifiedBy] = @ModifiedBy
 WHERE UserId  = @UserId AND [IsActive] = 1	
	

COMMIT TRANSACTION

	
end