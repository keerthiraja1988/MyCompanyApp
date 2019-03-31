CREATE TABLE [dbo].[UserRoles] (
    [UserRoleId] INT IDENTITY (1, 1) NOT NULL,
    [UserId]     INT NOT NULL,
    [RoleId]     INT NOT NULL,
    CONSTRAINT [PK_dbo.UserRoles] PRIMARY KEY CLUSTERED ([UserRoleId] ASC, [UserId] ASC, [RoleId] ASC)
);

