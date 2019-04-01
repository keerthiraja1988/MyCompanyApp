USE [MyCompanyAppDB]
GO
SET IDENTITY_INSERT [dbo].[DBChangeLog] OFF
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeDetails]) VALUES (1, N'<Employees><EmployeeType Type="Developer"><Employee ID="1" FirstName="John" LastName="Smith" /><Employee ID="2" FirstName="Roy" LastName="Will" /><Employee ID="3" FirstName="Jeff" LastName="S" /><Employee ID="4" FirstName="Sunny" LastName="Deol" /><Employee ID="5" FirstName="Saurabh" LastName="Rai" /><Employee ID="6" FirstName="Rahul" LastName="Srivastava" /></EmployeeType><EmployeeType Type="Manager"><Employee ID="81" FirstName="cool" LastName="Jason" /><Employee ID="82" FirstName="Viru" LastName="Shewag" /><Employee ID="83" FirstName="Will" LastName="Smith" /></EmployeeType></Employees>')
GO
SET IDENTITY_INSERT [dbo].[RoleAssetMapping] ON 
GO
INSERT [dbo].[RoleAssetMapping] ([AssetId], [AssetName], [AssetType], [ScreenName], [AssetFileFullPath], [AssetFileFullName], [IsActive], [IsActiveForAdmin], [IsActiveForAccess2], [IsActiveForAccess1], [IsActiveForManager]) VALUES (1, N'UserManagement', N'View', N'UserManagement', N'Area\Admin\Views\Admin\', N'Index.cshtml', 1, 1, 0, 0, 0)
GO
INSERT [dbo].[RoleAssetMapping] ([AssetId], [AssetName], [AssetType], [ScreenName], [AssetFileFullPath], [AssetFileFullName], [IsActive], [IsActiveForAdmin], [IsActiveForAccess2], [IsActiveForAccess1], [IsActiveForManager]) VALUES (4, N'Home', N'View', N'Home', N'View\Home\Index.cshtml', N'Index.cshtm', 1, 1, 1, 1, 1)
GO
INSERT [dbo].[RoleAssetMapping] ([AssetId], [AssetName], [AssetType], [ScreenName], [AssetFileFullPath], [AssetFileFullName], [IsActive], [IsActiveForAdmin], [IsActiveForAccess2], [IsActiveForAccess1], [IsActiveForManager]) VALUES (5, N'Screen1', N'View', N'Screen1', N'123', N'Index.cshtml', 1, 1, 1, 0, 1)
GO
INSERT [dbo].[RoleAssetMapping] ([AssetId], [AssetName], [AssetType], [ScreenName], [AssetFileFullPath], [AssetFileFullName], [IsActive], [IsActiveForAdmin], [IsActiveForAccess2], [IsActiveForAccess1], [IsActiveForManager]) VALUES (6, N'Screen2', N'View', N'Screen2', N'Screen2', N'Screen2', 1, 1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[RoleAssetMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (2, N'Access2')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (3, N'Access1')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (4, N'Manager')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'keerthi raja p', N'Keerthi Raja ', N'Prabakaran', NULL, 0, CAST(N'2019-03-26T22:28:21.930' AS DateTime), NULL, CAST(N'2019-04-01T21:38:03.643' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'qqqqq', N'sdvsdv', N'errrrrrr', N'sdvsdv', 0, CAST(N'2019-03-26T22:33:19.460' AS DateTime), NULL, CAST(N'2019-03-30T18:15:26.717' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, N'dvsd', N'qwwwwww', N'errrrrrr', N'sdvsdv', 0, CAST(N'2019-03-26T22:34:40.880' AS DateTime), NULL, CAST(N'2019-03-30T18:15:37.293' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:36:34.980' AS DateTime), NULL, CAST(N'2019-03-30T18:16:16.747' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (5, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:37:21.317' AS DateTime), NULL, CAST(N'2019-03-30T18:27:04.857' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (6, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:37:27.293' AS DateTime), NULL, CAST(N'2019-03-30T18:27:28.070' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (7, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:49:32.697' AS DateTime), NULL, CAST(N'2019-03-30T18:27:41.430' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (8, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:50:09.373' AS DateTime), NULL, CAST(N'2019-03-30T18:29:25.160' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (9, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:52:01.487' AS DateTime), NULL, CAST(N'2019-03-30T18:28:36.100' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:55:28.407' AS DateTime), NULL, CAST(N'2019-03-30T18:29:58.947' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (11, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:56:50.613' AS DateTime), NULL, CAST(N'2019-03-30T18:30:39.497' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (12, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:57:04.867' AS DateTime), NULL, CAST(N'2019-03-30T18:27:31.193' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (13, N'test1', NULL, NULL, NULL, 0, CAST(N'2019-03-26T22:58:59.073' AS DateTime), NULL, CAST(N'2019-03-30T18:27:36.137' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (14, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:12:08.803' AS DateTime), NULL, CAST(N'2019-03-30T18:32:58.210' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (15, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:14:54.957' AS DateTime), NULL, CAST(N'2019-03-30T20:20:04.427' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (16, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:16:29.337' AS DateTime), NULL, CAST(N'2019-03-30T18:30:43.787' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (17, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:27:53.190' AS DateTime), NULL, CAST(N'2019-03-30T20:22:43.087' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (18, N'bbbbbbbbb', N'bbbbbb', N'bbbbbbbbbbb', N'bbbbbbbbbbb', 0, CAST(N'2019-03-26T23:34:43.600' AS DateTime), NULL, CAST(N'2019-03-30T21:36:27.280' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (19, N'sdvsd', N'sdvsdv', N'sdvdsv', NULL, 0, CAST(N'2019-03-26T23:38:41.023' AS DateTime), NULL, CAST(N'2019-03-30T21:36:30.660' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (20, N'fgn', N'fgn', N'rgfhbdgfh', N'dfgn', 0, CAST(N'2019-03-26T23:39:39.233' AS DateTime), NULL, CAST(N'2019-03-30T21:36:37.550' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (21, N'nnnnnnnnnnnnnnnnn', N'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', N'fgnnnn', N'nnnnnnnnnnnnnnnn', 0, CAST(N'2019-03-26T23:45:18.773' AS DateTime), NULL, CAST(N'2019-03-30T21:37:53.763' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (22, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:46:03.860' AS DateTime), NULL, CAST(N'2019-03-30T18:28:04.130' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (23, N'111111', N'22222222222', N'2222222', NULL, 0, CAST(N'2019-03-26T23:46:10.097' AS DateTime), NULL, CAST(N'2019-03-30T21:42:00.907' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (24, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:48:48.203' AS DateTime), NULL, CAST(N'2019-03-30T18:27:49.903' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (25, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:49:01.053' AS DateTime), NULL, CAST(N'2019-03-30T18:27:55.430' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (26, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:49:38.270' AS DateTime), NULL, CAST(N'2019-03-30T18:27:46.307' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (27, N'0000000000000', N'000000000', N'0000000', NULL, 0, CAST(N'2019-03-26T23:51:00.727' AS DateTime), NULL, CAST(N'2019-03-30T21:42:08.000' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (28, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:51:27.237' AS DateTime), NULL, CAST(N'2019-03-30T22:15:40.237' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (29, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:54:12.820' AS DateTime), NULL, CAST(N'2019-03-30T22:15:47.017' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (30, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:57:42.553' AS DateTime), NULL, CAST(N'2019-03-30T22:16:23.627' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (31, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:58:10.940' AS DateTime), NULL, CAST(N'2019-03-30T22:16:43.083' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (32, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-26T23:59:03.017' AS DateTime), NULL, CAST(N'2019-03-30T18:31:45.087' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (33, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:00:36.580' AS DateTime), NULL, CAST(N'2019-03-30T18:30:48.117' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (34, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:04:36.883' AS DateTime), NULL, CAST(N'2019-03-30T18:32:19.630' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (35, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:04:55.760' AS DateTime), NULL, CAST(N'2019-03-30T22:18:58.880' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (36, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:05:15.840' AS DateTime), NULL, CAST(N'2019-03-30T22:26:07.340' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (37, N'sdvds', N'sdvsdv', N'sdvdv', NULL, 0, CAST(N'2019-03-27T00:05:22.683' AS DateTime), NULL, CAST(N'2019-03-30T22:33:31.173' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (38, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:05:56.957' AS DateTime), NULL, CAST(N'2019-03-30T18:32:49.913' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (39, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:09:17.227' AS DateTime), NULL, CAST(N'2019-03-30T22:19:30.987' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (40, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:09:39.020' AS DateTime), NULL, CAST(N'2019-03-31T00:39:51.910' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (41, N'test111', N'test111', N'test111', N'test111', 0, CAST(N'2019-03-27T00:16:57.763' AS DateTime), NULL, CAST(N'2019-03-30T18:32:53.600' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (42, N'test112', N'test112', N'test112', N'test112', 0, CAST(N'2019-03-27T00:18:04.210' AS DateTime), NULL, CAST(N'2019-03-30T22:18:30.547' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (43, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:21:40.810' AS DateTime), NULL, CAST(N'2019-03-31T00:39:56.113' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (44, N'dfbdfb', N'dfbbf', N'dfbdf', NULL, 0, CAST(N'2019-03-27T00:22:24.803' AS DateTime), NULL, CAST(N'2019-03-30T22:19:26.660' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (45, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:22:41.550' AS DateTime), NULL, CAST(N'2019-03-30T22:20:52.037' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (46, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:22:50.220' AS DateTime), NULL, CAST(N'2019-03-31T00:44:21.947' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (47, N'ghnhg', N'ghngh', N'ghnghn', N'ghnghn', 0, CAST(N'2019-03-27T00:23:32.660' AS DateTime), NULL, CAST(N'2019-03-31T00:33:46.913' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (48, N'fghngfhn', N'gfhnh', N'fgnfg', N'ghnhgn', 0, CAST(N'2019-03-27T00:35:29.730' AS DateTime), NULL, CAST(N'2019-03-30T23:48:43.663' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (49, NULL, NULL, NULL, NULL, 0, CAST(N'2019-03-27T00:35:43.463' AS DateTime), NULL, CAST(N'2019-03-31T00:53:07.817' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (50, N'sfsdf', N'sfbsdfgb', N'sdfgbsdfgb', NULL, 0, CAST(N'2019-03-27T20:47:16.350' AS DateTime), NULL, CAST(N'2019-03-31T00:38:46.037' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (51, N'sdfgbsdfgb', N'sdfgbsdb', N'sdfbsdfb', NULL, 0, CAST(N'2019-03-27T20:47:27.423' AS DateTime), NULL, CAST(N'2019-03-31T00:44:38.190' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (52, N'4444444444444444', N'dfbdsfb', N'dfbdfbuyililyi', NULL, 0, CAST(N'2019-03-27T20:47:37.820' AS DateTime), NULL, CAST(N'2019-03-31T16:03:12.343' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (53, N'asdvasdv', N'sdvdv', N'dvdsv', NULL, 1, CAST(N'2019-03-27T21:00:18.287' AS DateTime), NULL, CAST(N'2019-03-31T01:09:00.263' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (54, N'dsg', N'sdfbgdsfbg', N'sdfgvsdf', NULL, 0, CAST(N'2019-03-27T21:01:18.860' AS DateTime), NULL, CAST(N'2019-03-30T22:23:16.690' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (55, N'dsfs', N'sdvsd', N'sdvsdv', NULL, 0, CAST(N'2019-03-27T21:02:22.547' AS DateTime), NULL, CAST(N'2019-03-30T22:18:45.773' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (56, N'sdvs', N'sdvdv', N'sdvsdvdfgbdbghf', NULL, 1, CAST(N'2019-03-27T21:02:44.577' AS DateTime), NULL, CAST(N'2019-03-31T01:09:03.720' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (57, N'fdgbfdgb', N'fgbndfg', N'dfgbdfg', NULL, 1, CAST(N'2019-03-27T21:03:05.160' AS DateTime), NULL, CAST(N'2019-03-31T01:05:43.553' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (58, N'sdvsdv', N'sdvsdv', N'sdvsd', NULL, 0, CAST(N'2019-03-27T21:03:18.560' AS DateTime), NULL, CAST(N'2019-03-31T16:02:20.977' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (59, N'sdvsdv', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-27T21:04:24.140' AS DateTime), NULL, CAST(N'2019-03-30T22:24:58.947' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (60, N'sdvsadvsadvadvsd', N'sdvsdvsdvsdvsdvsdvsdvsdv', N'sdvsdvsdvsdvsdvsdvsvdsd', NULL, 0, CAST(N'2019-03-27T21:25:33.563' AS DateTime), NULL, CAST(N'2019-03-31T16:02:46.000' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (61, N'sdvsdav', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-27T21:33:14.283' AS DateTime), NULL, CAST(N'2019-03-31T00:36:00.693' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (62, N'sdvs', N'sdvsdv', N'sdvsv', NULL, 1, CAST(N'2019-03-27T21:33:57.850' AS DateTime), NULL, CAST(N'2019-03-27T21:33:57.850' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (63, N'sdvdv', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-27T21:34:42.517' AS DateTime), NULL, CAST(N'2019-03-27T21:34:42.517' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (64, N'sdvsdv', N'sdvd', N'sdvsdv', NULL, 1, CAST(N'2019-03-27T21:35:20.620' AS DateTime), NULL, CAST(N'2019-03-27T21:35:20.620' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (65, N'sdvsdv', N'sdvsdvdv', N'sdvd', NULL, 0, CAST(N'2019-03-27T21:47:49.807' AS DateTime), NULL, CAST(N'2019-03-30T18:21:38.460' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (66, N'sdvv', N'sdvsdv', N'sdvsdv', NULL, 0, CAST(N'2019-03-27T21:48:02.900' AS DateTime), NULL, CAST(N'2019-03-30T18:23:41.620' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (67, N'qqqqq', N'sdvsdv', N'sdvdv', NULL, 0, CAST(N'2019-03-27T21:50:19.050' AS DateTime), NULL, CAST(N'2019-03-30T18:23:48.400' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (68, N'dsvsv', N'sdvsd', N'sdvsdv', N'sdvsdv', 0, CAST(N'2019-03-27T22:07:05.740' AS DateTime), NULL, CAST(N'2019-03-30T18:24:38.050' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (69, N'scsad', N'sdvsdvsdv', N'sdvcsdvc', NULL, 0, CAST(N'2019-03-27T22:50:33.130' AS DateTime), NULL, CAST(N'2019-03-30T18:23:52.537' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (70, N'fdbdfb', N'dfbdfb', N'dfbdfb', NULL, 0, CAST(N'2019-03-27T22:50:52.537' AS DateTime), NULL, CAST(N'2019-03-30T18:24:58.747' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (71, N'dfbfb', N'dfbdfbdfb', N'vgsdfgvsdf', NULL, 1, CAST(N'2019-03-27T23:23:45.103' AS DateTime), NULL, CAST(N'2019-03-27T23:23:45.103' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (72, N'sdvsdv', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-27T23:25:17.120' AS DateTime), NULL, CAST(N'2019-03-27T23:25:17.120' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (73, N'sdvsdv', N'sdvsdvsd', N'sdvsdv', NULL, 1, CAST(N'2019-03-27T23:25:35.490' AS DateTime), NULL, CAST(N'2019-03-27T23:25:35.490' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (74, N'bdsfbdsfb', N'bsdfbsdf', N'dfbds', NULL, 1, CAST(N'2019-03-27T23:25:54.720' AS DateTime), NULL, CAST(N'2019-03-27T23:25:54.720' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (75, N'dfbdfb', N'fbdf', N'bdfb', NULL, 1, CAST(N'2019-03-27T23:26:43.040' AS DateTime), NULL, CAST(N'2019-03-27T23:26:43.040' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (76, N'keerthi raja p', N'keerthi raja', N'p', NULL, 1, CAST(N'2019-03-27T23:34:39.027' AS DateTime), NULL, CAST(N'2019-03-27T23:34:39.027' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (77, N'yjtyj', N'tyjtyj', N'tyjtyj', N'tyjtyj', 1, CAST(N'2019-03-28T20:40:52.650' AS DateTime), NULL, CAST(N'2019-03-28T20:40:52.650' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (78, N'vdv', N'sdfvsdfv', N'svdsfv', N'sdvsdv', 1, CAST(N'2019-03-30T00:27:59.563' AS DateTime), NULL, CAST(N'2019-03-30T00:27:59.563' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (79, N'dvsdv', N'sdvsdv', N'svszdcv', N'sdvsdvsd', 0, CAST(N'2019-03-30T00:28:17.610' AS DateTime), NULL, CAST(N'2019-03-30T18:25:19.493' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (80, N'dfsad', N'sadfsdf', N'fsdfsd', N'sdfsdf', 1, CAST(N'2019-03-30T09:57:44.443' AS DateTime), NULL, CAST(N'2019-03-30T09:57:44.443' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (81, N'sdgvd', N'sdfgdf', N'dsfgvsdfg', N'dfgdfg', 1, CAST(N'2019-03-30T10:43:15.730' AS DateTime), NULL, CAST(N'2019-03-30T10:43:15.730' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (82, N'sdvdv', N'sdvsdv', N'sdvsd', NULL, 1, CAST(N'2019-03-30T10:51:41.540' AS DateTime), NULL, CAST(N'2019-03-30T10:51:41.540' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (83, N'gbfgb', N'gfbfgb', N'fgnbfdg', NULL, 1, CAST(N'2019-03-30T11:13:33.650' AS DateTime), NULL, CAST(N'2019-03-30T11:13:33.650' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (84, N'dfbfdb', N'dfbdfb', N'vfddfv', NULL, 1, CAST(N'2019-03-30T11:14:20.667' AS DateTime), NULL, CAST(N'2019-03-30T11:14:20.667' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (85, N'dfbdf', N'dbffd', N'dfbf', NULL, 0, CAST(N'2019-03-30T14:33:01.797' AS DateTime), NULL, CAST(N'2019-03-30T18:16:25.127' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (86, N'sdgsdf', N'dfgdf', N'fgdf', N'dfgdf', 0, CAST(N'2019-03-30T15:08:06.653' AS DateTime), NULL, CAST(N'2019-03-30T18:16:39.387' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (87, N'sdvsdv', N'sdvsdv', N'sdvsd', N'sdvsdv', 0, CAST(N'2019-03-30T15:44:49.660' AS DateTime), NULL, CAST(N'2019-03-30T18:16:32.093' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (88, N'dhbd', N'fgnfgn', N'gnhfgh', NULL, 0, CAST(N'2019-03-30T17:23:49.920' AS DateTime), NULL, CAST(N'2019-03-30T18:17:44.280' AS DateTime), 5)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (89, N'sdvsdv', N'sdvsdv', N'sdvsdvds', NULL, 1, CAST(N'2019-03-30T18:28:29.553' AS DateTime), NULL, CAST(N'2019-03-30T18:28:29.553' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (90, N'sdvsd', N'dsvs', N'sdvsd', NULL, 1, CAST(N'2019-03-30T18:33:02.850' AS DateTime), NULL, CAST(N'2019-03-30T18:33:02.850' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (91, N'sdvsd', N'sdvdsv', N'sdvsd', NULL, 1, CAST(N'2019-03-30T20:05:42.063' AS DateTime), NULL, CAST(N'2019-03-30T20:05:42.063' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (92, N'sdvdsv', N'sdvsdv', N'sdvds', NULL, 1, CAST(N'2019-03-30T20:06:46.367' AS DateTime), NULL, CAST(N'2019-03-30T20:06:46.367' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (93, N'fgbfgb', N'fgbgfb', N'bgdfb', NULL, 1, CAST(N'2019-03-30T20:22:36.850' AS DateTime), NULL, CAST(N'2019-03-30T20:22:36.850' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (94, N'ghnhg', N'ghnghn', N'ghnghn', NULL, 1, CAST(N'2019-03-30T20:45:33.407' AS DateTime), NULL, CAST(N'2019-03-30T20:45:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (95, N'dfvbdf', N'dfvfdv', N'fdsvdsf', NULL, 1, CAST(N'2019-03-30T20:46:19.667' AS DateTime), NULL, CAST(N'2019-03-30T20:46:19.667' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (96, N'1111111', N'2222222222', N'3333333', N'333333333333', 1, CAST(N'2019-03-30T21:34:29.570' AS DateTime), NULL, CAST(N'2019-03-30T21:34:29.570' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (97, N'vdvd', N'dvdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-30T21:36:52.917' AS DateTime), NULL, CAST(N'2019-03-30T21:36:52.917' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (98, N'sdvdsv', N'sdvdsv', N'sdvs', NULL, 1, CAST(N'2019-03-30T21:41:53.563' AS DateTime), NULL, CAST(N'2019-03-30T21:41:53.563' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (99, N'davadsv', N'sdvds', N'sdvsdv', N'sdvdsv', 1, CAST(N'2019-03-30T22:18:18.863' AS DateTime), NULL, CAST(N'2019-03-30T22:18:18.863' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (100, N'dfbdfb', N'dfbdbfd', N'dfbdfb', NULL, 1, CAST(N'2019-03-30T22:18:40.700' AS DateTime), NULL, CAST(N'2019-03-30T22:18:40.700' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (101, N'sdvsdv', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-30T22:25:24.753' AS DateTime), NULL, CAST(N'2019-03-30T22:25:24.753' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (102, N'ascs', N'ascasc', N'ascas', NULL, 1, CAST(N'2019-03-30T23:48:35.570' AS DateTime), NULL, CAST(N'2019-03-30T23:48:35.570' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (103, N'fghdfghdfgh', N'hgsgthdr', N'fhgsret', NULL, 1, CAST(N'2019-03-31T00:30:29.353' AS DateTime), NULL, CAST(N'2019-03-31T00:30:29.353' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (104, N'dfbdfg', N'dfggdfg', N'dfdsfg', N'dfgbdfb', 1, CAST(N'2019-03-31T00:31:52.030' AS DateTime), NULL, CAST(N'2019-03-31T00:31:52.030' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (105, N'fgnfgn', N'fgnfg', N'gnbfg', NULL, 1, CAST(N'2019-03-31T00:33:34.937' AS DateTime), NULL, CAST(N'2019-03-31T00:33:34.937' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (106, N'sdvsdv', N'sdvsd', N'sdvs', NULL, 1, CAST(N'2019-03-31T00:39:38.947' AS DateTime), NULL, CAST(N'2019-03-31T00:39:38.947' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (107, N'sdvsdv', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T00:39:47.143' AS DateTime), NULL, CAST(N'2019-03-31T00:39:47.143' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (108, N'sdvsd', N'sdvsdv', N'sdvdv', NULL, 1, CAST(N'2019-03-31T00:44:44.763' AS DateTime), NULL, CAST(N'2019-03-31T00:44:44.763' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (109, N'dfvdf', N'dfvdfv', N'dfsvdfv', N'dfvfv', 1, CAST(N'2019-03-31T00:45:07.187' AS DateTime), NULL, CAST(N'2019-03-31T00:45:07.187' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (110, N'SDVSDV', N'SDVDV', N'SDVSDV', NULL, 1, CAST(N'2019-03-31T16:02:13.527' AS DateTime), NULL, CAST(N'2019-03-31T16:02:13.527' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (111, N'SDVSDV', N'SDVSDV', N'SADVSD', NULL, 1, CAST(N'2019-03-31T16:03:02.227' AS DateTime), NULL, CAST(N'2019-03-31T16:03:02.227' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (112, N'yhjghf', N'ghjghj', N'ghjg', NULL, 1, CAST(N'2019-03-31T19:13:47.327' AS DateTime), NULL, CAST(N'2019-03-31T19:13:47.327' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (113, N'sdvds', N'sdvsdv', N'dvsdv', NULL, 1, CAST(N'2019-03-31T19:15:20.637' AS DateTime), NULL, CAST(N'2019-03-31T19:15:20.637' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (114, N'sdvsdv', N'sdvdv', N'sdv', NULL, 1, CAST(N'2019-03-31T19:16:01.390' AS DateTime), NULL, CAST(N'2019-03-31T19:16:01.390' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (115, N'sdvd', N'sdvsd', N'sdvsd', NULL, 1, CAST(N'2019-03-31T19:17:20.287' AS DateTime), NULL, CAST(N'2019-03-31T19:17:20.287' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (116, N'sdvsdv', N'sadvsdv', N'sdvdv', NULL, 1, CAST(N'2019-03-31T19:41:46.993' AS DateTime), NULL, CAST(N'2019-03-31T19:41:46.993' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (117, N'afedfd', N'wefwef', N'efef', NULL, 1, CAST(N'2019-03-31T19:57:42.327' AS DateTime), NULL, CAST(N'2019-03-31T19:57:42.327' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (118, N'asvcasd', N'asdcdsc', N'asdcsd', NULL, 1, CAST(N'2019-03-31T20:00:59.447' AS DateTime), NULL, CAST(N'2019-03-31T20:00:59.447' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (119, N'ascas', N'ascsac', N'ascas', NULL, 1, CAST(N'2019-03-31T20:01:41.090' AS DateTime), NULL, CAST(N'2019-03-31T20:01:41.090' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (120, N'sdvsd', N'sdvsdv', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:02:22.137' AS DateTime), NULL, CAST(N'2019-03-31T20:02:22.137' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (121, N'sdvd', N'sdvdsv', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:03:30.520' AS DateTime), NULL, CAST(N'2019-03-31T20:03:30.520' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (122, N'sdvds', N'sdvd', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:04:35.247' AS DateTime), NULL, CAST(N'2019-03-31T20:04:35.247' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (123, N'sdc', N'sdcsd', N'dsacds', NULL, 1, CAST(N'2019-03-31T20:08:49.727' AS DateTime), NULL, CAST(N'2019-03-31T20:08:49.727' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (124, N'sdvdsv', N'sdvd', N'asdvd', NULL, 1, CAST(N'2019-03-31T20:11:23.133' AS DateTime), NULL, CAST(N'2019-03-31T20:11:23.133' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (125, N'sdv', N'sdvs', N'sdv', NULL, 1, CAST(N'2019-03-31T20:12:23.820' AS DateTime), NULL, CAST(N'2019-03-31T20:12:23.820' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (126, N'sdv', N'sdv', N'sdv', NULL, 1, CAST(N'2019-03-31T20:13:02.620' AS DateTime), NULL, CAST(N'2019-03-31T20:13:02.620' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (127, N'sdvsd', N'sdvs', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:13:42.393' AS DateTime), NULL, CAST(N'2019-03-31T20:13:42.393' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (128, N'sdvsdv', N'sdvsdv', N'adsasdv', NULL, 1, CAST(N'2019-03-31T20:17:15.830' AS DateTime), NULL, CAST(N'2019-03-31T20:17:15.830' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (129, N'SDVSDV', N'SDVSDV', N'SDVSDV', NULL, 1, CAST(N'2019-03-31T20:18:43.980' AS DateTime), NULL, CAST(N'2019-03-31T20:18:43.980' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (130, N'SDVSD', N'SDVSDV', N'SDVSDV', NULL, 1, CAST(N'2019-03-31T20:19:56.407' AS DateTime), NULL, CAST(N'2019-03-31T20:19:56.407' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (131, N'SDV', N'SDVSDV', N'SDVSD', NULL, 1, CAST(N'2019-03-31T20:20:59.650' AS DateTime), NULL, CAST(N'2019-03-31T20:20:59.650' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (132, N'sdvd', N'sdvsdv', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:26:05.143' AS DateTime), NULL, CAST(N'2019-03-31T20:26:05.143' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (133, N'dsvd', N'sdvdsv', N'sdvdv', NULL, 1, CAST(N'2019-03-31T20:26:39.210' AS DateTime), NULL, CAST(N'2019-03-31T20:26:39.210' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (134, N'sdvds', N'sdvsd', N'sdv', NULL, 1, CAST(N'2019-03-31T20:29:58.340' AS DateTime), NULL, CAST(N'2019-03-31T20:29:58.340' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (135, N'sdvsd', N'sdvsdv', N'sdvd', NULL, 1, CAST(N'2019-03-31T20:30:56.337' AS DateTime), NULL, CAST(N'2019-03-31T20:30:56.337' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (136, N'ssdv', N'sdvds', N'sdvsv', NULL, 1, CAST(N'2019-03-31T20:32:11.793' AS DateTime), NULL, CAST(N'2019-03-31T20:32:11.793' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (137, N'sdvd', N'sdvd', N'sdv', NULL, 1, CAST(N'2019-03-31T20:32:38.110' AS DateTime), NULL, CAST(N'2019-03-31T20:32:38.110' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (138, N'sdvsd', N'sdvd', N'sdvs', NULL, 1, CAST(N'2019-03-31T20:34:44.973' AS DateTime), NULL, CAST(N'2019-03-31T20:34:44.973' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (139, N'fvdf', N'dfvdfv', N'vdfv', NULL, 1, CAST(N'2019-03-31T20:35:02.770' AS DateTime), NULL, CAST(N'2019-03-31T20:35:02.770' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (140, N'sdvsdv', N'sdvdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T20:35:51.420' AS DateTime), NULL, CAST(N'2019-03-31T20:35:51.420' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (141, N'dfvdf', N'dffv', N'dfvdf', NULL, 1, CAST(N'2019-03-31T20:36:14.380' AS DateTime), NULL, CAST(N'2019-03-31T20:36:14.380' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (142, N'ascs', N'ascsc', N'ascsac', NULL, 1, CAST(N'2019-03-31T20:36:52.847' AS DateTime), NULL, CAST(N'2019-03-31T20:36:52.847' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (143, N'dvsd', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T20:37:29.743' AS DateTime), NULL, CAST(N'2019-03-31T20:37:29.743' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (144, N'sdvds', N'sdvd', N'sdvdv', NULL, 1, CAST(N'2019-03-31T20:38:35.430' AS DateTime), NULL, CAST(N'2019-03-31T20:38:35.430' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (145, N'sdvds', N'sdvdv', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:39:46.093' AS DateTime), NULL, CAST(N'2019-03-31T20:39:46.093' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (146, N'sdvsdav', N'sdvdsv', N'dvdsv', NULL, 1, CAST(N'2019-03-31T20:40:45.333' AS DateTime), NULL, CAST(N'2019-03-31T20:40:45.333' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (147, N'sdv', N'sdvsdv', N'sdvsd', NULL, 1, CAST(N'2019-03-31T20:42:16.813' AS DateTime), NULL, CAST(N'2019-03-31T20:42:16.813' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (148, N'dfvdf', N'dffdv', N'sdfvdf', NULL, 1, CAST(N'2019-03-31T20:42:34.333' AS DateTime), NULL, CAST(N'2019-03-31T20:42:34.333' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (149, N'sdv', N'sdv', N'sdv', NULL, 1, CAST(N'2019-03-31T20:43:41.320' AS DateTime), NULL, CAST(N'2019-03-31T20:43:41.320' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (150, N'sdvd', N'sdvd', N'sdvd', NULL, 1, CAST(N'2019-03-31T20:44:05.880' AS DateTime), NULL, CAST(N'2019-03-31T20:44:05.880' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (151, N'sdvd', N'sdvds', N'sdvd', NULL, 1, CAST(N'2019-03-31T20:44:32.750' AS DateTime), NULL, CAST(N'2019-03-31T20:44:32.750' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (152, N'sdvd', N'sdvdv', N'sdvdv', NULL, 1, CAST(N'2019-03-31T20:46:44.730' AS DateTime), NULL, CAST(N'2019-03-31T20:46:44.730' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (153, N'dvd', N'dvdsv', N'sdv', NULL, 1, CAST(N'2019-03-31T20:47:55.993' AS DateTime), NULL, CAST(N'2019-03-31T20:47:55.993' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (154, N'sdv', N'sdvdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T20:48:25.340' AS DateTime), NULL, CAST(N'2019-03-31T20:48:25.340' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (155, N'sdv', N'd', N'd', NULL, 1, CAST(N'2019-03-31T20:48:48.023' AS DateTime), NULL, CAST(N'2019-03-31T20:48:48.023' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (156, N' d', N' d', N' d', NULL, 1, CAST(N'2019-03-31T20:49:50.843' AS DateTime), NULL, CAST(N'2019-03-31T20:49:50.843' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (157, N'w', N'w', N'w', NULL, 1, CAST(N'2019-03-31T20:50:32.150' AS DateTime), NULL, CAST(N'2019-03-31T20:50:32.150' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (158, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T20:51:12.073' AS DateTime), NULL, CAST(N'2019-03-31T20:51:12.073' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (159, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T20:51:33.940' AS DateTime), NULL, CAST(N'2019-03-31T20:51:33.940' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (160, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T20:54:03.767' AS DateTime), NULL, CAST(N'2019-03-31T20:54:03.767' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (161, N'sdvd', N'dv', N'sdvd', NULL, 1, CAST(N'2019-03-31T20:56:48.833' AS DateTime), NULL, CAST(N'2019-03-31T20:56:48.833' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (162, N'v', N'v', N'v', NULL, 1, CAST(N'2019-03-31T20:58:05.070' AS DateTime), NULL, CAST(N'2019-03-31T20:58:05.070' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (163, N'vv', N'vv', N'vv', NULL, 1, CAST(N'2019-03-31T20:58:17.187' AS DateTime), NULL, CAST(N'2019-03-31T20:58:17.187' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (164, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:00:32.400' AS DateTime), NULL, CAST(N'2019-03-31T21:00:32.400' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (165, N'd', N'd', N'dd', NULL, 1, CAST(N'2019-03-31T21:13:28.130' AS DateTime), NULL, CAST(N'2019-03-31T21:13:28.130' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (166, N'dd', N'dd', N'dd', NULL, 1, CAST(N'2019-03-31T21:14:01.300' AS DateTime), NULL, CAST(N'2019-03-31T21:14:01.300' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (167, N'dd', N'dd', N'dd', NULL, 1, CAST(N'2019-03-31T21:14:27.790' AS DateTime), NULL, CAST(N'2019-03-31T21:14:27.790' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (168, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:15:18.967' AS DateTime), NULL, CAST(N'2019-03-31T21:15:18.967' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (169, N'dd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:18:59.713' AS DateTime), NULL, CAST(N'2019-03-31T21:18:59.713' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (170, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:19:35.870' AS DateTime), NULL, CAST(N'2019-03-31T21:19:35.870' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (171, N'w', N'w', N'w', NULL, 1, CAST(N'2019-03-31T21:20:06.627' AS DateTime), NULL, CAST(N'2019-03-31T21:20:06.627' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (172, N'f', N'f', N'f', NULL, 1, CAST(N'2019-03-31T21:21:47.537' AS DateTime), NULL, CAST(N'2019-03-31T21:21:47.537' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (173, N'f', N'f', N'f', NULL, 1, CAST(N'2019-03-31T21:22:56.980' AS DateTime), NULL, CAST(N'2019-03-31T21:22:56.980' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (174, N'r', N'r', N'r', NULL, 1, CAST(N'2019-03-31T21:28:49.507' AS DateTime), NULL, CAST(N'2019-03-31T21:28:49.507' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (175, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:29:56.723' AS DateTime), NULL, CAST(N'2019-03-31T21:29:56.723' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (176, N'y', N'y', N'y', NULL, 1, CAST(N'2019-03-31T21:30:58.853' AS DateTime), NULL, CAST(N'2019-03-31T21:30:58.853' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (177, N'ss', N's', N's', NULL, 1, CAST(N'2019-03-31T21:41:09.260' AS DateTime), NULL, CAST(N'2019-03-31T21:41:09.260' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (178, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:48:13.013' AS DateTime), NULL, CAST(N'2019-03-31T21:48:13.013' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (179, N'g', N'g', N'g', NULL, 1, CAST(N'2019-03-31T21:49:36.420' AS DateTime), NULL, CAST(N'2019-03-31T21:49:36.420' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (180, N'frg', N'fg', N'fg', NULL, 1, CAST(N'2019-03-31T21:50:31.993' AS DateTime), NULL, CAST(N'2019-03-31T21:50:31.993' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (181, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:54:59.103' AS DateTime), NULL, CAST(N'2019-03-31T21:54:59.103' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (182, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:56:19.647' AS DateTime), NULL, CAST(N'2019-03-31T21:56:19.647' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (183, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T21:57:09.730' AS DateTime), NULL, CAST(N'2019-03-31T21:57:09.730' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (184, N'f', N'f', N'f', NULL, 1, CAST(N'2019-03-31T21:59:25.130' AS DateTime), NULL, CAST(N'2019-03-31T21:59:25.130' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (185, N'dd', N'd', N'dd', NULL, 1, CAST(N'2019-03-31T21:59:50.393' AS DateTime), NULL, CAST(N'2019-03-31T21:59:50.393' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (186, N'e', N'e', N'e', NULL, 1, CAST(N'2019-03-31T22:00:30.980' AS DateTime), NULL, CAST(N'2019-03-31T22:00:30.980' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (187, N'fvf', N'f', N'f', NULL, 1, CAST(N'2019-03-31T22:03:10.137' AS DateTime), NULL, CAST(N'2019-03-31T22:03:10.137' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (188, N'dvd', N'dd', N'dd', NULL, 1, CAST(N'2019-03-31T22:16:08.307' AS DateTime), NULL, CAST(N'2019-03-31T22:16:08.307' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (189, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T22:19:57.323' AS DateTime), NULL, CAST(N'2019-03-31T22:19:57.323' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (190, N'sdv', N'sdvd', N'sdv', NULL, 1, CAST(N'2019-03-31T22:28:39.830' AS DateTime), NULL, CAST(N'2019-03-31T22:28:39.830' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (191, N'e', N'e', N'e', NULL, 1, CAST(N'2019-03-31T22:29:26.943' AS DateTime), NULL, CAST(N'2019-03-31T22:29:26.943' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (192, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T22:29:56.880' AS DateTime), NULL, CAST(N'2019-03-31T22:29:56.880' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (193, N'a', N's', N's', NULL, 1, CAST(N'2019-03-31T22:31:58.013' AS DateTime), NULL, CAST(N'2019-03-31T22:31:58.013' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (194, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T22:33:08.763' AS DateTime), NULL, CAST(N'2019-03-31T22:33:08.763' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (195, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T22:34:45.233' AS DateTime), NULL, CAST(N'2019-03-31T22:34:45.233' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (196, N'fv', N'fv', N'fvf', NULL, 1, CAST(N'2019-03-31T22:41:46.930' AS DateTime), NULL, CAST(N'2019-03-31T22:41:46.930' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (197, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T22:42:28.630' AS DateTime), NULL, CAST(N'2019-03-31T22:42:28.630' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (198, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T22:43:17.623' AS DateTime), NULL, CAST(N'2019-03-31T22:43:17.623' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (199, N'vdv', N'dvd', N'vd', NULL, 1, CAST(N'2019-03-31T22:44:33.000' AS DateTime), NULL, CAST(N'2019-03-31T22:44:33.000' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (200, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T22:45:10.550' AS DateTime), NULL, CAST(N'2019-03-31T22:45:10.550' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (201, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T22:45:52.203' AS DateTime), NULL, CAST(N'2019-03-31T22:45:52.203' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (202, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T22:47:06.910' AS DateTime), NULL, CAST(N'2019-03-31T22:47:06.910' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (203, N'sc', N'sc', N'sc', NULL, 1, CAST(N'2019-03-31T22:47:29.810' AS DateTime), NULL, CAST(N'2019-03-31T22:47:29.810' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (204, N'fv', N'f', N'f', NULL, 1, CAST(N'2019-03-31T22:49:35.720' AS DateTime), NULL, CAST(N'2019-03-31T22:49:35.720' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (205, N'dsv', N'dsv', N'sdv', NULL, 1, CAST(N'2019-03-31T22:52:09.680' AS DateTime), NULL, CAST(N'2019-03-31T22:52:09.680' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (206, N'vdv', N'dv', N'dv', NULL, 1, CAST(N'2019-03-31T22:53:40.663' AS DateTime), NULL, CAST(N'2019-03-31T22:53:40.663' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (207, N'sdvsdv', N'd', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T22:54:32.237' AS DateTime), NULL, CAST(N'2019-03-31T22:54:32.237' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (208, N'dv', N'dvdv', N'vd', NULL, 1, CAST(N'2019-03-31T22:54:45.250' AS DateTime), NULL, CAST(N'2019-03-31T22:54:45.250' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (209, N'd', N'd', N'd', NULL, 1, CAST(N'2019-03-31T22:59:25.953' AS DateTime), NULL, CAST(N'2019-03-31T22:59:25.953' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (210, N'vdv', N'dv', N'vd', NULL, 1, CAST(N'2019-03-31T23:00:28.563' AS DateTime), NULL, CAST(N'2019-03-31T23:00:28.563' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (211, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T23:01:23.430' AS DateTime), NULL, CAST(N'2019-03-31T23:01:23.430' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (212, N'sdvsdv', N'sdvsdv', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T23:05:40.290' AS DateTime), NULL, CAST(N'2019-03-31T23:05:40.290' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (213, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T23:07:59.300' AS DateTime), NULL, CAST(N'2019-03-31T23:07:59.300' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (214, N'svs', N'scs', N'scs', NULL, 1, CAST(N'2019-03-31T23:08:28.667' AS DateTime), NULL, CAST(N'2019-03-31T23:08:28.667' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (215, N'dv', N'dvd', N'dvd', NULL, 1, CAST(N'2019-03-31T23:10:03.523' AS DateTime), NULL, CAST(N'2019-03-31T23:10:03.523' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (216, N'vd', N'vd', N'vd', NULL, 1, CAST(N'2019-03-31T23:12:53.900' AS DateTime), NULL, CAST(N'2019-03-31T23:12:53.900' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (217, N'd', N'd', N'sdvsdv', NULL, 1, CAST(N'2019-03-31T23:20:07.173' AS DateTime), NULL, CAST(N'2019-03-31T23:20:07.173' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (218, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T23:25:23.053' AS DateTime), NULL, CAST(N'2019-03-31T23:25:23.053' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (219, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T23:26:04.033' AS DateTime), NULL, CAST(N'2019-03-31T23:26:04.033' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (220, N'scsc', N'scs', N'csc', NULL, 1, CAST(N'2019-03-31T23:26:52.300' AS DateTime), NULL, CAST(N'2019-03-31T23:26:52.300' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (221, N'csc', N'sc', N'sc', NULL, 1, CAST(N'2019-03-31T23:27:32.430' AS DateTime), NULL, CAST(N'2019-03-31T23:27:32.430' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (222, N's', N'cs', N'cs', NULL, 1, CAST(N'2019-03-31T23:28:06.090' AS DateTime), NULL, CAST(N'2019-03-31T23:28:06.090' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (223, N's', N's', N's', NULL, 1, CAST(N'2019-03-31T23:28:57.600' AS DateTime), NULL, CAST(N'2019-03-31T23:28:57.600' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (224, N'efe', N'efef', N'fef', NULL, 1, CAST(N'2019-03-31T23:29:13.180' AS DateTime), NULL, CAST(N'2019-03-31T23:29:13.180' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (225, N'vd', N'dv', N'xcv', NULL, 1, CAST(N'2019-03-31T23:32:28.053' AS DateTime), NULL, CAST(N'2019-03-31T23:32:28.053' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (226, N'123', N'456', N'123', NULL, 1, CAST(N'2019-03-31T23:37:00.663' AS DateTime), NULL, CAST(N'2019-03-31T23:37:00.663' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (227, N'sdfbv', N'dfdfbv', N'asdfsd', NULL, 1, CAST(N'2019-04-01T00:04:29.490' AS DateTime), NULL, CAST(N'2019-04-01T00:04:29.490' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (228, N'55', N'55', N'55', NULL, 1, CAST(N'2019-04-01T00:08:58.230' AS DateTime), NULL, CAST(N'2019-04-01T00:08:58.230' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (229, N'd', N'd', N'd', NULL, 1, CAST(N'2019-04-01T20:13:54.893' AS DateTime), NULL, CAST(N'2019-04-01T20:13:54.893' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (230, N's', N's', N's', NULL, 1, CAST(N'2019-04-01T20:14:29.170' AS DateTime), NULL, CAST(N'2019-04-01T20:14:29.170' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (231, N'ss', N'ss', N'ss', NULL, 1, CAST(N'2019-04-01T20:14:45.127' AS DateTime), NULL, CAST(N'2019-04-01T20:14:45.127' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (232, N's', N's', N's', NULL, 1, CAST(N'2019-04-01T20:15:39.813' AS DateTime), NULL, CAST(N'2019-04-01T20:15:39.813' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (233, N'sdv', N'sdv', N'sdv', NULL, 1, CAST(N'2019-04-01T21:05:23.350' AS DateTime), NULL, CAST(N'2019-04-01T21:05:23.350' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (234, N'd', N'd', N'd', NULL, 1, CAST(N'2019-04-01T21:08:39.690' AS DateTime), NULL, CAST(N'2019-04-01T21:08:39.690' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (235, N'dd', N'dddd', N'dd', NULL, 1, CAST(N'2019-04-01T21:09:50.440' AS DateTime), NULL, CAST(N'2019-04-01T21:09:50.440' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (236, N's', N's', N's', NULL, 1, CAST(N'2019-04-01T21:10:14.603' AS DateTime), NULL, CAST(N'2019-04-01T21:10:14.603' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (237, N'dd', N'dd', N'dd', NULL, 1, CAST(N'2019-04-01T21:12:03.180' AS DateTime), NULL, CAST(N'2019-04-01T21:12:03.180' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (238, N'dd', N'ddd', N'dd', NULL, 1, CAST(N'2019-04-01T21:13:55.477' AS DateTime), NULL, CAST(N'2019-04-01T21:13:55.477' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (239, N'ss', N'ss', N'ss', NULL, 1, CAST(N'2019-04-01T21:16:10.810' AS DateTime), NULL, CAST(N'2019-04-01T21:16:10.810' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (240, N'ss', N'ss', N'ss', NULL, 1, CAST(N'2019-04-01T21:16:49.073' AS DateTime), NULL, CAST(N'2019-04-01T21:16:49.073' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (241, N'dd', N'dd', N'dd', NULL, 1, CAST(N'2019-04-01T21:17:30.783' AS DateTime), NULL, CAST(N'2019-04-01T21:17:30.783' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (242, N'dd', N'dd', N'dd', N'tttttttttt', 1, CAST(N'2019-04-01T21:17:53.290' AS DateTime), NULL, CAST(N'2019-04-01T21:17:53.290' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (243, N'ss', N'sss', N'sss', N'ssssssss', 1, CAST(N'2019-04-01T21:20:03.537' AS DateTime), NULL, CAST(N'2019-04-01T21:20:03.537' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (244, N'ssssss', N'ssssss', N'ssssss', N'sssssssss', 1, CAST(N'2019-04-01T21:20:18.310' AS DateTime), NULL, CAST(N'2019-04-01T21:20:18.310' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (245, N'ddd', N'dddddd', N'ddddd', N'ddddddddddddd', 1, CAST(N'2019-04-01T21:20:54.100' AS DateTime), NULL, CAST(N'2019-04-01T21:20:54.100' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (246, N'mmmm', N'mmmmmmmm', N'mmmmmm', NULL, 1, CAST(N'2019-04-01T21:21:23.950' AS DateTime), NULL, CAST(N'2019-04-01T21:21:23.950' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (247, N'sd', N'sd', N'sd', N'sd', 1, CAST(N'2019-04-01T21:21:44.143' AS DateTime), NULL, CAST(N'2019-04-01T21:21:44.143' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (248, N'd', N'd', N'sdvsdv', N'ghnghn', 1, CAST(N'2019-04-01T21:23:16.187' AS DateTime), NULL, CAST(N'2019-04-01T21:23:16.187' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (249, N's', N'sdvdv', N'sdvsd', N'sdvsdv', 1, CAST(N'2019-04-01T21:23:32.900' AS DateTime), NULL, CAST(N'2019-04-01T21:23:32.900' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (250, N'cc', N'dcdc', N'cdc', N'dcdc', 1, CAST(N'2019-04-01T21:24:37.150' AS DateTime), NULL, CAST(N'2019-04-01T21:24:37.150' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (251, N'd', N'd', N'd', N'd', 1, CAST(N'2019-04-01T21:29:21.957' AS DateTime), NULL, CAST(N'2019-04-01T21:29:21.957' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (252, N'ss', N's', N's', NULL, 1, CAST(N'2019-04-01T21:29:57.413' AS DateTime), NULL, CAST(N'2019-04-01T21:29:57.413' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (253, N'dd', N'dd', N'd', N'dd', 1, CAST(N'2019-04-01T21:31:28.803' AS DateTime), NULL, CAST(N'2019-04-01T21:31:28.803' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (254, N'ss', N'ss', N'ss', NULL, 1, CAST(N'2019-04-01T21:32:12.557' AS DateTime), NULL, CAST(N'2019-04-01T21:32:12.557' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (255, N'ss', N'sss', N'ss', NULL, 1, CAST(N'2019-04-01T21:32:34.360' AS DateTime), NULL, CAST(N'2019-04-01T21:32:34.360' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (256, N'v', N'v', N'v', NULL, 1, CAST(N'2019-04-01T21:33:02.170' AS DateTime), NULL, CAST(N'2019-04-01T21:33:02.170' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (257, N'd', N'd', N'd', NULL, 1, CAST(N'2019-04-01T21:33:21.907' AS DateTime), NULL, CAST(N'2019-04-01T21:33:21.907' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (258, N'ss', N'ss', N'ss', NULL, 1, CAST(N'2019-04-01T21:35:58.037' AS DateTime), NULL, CAST(N'2019-04-01T21:35:58.037' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (259, N'd', N'd', N'd', N'd', 1, CAST(N'2019-04-01T21:36:26.730' AS DateTime), NULL, CAST(N'2019-04-01T21:36:26.730' AS DateTime), NULL)
GO
INSERT [dbo].[User] ([UserId], [Username], [FirstName], [LastName], [MiddleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (260, N'ss', N'ss', N'ss', NULL, 1, CAST(N'2019-04-01T21:37:34.200' AS DateTime), NULL, CAST(N'2019-04-01T21:37:34.200' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 1, 1, N'Admin', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, 1, 2, N'Access2', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, 1, 3, N'Access1', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, 227, 1, N'Admin', 0, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (5, 227, 3, N'Access1', 1, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (6, 227, 2, N'Access2', 0, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (7, 227, 4, N'Manager', 0, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123, CAST(N'2019-04-01T00:06:05.873' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (8, 228, 2, N'Access2', 1, CAST(N'2019-04-01T00:09:02.167' AS DateTime), 123, CAST(N'2019-04-01T00:09:02.167' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (9, 228, 3, N'Access1', 1, CAST(N'2019-04-01T00:09:02.167' AS DateTime), 123, CAST(N'2019-04-01T00:09:02.167' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10, 228, 1, N'Admin', 1, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (11, 228, 3, N'Access1', 1, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (12, 228, 2, N'Access2', 1, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (13, 228, 4, N'Manager', 1, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123, CAST(N'2019-04-01T00:09:22.403' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (14, 229, 1, N'Admin', 1, CAST(N'2019-04-01T20:14:00.203' AS DateTime), 123, CAST(N'2019-04-01T20:14:00.203' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (15, 229, 3, N'Access1', 1, CAST(N'2019-04-01T20:14:00.203' AS DateTime), 123, CAST(N'2019-04-01T20:14:00.203' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (16, 230, 2, N'Access2', 1, CAST(N'2019-04-01T20:14:34.357' AS DateTime), 123, CAST(N'2019-04-01T20:14:34.357' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (17, 230, 3, N'Access1', 1, CAST(N'2019-04-01T20:14:34.357' AS DateTime), 123, CAST(N'2019-04-01T20:14:34.357' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (18, 232, 2, N'Access2', 1, CAST(N'2019-04-01T20:15:43.247' AS DateTime), 123, CAST(N'2019-04-01T20:15:43.247' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (19, 232, 3, N'Access1', 1, CAST(N'2019-04-01T20:15:43.247' AS DateTime), 123, CAST(N'2019-04-01T20:15:43.247' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (20, 233, 2, N'Access2', 1, CAST(N'2019-04-01T21:05:27.010' AS DateTime), 123, CAST(N'2019-04-01T21:05:27.010' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (21, 233, 3, N'Access1', 1, CAST(N'2019-04-01T21:05:27.010' AS DateTime), 123, CAST(N'2019-04-01T21:05:27.010' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (22, 234, 1, N'Admin', 1, CAST(N'2019-04-01T21:08:43.983' AS DateTime), 123, CAST(N'2019-04-01T21:08:43.983' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (23, 234, 3, N'Access1', 1, CAST(N'2019-04-01T21:08:43.983' AS DateTime), 123, CAST(N'2019-04-01T21:08:43.983' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (24, 236, 1, N'Admin', 1, CAST(N'2019-04-01T21:10:17.523' AS DateTime), 123, CAST(N'2019-04-01T21:10:17.523' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (25, 237, 1, N'Admin', 1, CAST(N'2019-04-01T21:12:06.780' AS DateTime), 123, CAST(N'2019-04-01T21:12:06.780' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (26, 237, 3, N'Access1', 1, CAST(N'2019-04-01T21:12:06.780' AS DateTime), 123, CAST(N'2019-04-01T21:12:06.780' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (27, 238, 3, N'Access1', 1, CAST(N'2019-04-01T21:13:57.847' AS DateTime), 123, CAST(N'2019-04-01T21:13:57.847' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (28, 239, 1, N'Admin', 1, CAST(N'2019-04-01T21:16:14.207' AS DateTime), 123, CAST(N'2019-04-01T21:16:14.207' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (29, 239, 3, N'Access1', 1, CAST(N'2019-04-01T21:16:14.207' AS DateTime), 123, CAST(N'2019-04-01T21:16:14.207' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (30, 240, 1, N'Admin', 1, CAST(N'2019-04-01T21:16:52.323' AS DateTime), 123, CAST(N'2019-04-01T21:16:52.323' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (31, 240, 3, N'Access1', 1, CAST(N'2019-04-01T21:16:52.323' AS DateTime), 123, CAST(N'2019-04-01T21:16:52.323' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (32, 241, 1, N'Admin', 1, CAST(N'2019-04-01T21:17:33.887' AS DateTime), 123, CAST(N'2019-04-01T21:17:33.887' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (33, 241, 3, N'Access1', 1, CAST(N'2019-04-01T21:17:33.887' AS DateTime), 123, CAST(N'2019-04-01T21:17:33.887' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (34, 242, 1, N'Admin', 1, CAST(N'2019-04-01T21:17:56.710' AS DateTime), 123, CAST(N'2019-04-01T21:17:56.710' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (35, 242, 4, N'Manager', 1, CAST(N'2019-04-01T21:17:56.710' AS DateTime), 123, CAST(N'2019-04-01T21:17:56.710' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (36, 243, 1, N'Admin', 1, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (37, 243, 3, N'Access1', 1, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (38, 243, 2, N'Access2', 1, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (39, 243, 4, N'Manager', 1, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123, CAST(N'2019-04-01T21:20:08.990' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (40, 244, 1, N'Admin', 1, CAST(N'2019-04-01T21:20:22.997' AS DateTime), 123, CAST(N'2019-04-01T21:20:22.997' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (41, 244, 3, N'Access1', 1, CAST(N'2019-04-01T21:20:22.997' AS DateTime), 123, CAST(N'2019-04-01T21:20:22.997' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (42, 244, 2, N'Access2', 1, CAST(N'2019-04-01T21:20:22.997' AS DateTime), 123, CAST(N'2019-04-01T21:20:22.997' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (43, 245, 3, N'Access1', 1, CAST(N'2019-04-01T21:20:56.763' AS DateTime), 123, CAST(N'2019-04-01T21:20:56.763' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (44, 246, 1, N'Admin', 1, CAST(N'2019-04-01T21:21:26.823' AS DateTime), 123, CAST(N'2019-04-01T21:21:26.823' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (45, 248, 1, N'Admin', 1, CAST(N'2019-04-01T21:23:24.923' AS DateTime), 123, CAST(N'2019-04-01T21:23:24.923' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (46, 258, 1, N'Admin', 1, CAST(N'2019-04-01T21:36:05.727' AS DateTime), 123, CAST(N'2019-04-01T21:36:05.727' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (47, 258, 3, N'Access1', 1, CAST(N'2019-04-01T21:36:05.727' AS DateTime), 123, CAST(N'2019-04-01T21:36:05.727' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (48, 258, 4, N'Manager', 1, CAST(N'2019-04-01T21:36:05.727' AS DateTime), 123, CAST(N'2019-04-01T21:36:05.727' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (49, 259, 1, N'Admin', 1, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (50, 259, 3, N'Access1', 1, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (51, 259, 2, N'Access2', 1, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (52, 259, 4, N'Manager', 1, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123, CAST(N'2019-04-01T21:36:32.583' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (53, 260, 1, N'Admin', 1, CAST(N'2019-04-01T21:37:38.373' AS DateTime), 123, CAST(N'2019-04-01T21:37:38.373' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (54, 260, 3, N'Access1', 1, CAST(N'2019-04-01T21:37:38.373' AS DateTime), 123, CAST(N'2019-04-01T21:37:38.373' AS DateTime), 123)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [RoleName], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (55, 260, 4, N'Manager', 1, CAST(N'2019-04-01T21:37:38.373' AS DateTime), 123, CAST(N'2019-04-01T21:37:38.373' AS DateTime), 123)
GO
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
