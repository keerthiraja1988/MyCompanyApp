/*
  
   ELMAH - Error Logging Modules and Handlers for ASP.NET
   Copyright (c) 2004-9 Atif Aziz. All rights reserved.
  
    Author(s):
  
        Atif Aziz, http://www.raboof.com
        Phil Haacked, http://haacked.com
  
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at
  
      http://www.apache.org/licenses/LICENSE-2.0
  
   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
  
*/

-- ELMAH DDL script for Microsoft SQL Server 2000 or later.

-- $Id: SQLServer.sql 677 2009-09-29 18:02:39Z azizatif $

DECLARE @DBCompatibilityLevel INT
DECLARE @DBCompatibilityLevelMajor INT
DECLARE @DBCompatibilityLevelMinor INT

SELECT 
    @DBCompatibilityLevel = cmptlevel 
FROM 
    master.dbo.sysdatabases 
WHERE 
    name = DB_NAME()

IF @DBCompatibilityLevel <> 80
BEGIN

    SELECT @DBCompatibilityLevelMajor = @DBCompatibilityLevel / 10, 
           @DBCompatibilityLevelMinor = @DBCompatibilityLevel % 10
           
    PRINT N'
    ===========================================================================
    WARNING! 
    ---------------------------------------------------------------------------
    
    This script is designed for Microsoft SQL Server 2000 (8.0) but your 
    database is set up for compatibility with version ' 
    + CAST(@DBCompatibilityLevelMajor AS NVARCHAR(80)) 
    + N'.' 
    + CAST(@DBCompatibilityLevelMinor AS NVARCHAR(80)) 
    + N'. Although 
    the script should work with later versions of Microsoft SQL Server, 
    you can ensure compatibility by executing the following statement:
    
    ALTER DATABASE [' 
    + DB_NAME() 
    + N'] 
    SET COMPATIBILITY_LEVEL = 80

    If you are hosting ELMAH in the same database as your application 
    database and do not wish to change the compatibility option then you 
    should create a separate database to host ELMAH where you can set the 
    compatibility level more freely.
    
    If you continue with the current setup, please report any compatibility 
    issues you encounter over at:
    
    http://code.google.com/p/elmah/issues/list

    ===========================================================================
'
END
GO

/* ------------------------------------------------------------------------ 
        TABLES
   ------------------------------------------------------------------------ */

CREATE TABLE [dbo].[ELMAH_Error] (
    [ErrorId]         UNIQUEIDENTIFIER CONSTRAINT [DF_ELMAH_Error_ErrorId] DEFAULT (newid()) NOT NULL,
    [Application]     NVARCHAR (60)    NOT NULL,
    [TraceIdentifier] NVARCHAR (100)   NULL,
    [Host]            NVARCHAR (50)    NOT NULL,
    [Type]            NVARCHAR (100)   NOT NULL,
    [Source]          NVARCHAR (60)    NOT NULL,
    [Message]         NVARCHAR (500)   NOT NULL,
    [User]            NVARCHAR (50)    NOT NULL,
    [StatusCode]      INT              NOT NULL,
    [TimeUtc]         DATETIME         NOT NULL,
    [Sequence]        INT              IDENTITY (1, 1) NOT NULL,
    [AllXml]          NTEXT            NOT NULL,
    CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED ([Sequence] DESC)
);



GO

 
GO


GO


GO

/* ------------------------------------------------------------------------ 
        STORED PROCEDURES                                                      
   ------------------------------------------------------------------------ */

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NTEXT,
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

DECLARE  @temp1Elmah TABLE (
	[AllXml] xml
)
	
INSERT INTO @temp1Elmah ([AllXml]) VALUES (cast(  @AllXml as xml))

DECLARE @TraceIdentifier nvarchar(100)

SELECT 
   @TraceIdentifier = EMP.ED.value('@string','nvarchar(100)') 

FROM   @temp1Elmah
CROSS APPLY [AllXml].nodes('/error/serverVariables/item[@name="TraceIdentifier"]/value') as EMP(ED)


    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
			 [TraceIdentifier],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
			@TraceIdentifier,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

