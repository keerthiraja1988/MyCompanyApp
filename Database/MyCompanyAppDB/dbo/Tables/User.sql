CREATE TABLE [dbo].[User] (
    [UserId]     BIGINT         IDENTITY (1, 1) NOT NULL,
    [Username]   NVARCHAR (500) NULL,
    [FirstName]  NVARCHAR (500) NULL,
    [LastName]   NVARCHAR (500) NULL,
    [MiddleName] NVARCHAR (500) NULL,
    [IsActive]   BIT            NULL,
    [CreatedOn]  DATETIME       NULL,
    [CreatedBy]  BIGINT         NULL,
    [ModifiedOn] DATETIME       NULL,
    [ModifiedBy] BIGINT         NULL,
    CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

