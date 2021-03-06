USE [master]
GO
/****** Object:  Database [MMSDB]    Script Date: 10/16/2015 1:34:32 AM ******/
CREATE DATABASE [MMSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MMSDB', FILENAME = N'E:\BASIS _SEIP - Practice (.NET)\Complete Project ASP.NET\asp.net webform\MMSApp\DB\MMSDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MMSDB_log', FILENAME = N'E:\BASIS _SEIP - Practice (.NET)\Complete Project ASP.NET\asp.net webform\MMSApp\DB\MMSDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MMSDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MMSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MMSDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MMSDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MMSDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MMSDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [MMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MMSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MMSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MMSDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MMSDB]
GO
/****** Object:  Table [dbo].[tbl_BazaarLists]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BazaarLists](
	[bl_id] [int] IDENTITY(1,1) NOT NULL,
	[member_id] [int] NOT NULL,
	[bazaar_date] [date] NULL,
 CONSTRAINT [PK_tbl_BazaarLists] PRIMARY KEY CLUSTERED 
(
	[bl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Bazaars]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bazaars](
	[b_id] [int] IDENTITY(1,1) NOT NULL,
	[member_id] [int] NOT NULL,
	[bazaar_date] [datetime] NULL,
	[bazaar_amount] [int] NULL,
 CONSTRAINT [PK_tbl_Bazaars] PRIMARY KEY CLUSTERED 
(
	[b_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Meals]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Meals](
	[ml_id] [int] IDENTITY(1,1) NOT NULL,
	[member_id] [int] NOT NULL,
	[meal_date] [datetime] NULL,
	[meal_number] [float] NULL,
 CONSTRAINT [PK_tbl_Meals] PRIMARY KEY CLUSTERED 
(
	[ml_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Members]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Members](
	[m_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Members] PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Roles](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](100) NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contact_number] [varchar](50) NULL,
	[created_date] [varchar](50) NULL,
	[present_address] [varchar](100) NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[view_UserMember]    Script Date: 10/16/2015 1:34:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_UserMember]
as
select u.user_name,u.password,u.email,u.contact_number,r.role_name from tbl_Users as u
inner join tbl_Members as m
on m.user_id = u.u_id join tbl_Roles as r on u.role_id = r.r_id;
GO
SET IDENTITY_INSERT [dbo].[tbl_BazaarLists] ON 

INSERT [dbo].[tbl_BazaarLists] ([bl_id], [member_id], [bazaar_date]) VALUES (1, 1, CAST(0x8D3A0B00 AS Date))
INSERT [dbo].[tbl_BazaarLists] ([bl_id], [member_id], [bazaar_date]) VALUES (2, 1, CAST(0x8E3A0B00 AS Date))
INSERT [dbo].[tbl_BazaarLists] ([bl_id], [member_id], [bazaar_date]) VALUES (3, 1, CAST(0x8F3A0B00 AS Date))
INSERT [dbo].[tbl_BazaarLists] ([bl_id], [member_id], [bazaar_date]) VALUES (4, 2, CAST(0x903A0B00 AS Date))
INSERT [dbo].[tbl_BazaarLists] ([bl_id], [member_id], [bazaar_date]) VALUES (5, 2, CAST(0x913A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_BazaarLists] OFF
SET IDENTITY_INSERT [dbo].[tbl_Bazaars] ON 

INSERT [dbo].[tbl_Bazaars] ([b_id], [member_id], [bazaar_date], [bazaar_amount]) VALUES (1, 1, CAST(0x0000A53300000000 AS DateTime), 486)
INSERT [dbo].[tbl_Bazaars] ([b_id], [member_id], [bazaar_date], [bazaar_amount]) VALUES (2, 1, CAST(0x0000A53400000000 AS DateTime), 780)
INSERT [dbo].[tbl_Bazaars] ([b_id], [member_id], [bazaar_date], [bazaar_amount]) VALUES (3, 2, CAST(0x0000A53600000000 AS DateTime), 550)
INSERT [dbo].[tbl_Bazaars] ([b_id], [member_id], [bazaar_date], [bazaar_amount]) VALUES (1002, 2, CAST(0x0000A53700000000 AS DateTime), 874)
INSERT [dbo].[tbl_Bazaars] ([b_id], [member_id], [bazaar_date], [bazaar_amount]) VALUES (1003, 1, CAST(0x0000A53800000000 AS DateTime), 380)
SET IDENTITY_INSERT [dbo].[tbl_Bazaars] OFF
SET IDENTITY_INSERT [dbo].[tbl_Meals] ON 

INSERT [dbo].[tbl_Meals] ([ml_id], [member_id], [meal_date], [meal_number]) VALUES (1, 1, CAST(0x0000A53600000000 AS DateTime), 2.5)
INSERT [dbo].[tbl_Meals] ([ml_id], [member_id], [meal_date], [meal_number]) VALUES (2, 2, CAST(0x0000A53700000000 AS DateTime), 1.5)
INSERT [dbo].[tbl_Meals] ([ml_id], [member_id], [meal_date], [meal_number]) VALUES (3, 1, CAST(0x0000A53800000000 AS DateTime), 1.5)
INSERT [dbo].[tbl_Meals] ([ml_id], [member_id], [meal_date], [meal_number]) VALUES (4, 2, CAST(0x0000A53900000000 AS DateTime), 1)
INSERT [dbo].[tbl_Meals] ([ml_id], [member_id], [meal_date], [meal_number]) VALUES (5, 1, CAST(0x0000A53600000000 AS DateTime), 1)
INSERT [dbo].[tbl_Meals] ([ml_id], [member_id], [meal_date], [meal_number]) VALUES (6, 1, CAST(0x0000A53800000000 AS DateTime), 1.5)
SET IDENTITY_INSERT [dbo].[tbl_Meals] OFF
SET IDENTITY_INSERT [dbo].[tbl_Members] ON 

INSERT [dbo].[tbl_Members] ([m_id], [user_id]) VALUES (1, 1)
INSERT [dbo].[tbl_Members] ([m_id], [user_id]) VALUES (2, 2)
SET IDENTITY_INSERT [dbo].[tbl_Members] OFF
SET IDENTITY_INSERT [dbo].[tbl_Roles] ON 

INSERT [dbo].[tbl_Roles] ([r_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[tbl_Roles] ([r_id], [role_name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[tbl_Roles] OFF
SET IDENTITY_INSERT [dbo].[tbl_Users] ON 

INSERT [dbo].[tbl_Users] ([u_id], [full_name], [user_name], [password], [email], [contact_number], [created_date], [present_address], [role_id]) VALUES (1, N'Md. Abdur Rahim Milon', N'Milon', N'12410206', N'milon9152@gmail.com', N'01676457450', N'10/11/2015', N'Dhaka', 1)
INSERT [dbo].[tbl_Users] ([u_id], [full_name], [user_name], [password], [email], [contact_number], [created_date], [present_address], [role_id]) VALUES (2, N'Md. Omar Faruk', N'Faruk', N'12345', N'faruk@gmail.com', N'01812362303', N'10/11/2015', N'Dhaka', 2)
INSERT [dbo].[tbl_Users] ([u_id], [full_name], [user_name], [password], [email], [contact_number], [created_date], [present_address], [role_id]) VALUES (3, N'Md. Monirul Islam', N'Monir', N'12345', N'monir@gmail.com', N'01812362303', N'10/12/2015', N'Dhaka', 2)
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_Users]    Script Date: 10/16/2015 1:34:33 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_Users] ON [dbo].[tbl_Users]
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_Users_1]    Script Date: 10/16/2015 1:34:33 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_Users_1] ON [dbo].[tbl_Users]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_BazaarLists]  WITH CHECK ADD  CONSTRAINT [FK_tbl_BazaarLists_tbl_Members] FOREIGN KEY([member_id])
REFERENCES [dbo].[tbl_Members] ([m_id])
GO
ALTER TABLE [dbo].[tbl_BazaarLists] CHECK CONSTRAINT [FK_tbl_BazaarLists_tbl_Members]
GO
ALTER TABLE [dbo].[tbl_Bazaars]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bazaars_tbl_Members] FOREIGN KEY([member_id])
REFERENCES [dbo].[tbl_Members] ([m_id])
GO
ALTER TABLE [dbo].[tbl_Bazaars] CHECK CONSTRAINT [FK_tbl_Bazaars_tbl_Members]
GO
ALTER TABLE [dbo].[tbl_Meals]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Meals_tbl_Members] FOREIGN KEY([member_id])
REFERENCES [dbo].[tbl_Members] ([m_id])
GO
ALTER TABLE [dbo].[tbl_Meals] CHECK CONSTRAINT [FK_tbl_Meals_tbl_Members]
GO
ALTER TABLE [dbo].[tbl_Members]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Members_tbl_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[tbl_Users] ([u_id])
GO
ALTER TABLE [dbo].[tbl_Members] CHECK CONSTRAINT [FK_tbl_Members_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Users_tbl_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[tbl_Roles] ([r_id])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tbl_Users_tbl_Roles]
GO
USE [master]
GO
ALTER DATABASE [MMSDB] SET  READ_WRITE 
GO
