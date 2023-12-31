USE [Truck]
GO
/****** Object:  User [DESKTOP-5DS20QP\first]    Script Date: 2/22/2021 12:47:24 AM ******/
CREATE USER [DESKTOP-5DS20QP\first] FOR LOGIN [DESKTOP-5DS20QP\first] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DESKTOP-5DS20QP\Pierresystem]    Script Date: 2/22/2021 12:47:24 AM ******/
CREATE USER [DESKTOP-5DS20QP\Pierresystem] FOR LOGIN [DESKTOP-5DS20QP\Pierresystem] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT AUTHORITY\LOCAL SERVICE]    Script Date: 2/22/2021 12:47:24 AM ******/
CREATE USER [NT AUTHORITY\LOCAL SERVICE] FOR LOGIN [NT AUTHORITY\LOCAL SERVICE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT Service\MSSQLSERVER]    Script Date: 2/22/2021 12:47:24 AM ******/
CREATE USER [NT Service\MSSQLSERVER] FOR LOGIN [NT Service\MSSQLSERVER] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT SERVICE\ReportServer]    Script Date: 2/22/2021 12:47:24 AM ******/
CREATE USER [NT SERVICE\ReportServer] FOR LOGIN [NT SERVICE\ReportServer] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DESKTOP-5DS20QP\first]
GO
ALTER ROLE [db_owner] ADD MEMBER [DESKTOP-5DS20QP\Pierresystem]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DESKTOP-5DS20QP\Pierresystem]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DESKTOP-5DS20QP\Pierresystem]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DESKTOP-5DS20QP\Pierresystem]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[DriverID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_EmployeeID] [int] NOT NULL,
	[Date_Hire] [date] NOT NULL,
	[Commercial_Driver_License] [bit] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[DriverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Date_Of_Birth] [date] NOT NULL,
	[FirstName] [varchar](40) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[City] [varchar](200) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Zip] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HaulRecord]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HaulRecord](
	[HaulRecordID] [int] IDENTITY(1,1) NOT NULL,
	[Truck_Used] [varchar](20) NULL,
	[Client] [varchar](50) NULL,
	[Cargo_Type] [varchar](20) NULL,
	[Date_Sent] [date] NULL,
	[Date_Delivered] [date] NULL,
	[MileageCount] [int] NULL,
	[Haul_Notes] [varchar](1000) NULL,
	[TruckInfo_TruckInfoID] [int] NOT NULL,
 CONSTRAINT [PK_HaulRecord] PRIMARY KEY CLUSTERED 
(
	[HaulRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maintnance]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maintnance](
	[MaintnanceID] [int] IDENTITY(1,1) NOT NULL,
	[TruckInfo_TruckInfoID] [int] NOT NULL,
	[Maintnance_Start] [date] NULL,
	[Maintnance_End] [date] NULL,
	[Maintnance_Type] [varchar](20) NULL,
	[Maintnance_Code] [int] NULL,
 CONSTRAINT [PK_Maintnance] PRIMARY KEY CLUSTERED 
(
	[MaintnanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manifest]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manifest](
	[ManifestID] [int] IDENTITY(1,1) NOT NULL,
	[Truck_TruckID] [int] NOT NULL,
	[Item] [varchar](12) NULL,
	[Item_Description] [varchar](100) NULL,
	[Weight_Per_Unit] [int] NULL,
	[Quantity] [int] NULL,
	[HaulRecord_HaulRecordID] [int] NOT NULL,
 CONSTRAINT [PK_Manifest] PRIMARY KEY CLUSTERED 
(
	[ManifestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrailerInfo]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrailerInfo](
	[TrailerInfoID] [int] IDENTITY(1,1) NOT NULL,
	[Trailer_Type] [varchar](15) NULL,
	[Trailer_Capacity] [varchar](10) NULL,
	[Trailer_Mileage] [int] NULL,
	[Trailer_Description] [varchar](20) NULL,
	[TruckInfo_TruckInfoID] [int] NULL,
	[TotalMileage] [int] NULL,
 CONSTRAINT [PK_TrailerInfo] PRIMARY KEY CLUSTERED 
(
	[TrailerInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TruckInfo]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TruckInfo](
	[TruckInfoID] [int] IDENTITY(1,1) NOT NULL,
	[Driver_DriverID] [int] NOT NULL,
	[Truck_Type] [varchar](50) NULL,
	[Truck_Body_Type] [varchar](50) NULL,
	[Truck_Description] [varchar](100) NULL,
	[Truck_Engine_Type] [varchar](50) NULL,
	[Truck_Fuel_Type] [varchar](20) NULL,
	[Truck_Mileage] [int] NULL,
	[Truck_Condition] [varchar](20) NULL,
 CONSTRAINT [PK_TruckInfo] PRIMARY KEY CLUSTERED 
(
	[TruckInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Driver] ON 

INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (1, 1, CAST(N'1970-01-12' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (2, 2, CAST(N'1986-01-12' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (3, 3, CAST(N'1989-10-24' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (4, 4, CAST(N'1990-02-24' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (5, 5, CAST(N'1996-03-29' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (6, 6, CAST(N'1997-04-19' AS Date), 0)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (7, 7, CAST(N'1998-03-10' AS Date), 0)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (8, 8, CAST(N'1968-08-20' AS Date), 0)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (9, 9, CAST(N'1998-07-18' AS Date), 0)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (10, 10, CAST(N'1998-08-18' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (11, 11, CAST(N'2000-08-19' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (12, 11, CAST(N'2000-09-19' AS Date), 1)
INSERT [dbo].[Driver] ([DriverID], [Employee_EmployeeID], [Date_Hire], [Commercial_Driver_License]) VALUES (13, 11, CAST(N'2001-09-20' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Driver] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (1, CAST(N'1961-01-12' AS Date), N'Bery', N'Pery', N'32 Kilibu', N'Carrying', N'Texas', 78372)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (2, CAST(N'1968-01-12' AS Date), N'Mark', N'Yolly', N'21 Orriy st', N'Austin', N'Texas', 72342)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (3, CAST(N'1967-08-15' AS Date), N'Paul', N'Son', N'43 Lorr st', N'Prody', N'Alabama', 45543)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (4, CAST(N'1970-09-19' AS Date), N'John', N'Well', N'123 Ring st', N'Peole', N'Florida', 33299)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (5, CAST(N'1990-03-17' AS Date), N'Redy', N'Orrington', N'233 Stirre st', N'Errie', N'Pennsylvania', 19132)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (6, CAST(N'1995-04-11' AS Date), N'Mody', N'Litting', N'575 Garvy st', N'Allen Town', N'Pennsylvania', 19132)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (7, CAST(N'2000-07-12' AS Date), N'Patrick', N'Moran', N'675 Offery st', N'MorisTown', N'New York', 10234)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (8, CAST(N'2001-03-18' AS Date), N'Rick', N'Roger', N'532 Offery ave', N'Pokisvillage', N'Oregon', 34534)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (9, CAST(N'1998-05-21' AS Date), N'Ehryin', N'Lopiny', N'643 Sprusu st', N'Voltu Township', N'Minissota', 67132)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (10, CAST(N'1999-06-21' AS Date), N'Loe', N'Diooyn', N'143 Sprusu st', N'Voltu Township', N'Minissota', 67132)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (11, CAST(N'2000-07-31' AS Date), N'Loranc', N'Deo', N'678 Lex st', N'Mark Township', N'Origon', 34332)
INSERT [dbo].[Employee] ([EmployeeID], [Date_Of_Birth], [FirstName], [LastName], [Address], [City], [State], [Zip]) VALUES (12, CAST(N'2001-08-21' AS Date), N'Luc', N'Polo', N'53 Lex st', N'Mark Township', N'Origon', 34332)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[HaulRecord] ON 

INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (1, N'PETERBILT', N'Walmart', N'Food', CAST(N'2013-02-23' AS Date), CAST(N'2013-02-27' AS Date), 300, N'Successfull delivery', 1)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (2, N'Ford', N'Sears', N'Washer', CAST(N'2014-03-23' AS Date), CAST(N'2014-04-29' AS Date), 300, N'Successfull delivery', 2)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (3, N'Marc', N'Burlington', N'Clothes', CAST(N'2014-05-23' AS Date), CAST(N'2014-05-29' AS Date), 300, N'delayed delivery', 3)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (4, N'GMC', N'Wawa', N'Juice', CAST(N'2015-06-13' AS Date), CAST(N'2015-06-15' AS Date), 400, N'Late', 4)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (5, N'IZUZU', N'PepBoys', N'Tire', CAST(N'2016-08-19' AS Date), CAST(N'2016-08-20' AS Date), 700, N'On Time', 5)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (6, N'Toyota', N'Acme', N'Steering', CAST(N'2005-05-17' AS Date), CAST(N'2005-05-20' AS Date), 11530, N'Waiting on Vendor', 6)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (7, N'Mazda', N'AppleBe', N'Electrical', CAST(N'2006-07-17' AS Date), CAST(N'2006-07-20' AS Date), 67530, N'Trailor repair', 7)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (8, N'Marc', N'Restorant Goods', N'Restorant food', CAST(N'2009-08-27' AS Date), CAST(N'2009-08-29' AS Date), 54332, N'Battery', 8)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (9, N'Marc', N'Polo', N'Gas Tank', CAST(N'2006-06-11' AS Date), CAST(N'2006-06-12' AS Date), 3434, N'Repaired', 9)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (10, N'Moric', N'Paula', N'AC Tank', CAST(N'2007-06-11' AS Date), CAST(N'2006-06-13' AS Date), 33434, N'Repaired', 10)
INSERT [dbo].[HaulRecord] ([HaulRecordID], [Truck_Used], [Client], [Cargo_Type], [Date_Sent], [Date_Delivered], [MileageCount], [Haul_Notes], [TruckInfo_TruckInfoID]) VALUES (11, N'Judge', N'Rex', N'BoxRock', CAST(N'2007-07-12' AS Date), CAST(N'2007-07-12' AS Date), 8834, N'Repaired', 11)
SET IDENTITY_INSERT [dbo].[HaulRecord] OFF
SET IDENTITY_INSERT [dbo].[Maintnance] ON 

INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (1, 1, CAST(N'2019-12-09' AS Date), CAST(N'2019-12-12' AS Date), N'Replace Tire', 201)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (2, 2, CAST(N'2020-01-20' AS Date), CAST(N'2018-11-12' AS Date), N'Replace Engine', 202)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (3, 3, CAST(N'2018-11-20' AS Date), CAST(N'2018-11-25' AS Date), N'Replace Oil', 203)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (4, 4, CAST(N'2017-08-20' AS Date), CAST(N'2017-08-25' AS Date), N'Replace Filter', 214)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (5, 5, CAST(N'2011-02-21' AS Date), CAST(N'2011-02-21' AS Date), N'Replace Fuel Tank', 216)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (6, 6, CAST(N'2007-06-11' AS Date), CAST(N'2007-06-15' AS Date), N'Replace Break', 346)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (7, 7, CAST(N'2008-07-20' AS Date), CAST(N'2008-07-21' AS Date), N'Replace Break', 146)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (8, 8, CAST(N'2008-07-20' AS Date), CAST(N'2008-07-21' AS Date), N'Replace Break', 146)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (9, 9, CAST(N'2008-01-19' AS Date), CAST(N'2008-01-20' AS Date), N'Replace Break', 656)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (10, 10, CAST(N'2009-02-28' AS Date), CAST(N'2009-03-02' AS Date), N'Replace Miror', 334)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (11, 10, CAST(N'2009-11-19' AS Date), CAST(N'2009-11-20' AS Date), N'Replace Mirror', 116)
INSERT [dbo].[Maintnance] ([MaintnanceID], [TruckInfo_TruckInfoID], [Maintnance_Start], [Maintnance_End], [Maintnance_Type], [Maintnance_Code]) VALUES (12, 11, CAST(N'2010-12-20' AS Date), CAST(N'2010-12-20' AS Date), N'Replace Fuel', 123)
SET IDENTITY_INSERT [dbo].[Maintnance] OFF
SET IDENTITY_INSERT [dbo].[Manifest] ON 

INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (1, 1, N'Train Part', N'Train Engine', 800, 1, 1)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (2, 2, N'Sement', N'Sement Bags', 500, 2, 2)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (3, 3, N'Food', N'Potato', 1000, 3, 3)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (4, 4, N'Water', N'Spring', 2000, 4, 4)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (5, 5, N'Concrete', N'Gravel', 12000, 5, 5)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (6, 6, N'Flour', N'Pizza', 900, 6, 6)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (7, 7, N'Fruit', N'Salad', 500, 7, 7)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (9, 9, N'Bird', N'Duck', 300, 9, 9)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (10, 10, N'Bird', N'Chicken', 435, 10, 10)
INSERT [dbo].[Manifest] ([ManifestID], [Truck_TruckID], [Item], [Item_Description], [Weight_Per_Unit], [Quantity], [HaulRecord_HaulRecordID]) VALUES (11, 10, N'Live Animal', N'Beef', 12300, 10, 10)
SET IDENTITY_INSERT [dbo].[Manifest] OFF
SET IDENTITY_INSERT [dbo].[TrailerInfo] ON 

INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (1, N'Auto Pull', N'10 tones', 100000, N'Long Flatbed', 1, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (2, N'Manual Attached', N'5 tones', 40000, N'Short Haul', 2, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (3, N'Trailor', N'20 tones', 49000, N'Long Haul', 3, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (4, N'Feeder', N'20 tones', 12000, N'Regular Haul', 4, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (5, N'Dumpster', N'50 tones', 12000, N'Regular Haul', 5, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (6, N'Feeder', N'12 tones', 12670, N'Regular Haul', 6, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (7, N'Box Trailor', N'9 tones', 43455, N'Auto Connect Haul', 7, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (9, N'Feeder', N'12 tones', 12670, N'Regular Haul', 9, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (10, N'Feeder', N'12 tones', 12670, N'Regular Haul', 10, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (11, N'Trailer', N'22 tones', 343, N'Lard Haul', 10, NULL)
INSERT [dbo].[TrailerInfo] ([TrailerInfoID], [Trailer_Type], [Trailer_Capacity], [Trailer_Mileage], [Trailer_Description], [TruckInfo_TruckInfoID], [TotalMileage]) VALUES (12, N'Trailer', N'20 tones', 421, N'Lard Haul', 11, NULL)
SET IDENTITY_INSERT [dbo].[TrailerInfo] OFF
SET IDENTITY_INSERT [dbo].[TruckInfo] ON 

INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (1, 1, N'Heavy Duty', N'FlatBed', N'18 Wheeler', N'12 Speed', N'Gasoline', 150000, N'Excelent')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (2, 2, N'Light Duty', N'Short FlatBed', N'10 Wheeler', N'8 Speed', N'Desiel', 1000, N'Good')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (3, 3, N'Medium Weight', N'Trailor', N'10 feet long', N'9 Speed', N'Gasozine', 11000, N'Fair')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (4, 4, N'Dump Truck', N'Tractor', N'Short Dumpster', N'8 Speed', N'Diesel', 6000, N'Old')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (5, 5, N'Semi-Trailer', N'Panel', N'Long Trailor', N'12 Speed', N'Gasonine', 76000, N'New')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (6, 6, N'Short Feeder', N'Seramo', N'Short Trailor', N'8 Speed', N'Diesel', 164000, N'Fair')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (7, 7, N'Caro-Feeder', N'Class C', N'Long Trailor', N'15 Speed', N'Diesel', 234000, N'New')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (8, 8, N'Caro-Feeder', N'Class C', N'Long Trailor', N'15 Speed', N'Diesel', 234000, N'New')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (9, 9, N'Max Feeder', N'Longated', N'Extra Long Trailor', N'12 Speed', N'Gasoline', 19000, N'Good')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (10, 10, N'Max Feeder', N'Longated', N'Extra Long Trailor', N'15 Speed', N'Gasoline', 12300, N'Good')
INSERT [dbo].[TruckInfo] ([TruckInfoID], [Driver_DriverID], [Truck_Type], [Truck_Body_Type], [Truck_Description], [Truck_Engine_Type], [Truck_Fuel_Type], [Truck_Mileage], [Truck_Condition]) VALUES (11, 10, N'ALL Feeder', N'Longated', N'Long Trailor', N'22 Speed', N'Desiel', 19000, N'New')
SET IDENTITY_INSERT [dbo].[TruckInfo] OFF
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Employee] FOREIGN KEY([Employee_EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Employee]
GO
ALTER TABLE [dbo].[HaulRecord]  WITH CHECK ADD  CONSTRAINT [FK_HaulRecord_TruckInfo] FOREIGN KEY([TruckInfo_TruckInfoID])
REFERENCES [dbo].[TruckInfo] ([TruckInfoID])
GO
ALTER TABLE [dbo].[HaulRecord] CHECK CONSTRAINT [FK_HaulRecord_TruckInfo]
GO
ALTER TABLE [dbo].[Maintnance]  WITH CHECK ADD  CONSTRAINT [FK_Maintnance_TruckInfo1] FOREIGN KEY([TruckInfo_TruckInfoID])
REFERENCES [dbo].[TruckInfo] ([TruckInfoID])
GO
ALTER TABLE [dbo].[Maintnance] CHECK CONSTRAINT [FK_Maintnance_TruckInfo1]
GO
ALTER TABLE [dbo].[Manifest]  WITH CHECK ADD  CONSTRAINT [FK_Manifest_HaulRecord] FOREIGN KEY([HaulRecord_HaulRecordID])
REFERENCES [dbo].[HaulRecord] ([HaulRecordID])
GO
ALTER TABLE [dbo].[Manifest] CHECK CONSTRAINT [FK_Manifest_HaulRecord]
GO
ALTER TABLE [dbo].[TrailerInfo]  WITH CHECK ADD  CONSTRAINT [FK_TrailerInfo_TruckInfo] FOREIGN KEY([TruckInfo_TruckInfoID])
REFERENCES [dbo].[TruckInfo] ([TruckInfoID])
GO
ALTER TABLE [dbo].[TrailerInfo] CHECK CONSTRAINT [FK_TrailerInfo_TruckInfo]
GO
ALTER TABLE [dbo].[TruckInfo]  WITH CHECK ADD  CONSTRAINT [FK_TruckInfo_Driver] FOREIGN KEY([Driver_DriverID])
REFERENCES [dbo].[Driver] ([DriverID])
GO
ALTER TABLE [dbo].[TruckInfo] CHECK CONSTRAINT [FK_TruckInfo_Driver]
GO
/****** Object:  StoredProcedure [dbo].[DriverRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DriverRecord10]
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)
AS
BEGIN
SET NOCOUNT ON
--**************************************  INSERT INTO DRIVER **************************************
BEGIN TRANSACTION;
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			VALUES(@DriverID, @Employee_EmployeeID, @Date_Hire, @Commercial_Driver_License);

COMMIT TRANSACTION;
SET NOCOUNT OFF;
END;
GO
/****** Object:  StoredProcedure [dbo].[DriverSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DriverSTP]
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)
AS
BEGIN

SELECT DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License
FROM Driver  

END;

GO
/****** Object:  StoredProcedure [dbo].[EmployeeHaulReport]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeHaulReport]
(
@EmployeeID INT,
@FirstName VARCHAR(40), 
@LastName VARCHAR(40),
@Date_Hire DATE,
@Commercial_Driver_License BIT,
@Truck_Used VARCHAR(20),
@Client VARCHAR(40),
@Date_Delivered DATE,
@Date_Sent DATE 
)
AS
BEGIN

SELECT C.FirstName, C.LastName AS Employees, D.Date_Hire, D.Commercial_Driver_License, H.Truck_Used, H.Client, H.Date_Delivered,
		H.Date_Sent, SUM(H.MileageCount) AS "Total Mileage"
FROM Employee AS C
JOIN Driver AS D
ON C.EmployeeID = D.Employee_EmployeeID
JOIN HaulRecord AS H 
ON H.HaulRecordID = H.TruckInfo_TruckInfoID
WHERE EmployeeID =@EmployeeID
GROUP BY C.FirstName, C.LastName, D.Date_Hire, D.Commercial_Driver_License, H.Truck_Used, H.Client, H.Date_Delivered,
		H.Date_Sent

END

GO
/****** Object:  StoredProcedure [dbo].[EmployeeRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeRecord10]
(
@EmployeeID INT,
@Date_Of_Birth DATE,
@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@Address VARCHAR(200),
@City VARCHAR(200),
@State VARCHAR(50),
@Zip INT
)
AS
BEGIN
--**************************************  INSERT INTO EMPLOYEE **************************************
BEGIN TRANSACTION;
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip) 
			VALUES(@EmployeeID, @Date_Of_Birth, @FirstName, @LastName, @Address, @City, @State, @Zip);

COMMIT TRANSACTION;
END;

GO
/****** Object:  StoredProcedure [dbo].[EmployeeReport]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeReport]
(
@EmployeeID INT,
@Date_Of_Birth DATE,
@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@Address VARCHAR(200),
@City VARCHAR(200),
@State VARCHAR(50),
@Zip INT
)
AS
--BEGIN
--**************************************  INSERT INTO EMPLOYEE **************************************
BEGIN TRANSACTION;
SELECT @EmployeeID, @Date_Of_Birth, @FirstName, @LastName, @Address, @City, @State, @Zip
FROM dbo.Employee
WHERE EmployeeID= @EmployeeID

--COMMIT TRANSACTION;
--END;

--			VALUES(@EmployeeID, @Date_Of_Birth, @FirstName, @LastName, @Address, @City, @State, @Zip);
-- EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip


GO
/****** Object:  StoredProcedure [dbo].[EmployeeSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EmployeeSTP]
(
@EmployeeID INT,
@Date_Of_Birth DATE,
@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@Address VARCHAR(200),
@City VARCHAR(200),
@State VARCHAR(50),
@Zip INT
)
AS
BEGIN

SELECT EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip
FROM Employee

END;

GO
/****** Object:  StoredProcedure [dbo].[HaulRecordRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HaulRecordRecord10]
(
@HaulRecordID INT,
@Truck_Used VARCHAR(20),
@Client VARCHAR(50),
@Cargo_Type VARCHAR(20),
@Date_Sent DATE,
@Date_Delivered DATE,
@MileageCount INT,
@Haul_Notes VARCHAR(1000),
@TruckInfo_TruckInfoID INT
)
AS
BEGIN
--**************************************  HaulRecord INTO DRIVER **************************************
BEGIN TRANSACTION;
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
		VALUES(@HaulRecordID, @Truck_Used, @Client, @Cargo_Type, @Date_Sent, @Date_Delivered, @MileageCount, 
			@Haul_Notes, @TruckInfo_TruckInfoID);			
COMMIT TRANSACTION;
END;
GO
/****** Object:  StoredProcedure [dbo].[HaulRecordSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--************************************** HaulRecordSTP STORED PROCEDURE**************************************
CREATE PROCEDURE [dbo].[HaulRecordSTP]
(
@HaulRecordID INT,
@Truck_Used VARCHAR(20),
@Client VARCHAR(50),
@Cargo_Type VARCHAR(20),
@Date_Sent DATE,
@Date_Delivered DATE,
@MileageCount INT,
@Haul_Notes VARCHAR(1000),
@TruckInfo_TruckInfoID INT
)
AS
BEGIN
SELECT HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID
FROM HaulRecord
END;

GO
/****** Object:  StoredProcedure [dbo].[HaulReport1]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HaulReport1]
(
@HaulRecordID INT,
@Truck_Used VARCHAR(20),
@Client VARCHAR(50),
@Cargo_Type VARCHAR(20),
@Date_Sent DATE,
@Date_Delivered DATE,
@MileageCount INT,
@Haul_Notes VARCHAR(1000),
@TruckInfo_TruckInfoID INT
)
AS
BEGIN
--**************************************  HaulRecord INTO DRIVER **************************************
BEGIN TRANSACTION;
SELECT @HaulRecordID, @Truck_Used, @Client, @Cargo_Type, @Date_Sent, @Date_Delivered, @MileageCount, 
			@Haul_Notes, @TruckInfo_TruckInfoID
FROM HaulRecord;

END

GO
/****** Object:  StoredProcedure [dbo].[MaintnanceRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MaintnanceRecord10]
(
@MaintnanceID INT,
@TruckInfo_TruckInfoID INT,
@Maintnance_Start DATE,
@Maintnance_End DATE,
@Maintnance_Type VARCHAR(20),
@Maintnance_Code INT
)
AS
BEGIN
--**************************************  INSERT INTO Maintnance **************************************
BEGIN TRANSACTION;
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
	Values(@MaintnanceID, @TruckInfo_TruckInfoID, @Maintnance_Start, @Maintnance_End, @Maintnance_Type, @Maintnance_Code)
	
COMMIT TRANSACTION;
END;
GO
/****** Object:  StoredProcedure [dbo].[MaintnanceSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MaintnanceSTP]
(
@MaintnanceID INT,
@TruckInfo_TruckInfoID INT,
@Maintnance_Start DATE,
@Maintnance_End DATE,
@Maintnance_Type VARCHAR(20),
@Maintnance_Code INT
)
AS 
BEGIN
SELECT MaintnanceID, TruckInfo_TruckInfoID, Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code
FROM Maintnance

END

GO
/****** Object:  StoredProcedure [dbo].[ManifestfoRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ManifestfoRecord10]
(
@ManifestID INT,
@Truck_TruckID INT,
@Item VARCHAR(12),
@Item_Description VARCHAR(100),
@Weight_Per_Unit INT,
@Quantity INT,
@HaulRecord_HaulRecordID INT
)
AS
BEGIN
--**************************************  INSERT INTO Manifest **************************************
BEGIN TRANSACTION;
INSERT INTO Manifest(ManifestID, Truck_TruckID, Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
		VALUES(@ManifestID, @Truck_TruckID, @Item, @Item_Description, @Weight_Per_Unit, @Quantity, @HaulRecord_HaulRecordID);			
COMMIT TRANSACTION;
END;
GO
/****** Object:  StoredProcedure [dbo].[ManifestSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ManifestSTP]
(
@ManifestID INT,
@Truck_TruckID INT,
@Item VARCHAR(12),
@Item_Description VARCHAR(100),
@Weight_Per_Unit INT,
@Quantity INT,
@HaulRecord_HaulRecordID INT
)
AS 
BEGIN
SELECT ManifestID, Truck_TruckID, Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID
FROM Manifest

END

GO
/****** Object:  StoredProcedure [dbo].[Report1]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report1]
(
@EmployeeID INT,
@Date_Of_Birth DATE,
@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@Address VARCHAR(200),
@City VARCHAR(200),
@State VARCHAR(50),
@Zip INT
)
AS
BEGIN
--**************************************  INSERT INTO EMPLOYEE **************************************
BEGIN TRANSACTION;
SELECT EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip
FROM dbo.Employee;
--			VALUES(@EmployeeID, @Date_Of_Birth, @FirstName, @LastName, @Address, @City, @State, @Zip);

COMMIT TRANSACTION;
END;

GO
/****** Object:  StoredProcedure [dbo].[Report2]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report2]
AS
BEGIN
SET NOCOUNT ON;
SELECT EmployeeID,
		Date_Of_Birth ,
		FirstName,
		LastName,
		Address,
		City,
		State,
		Zip 
FROM Employee

END;

GO
/****** Object:  StoredProcedure [dbo].[TrailerInfoRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TrailerInfoRecord10]
(
@TrailerInfoID INT,
@Trailer_Type VARCHAR(15),
@Trailer_Capacity VARCHAR(10),
@Trailer_Mileage INT,
@Trailer_Description VARCHAR(20),
@TruckInfo_TruckInfoID INT
)
AS
BEGIN
--**************************************  INSERT INTO TrailerInfo **************************************
BEGIN TRANSACTION;
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
	VALUES(@TrailerInfoID, @Trailer_Type, @Trailer_Capacity, @Trailer_Mileage, @Trailer_Description, 
			@TruckInfo_TruckInfoID)	
					
COMMIT TRANSACTION;
END;
GO
/****** Object:  StoredProcedure [dbo].[TrailerInfoSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TrailerInfoSTP]
(
@TrailerInfoID INT,
@Trailer_Type VARCHAR(15),
@Trailer_Capacity VARCHAR(10),
@Trailer_Mileage INT,
@Trailer_Description VARCHAR(20),
@TruckInfo_TruckInfoID INT
)
AS 
BEGIN
SELECT TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID
FROM TrailerInfo

END

GO
/****** Object:  StoredProcedure [dbo].[TruckInfoRecord10]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TruckInfoRecord10]
(
@TruckInfoID INT,
@Driver_DriverID INT,
@Truck_Type VARCHAR(50),
@Truck_Body_Type VARCHAR(50),
@Truck_Description VARCHAR(100),
@Truck_Engine_Type VARCHAR(50),
@Truck_Fuel_Type VARCHAR(20),
@Truck_Mileage INT,
@Truck_Condition VARCHAR(20)
)
AS
BEGIN
--**************************************  INSERT INTO TruckInfo **************************************
BEGIN TRANSACTION;
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
	VALUES(@TruckInfoID, @Driver_DriverID, @Truck_Type, @Truck_Body_Type, @Truck_Description, @Truck_Engine_Type, @Truck_Fuel_Type, 
			@Truck_Mileage, @Truck_Condition)
					
COMMIT TRANSACTION;
END;
GO
/****** Object:  StoredProcedure [dbo].[TruckInfoSTP]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TruckInfoSTP]
(
--@TruckInfoID INT,
--@Driver_DriverID INT,
@Truck_Type VARCHAR(50),
@Truck_Body_Type VARCHAR(50),
@Truck_Description VARCHAR(100),
@Truck_Engine_Type VARCHAR(50),
@Truck_Fuel_Type VARCHAR(20),
@Truck_Mileage INT,
@Truck_Condition VARCHAR(20)
)
AS
BEGIN
--**************************************  Select TruckInfo **************************************
SELECT TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition
FROM TruckInfo

END

GO
/****** Object:  StoredProcedure [dbo].[TruckInfoSTP2]    Script Date: 2/22/2021 12:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TruckInfoSTP2]
(
@TruckInfoID INT,
@Driver_DriverID INT,
@Truck_Type VARCHAR(50),
@Truck_Body_Type VARCHAR(50),
@Truck_Description VARCHAR(100),
@Truck_Engine_Type VARCHAR(50),
@Truck_Fuel_Type VARCHAR(20),
@Truck_Mileage INT,
@Truck_Condition VARCHAR(20)
)
AS
BEGIN
--**************************************  Select TruckInfo **************************************
SELECT TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition
FROM TruckInfo

END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Driver to Employee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'CONSTRAINT',@level2name=N'FK_Driver_Employee'
GO
