

CREATE PROC [dbo].[P_DeleteUser] 
	@UserId 		[bigint],	
	@ModifiedBy		[bigint] 		
  AS
begin

	DECLARE @TodaysDate DATETIME = GETDATE()

	IF @ModifiedBy = 0

	BEGIN
		SELECT @ModifiedBy = 1
	END

	BEGIN TRANSACTION

	UPDATE [dbo].[User]
		SET  [IsActive] = 0    
			,[ModifiedOn] = @TodaysDate
			,[ModifiedBy] = @ModifiedBy
		WHERE UserId = @UserId
		AND  [IsActive] = 1    

	COMMIT TRANSACTION
	
end