

ALTER TABLE [dbo].[ELMAH_Error] DROP CONSTRAINT [DF_ELMAH_Error_ErrorId]
GO

/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 28-03-2019 22:34:00 ******/
DROP TABLE [dbo].[ELMAH_Error]
GO

/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 28-03-2019 22:34:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[TraceIdentifier] [nvarchar](100) NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO

/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 28-03-2019 22:35:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ELMAH_LogError]
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




