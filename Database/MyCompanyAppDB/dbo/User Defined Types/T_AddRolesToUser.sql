﻿CREATE TYPE [dbo].[T_AddRolesToUser] AS TABLE (
    [UserId]   INT            NULL,
    [RoleId]   INT            NULL,
    [RoleName] NVARCHAR (MAX) NULL,
    [IsActive] BIT            NULL);

