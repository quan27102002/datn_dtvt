
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KhoaHoc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KhoaHoc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KhoaHoc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KhoaHoc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KhoaHoc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KhoaHoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KhoaHoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KhoaHoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KhoaHoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KhoaHoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KhoaHoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KhoaHoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KhoaHoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KhoaHoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KhoaHoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KhoaHoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KhoaHoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KhoaHoc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KhoaHoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KhoaHoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KhoaHoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KhoaHoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KhoaHoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KhoaHoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KhoaHoc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KhoaHoc] SET  MULTI_USER 
GO
ALTER DATABASE [KhoaHoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KhoaHoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KhoaHoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KhoaHoc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KhoaHoc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KhoaHoc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KhoaHoc] SET QUERY_STORE = OFF
GO
USE [KhoaHoc]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_Password] [nvarchar](max) NOT NULL,
	[tps_Number] [nvarchar](20) NULL,
	[tps_Date] [date] NOT NULL,
	[tps_Photo] [nvarchar](max) NOT NULL,
	[tps_Active] [bit] NULL,
	[tps_activation_token] [nvarchar](max) NULL,
	[tps_reset_token] [nvarchar](max) NULL,
	[tps_Fullname] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[tps_Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authority]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authority](
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_RoleId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_authority] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
	[tps_Name] [nvarchar](100) NULL,
	[tps_Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_categoryy] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter](
	[tps_id] [int] IDENTITY(1,1) NOT NULL,
	[tps_title] [nvarchar](max) NOT NULL,
	[tps_idCourse] [int] NOT NULL,
 CONSTRAINT [PK_chapter] PRIMARY KEY CLUSTERED
(
	[tps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
	[tps_title] [nvarchar](max) NOT NULL,
	[tps_LinkYTB] [nvarchar](max) NOT NULL,
	[tps_idChapter] [int] NOT NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[tps_Id] [int] IDENTITY(2849,1) NOT NULL,
	[tps_Name] [nvarchar](100) NOT NULL,
	[tps_Image] [nvarchar](max) NOT NULL,
	[tps_discount] [float] NOT NULL,
	[tps_Price] [float] NOT NULL,
	[tps_Information] [nvarchar](max) NOT NULL,
	[learn] [nvarchar](max) NOT NULL,
	[tps_Date] [date] NOT NULL,
	[tps_Status] [bit] NOT NULL,
	[tps_CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCode]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCode](
	[CourseId] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_CourseCode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[error]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[error](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](max) NOT NULL,
	[account_id] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favoriteCrouse]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favoriteCrouse](
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_CrouseId] [int] NOT NULL,
	[tps_Date] [date] NOT NULL,
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_favoriteCrouse] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[neworder]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[neworder](
	[tps_id] [int] IDENTITY(1,1) NOT NULL,
	[tps_username] [nvarchar](50) NOT NULL,
	[tps_courseid] [int] NOT NULL,
	[tps_date] [date] NOT NULL,
	[tps_statusCode] [nvarchar](12) NOT NULL,
	[pay] [nvarchar](20) NULL,
 CONSTRAINT [PK_neworder] PRIMARY KEY CLUSTERED 
(
	[tps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[tps_id] [int] IDENTITY(1,1) NOT NULL,
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_Message] [nvarchar](max) NOT NULL,
	[tps_Read] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bankcode] [nvarchar](max) NULL,
	[createdate] [nvarchar](max) NULL,
	[currCode] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[amount] [int] NULL,
	[txnref] [nvarchar](max) NULL,
	[course_id] [int] NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quizquestion]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quizquestion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](max) NULL,
	[optionA] [nvarchar](max) NULL,
	[optionB] [nvarchar](max) NULL,
	[optionC] [nvarchar](max) NULL,
	[optionD] [nvarchar](max) NULL,
	[correctOption] [char](7) NULL,
	[quiz_id] [int] NULL,
 CONSTRAINT [PK_QuizQuestion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quizresult]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quizresult](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](50) NULL,
	[quiz_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[user_answer] [nchar](10) NOT NULL,
	[score] [nchar](10) NOT NULL,
	[correct] [bit] NOT NULL,
 CONSTRAINT [PK_QuizResult] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[tps_Id] [nvarchar](20) NOT NULL,
	[tps_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionEntity]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionEntity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transactionno] [nvarchar](max) NULL,
	[transactionstatus] [nvarchar](max) NULL,
	[banktranno] [nvarchar](max) NULL,
	[txnref] [nvarchar](max) NULL,
	[amount] [nvarchar](max) NULL,
	[id_payment] [int] NOT NULL,
 CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserContent]    Script Date: 4/18/2023 2:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserContent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_content] [nvarchar](50) NULL,
	[content_id] [int] NULL,
	[completed] [bit] NOT NULL,
	[course_id] [int] NOT NULL,
	[time] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserContent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'hienncpc01529@fpt.edu.vn', N'hienncpc01529', NULL, CAST(N'2023-04-17' AS Date), N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788065/photo/logo_oqagna.jpg', 1, NULL, NULL, N'Nguyễn Chí Hiện')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'Hoanghuuphuc8@gmail.com', N'Phucga123@@', NULL, CAST(N'2023-02-13' AS Date), N'1.jpg', 1, NULL, NULL, N'')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'huuphucthuctap@gmail.com', N'Phucga123', NULL, CAST(N'2023-02-13' AS Date), N'1.jpg', 1, N'68645946-a6a6-4e12-9383-26b4bf0e6af2:1676270026258', NULL, N'')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'huuphucthuctap1@gmail.com', N'Phucga123', NULL, CAST(N'2023-03-05' AS Date), N'logo.jpg', 1, N'a15752d5-a833-4600-b0e1-ee940ecded1e:1678021456783', NULL, N'')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'minhjrt@gmail.COM', N'Phucga123', NULL, CAST(N'2023-03-12' AS Date), N'acddc6fe-9810-419f-8724-b67ede85c1d8-zalo_last_screenshot.png', 1, NULL, NULL, N'phuc ')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'phuc@gmail.com', N'Phucga123', NULL, CAST(N'2023-03-05' AS Date), N'logo.jpg', 1, N'539f53ed-1431-4d64-bdb7-58b8b6cb167e:1678021581195', NULL, N'')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'phucga123', N'123', N'0346732847', CAST(N'2022-12-12' AS Date), N'0d0cf30f-c0f1-42b9-9942-ea55784fd178-z3486127811547_4f811a7db62e5ee0203fbcb75ceafee7.jpg', 1, NULL, NULL, NULL)
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'phuclhhpc02265@fpt.edu.vn', N'Phucga123', NULL, CAST(N'2023-03-17' AS Date), N'http://res.cloudinary.com/djfbh9dqg/image/upload/v1679062357/photo/jowppevjazqw0uinuoad.jpg', 1, NULL, NULL, N'hoang huu phuc')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'phucpc02265', N'Phucga123', N'0346732847', CAST(N'2022-12-07' AS Date), N'http://res.cloudinary.com/djfbh9dqg/image/upload/v1681570845/photo/nwmf3s8zxzvxisiu0e9z.png', 1, NULL, NULL, N'Lương Hoàng Hữu Phúc')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'sa', N'123', NULL, CAST(N'2023-03-11' AS Date), N'logo.jpg', 1, N'd53dda94-8b58-4721-8294-509ec0486c20:1678471065560', NULL, NULL)
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'trine', N'1123', NULL, CAST(N'2023-03-19' AS Date), N'http://res.cloudinary.com/djfbh9dqg/image/upload/v1679224443/photo/y4w2g48teyiycq5bglxq.jpg', 1, NULL, NULL, N'tri thanh')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'trintpc02045@fpt.edu.vn', N'Triyeunha', NULL, CAST(N'2023-02-11' AS Date), N'1.jpg', 1, NULL, N'485f9316-e7d5-4c89-a4da-eb0ea2e5a998:1677352691650', NULL)
GO
SET IDENTITY_INSERT [dbo].[authority] ON 

INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (2, N'phucpc02265', N'Admin')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (9, N'huuphucthuctap@gmail.com', N'Admin')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (11, N'huuphucthuctap1@gmail.com', N'Admin')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (12, N'phuc@gmail.com', N'Admin')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (14, N'sa', N'User')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (15, N'minhjrt@gmail.COM', N'User')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (16, N'hienncpc01529@fpt.edu.vn', N'Admin')
SET IDENTITY_INSERT [dbo].[authority] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (1, N'FrontEnd', N'http://res.cloudinary.com/djfbh9dqg/image/upload/v1679230849/photo/xbvfz4dg211n74yue0fy.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (2, N'BackEnd', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788061/photo/backend_wagwq1.png')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[chapter] ON 

INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (5, N'Chương 1:Giới Thiệu', 2850)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (6, N'Chương 2:Ôn tập ES6', 2850)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (7, N'Chương 3:React,ReactDOM', 2850)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (8, N'Chương 1:Cơ bản về NodeJS', 2851)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (9, N'Chương 2: Xử lý bất đồng bộ trong NodeJS', 2851)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (11, N'Chương 3:NodeJS và các cơ sở dữ liệu', 2851)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (13, N'Chương 1:Cơ bản về Python', 2853)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (14, N'Chương 2:Cấu trúc điều khiển và hàm trong Python', 2853)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (16, N'Chương 3:Các ứng dụng của Python', 2853)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (17, N'Chương 1: Giới thiệu về HTML', 2855)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (18, N'Chương 2: Giới thiệu về CSS', 2855)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (19, N'Chương 3: Tiên tiến hơn về HTML và CSS', 2855)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (20, N'Chương 1: Giới thiệu về JavaScript', 2858)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (21, N'Chương 2: Xử lý sự kiện và DOM', 2858)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (23, N'Chương 3: Tiên tiến hơn về JavaScript', 2858)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (24, N'Chương 1: Giới thiệu về Java', 2856)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (25, N'Chương 2: Lập trình hướng đối tượng trong Java', 2856)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (26, N'Chương 3: Tiên tiến hơn về Java', 2856)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (27, N'Chương 1: Giới thiệu về Bootstrap', 2860)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (28, N'Chương 2: Thiết kế trang web với Bootstrap', 2860)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (29, N'Chương 3: Tùy chỉnh giao diện với Bootstrap', 2860)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (30, N'Chương 1: Giới thiệu về Laravel', 2862)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (31, N'
Chương 2: Thiết kế cơ sở dữ liệu và quản lý migrations

', 2862)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (32, N'Chương 3: Xây dựng tính năng và giao diện cho website', 2862)
SET IDENTITY_INSERT [dbo].[chapter] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (3, N'ReactJS là gì? Tại sao nên học ReactJS?', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 5)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (6, N'Arrow functionn', N'http://res.cloudinary.com/djfbh9dqg/video/upload/v1677597743/cbere91mod0ieafghdgo.mp4', 6)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (7, N'Thực hành tạo Arrow function', N'http://res.cloudinary.com/djfbh9dqg/video/upload/v1677597743/cbere91mod0ieafghdgo.mp4', 6)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (14, N'document.createElement() để làm gì?', N'http://res.cloudinary.com/djfbh9dqg/video/upload/v1677597743/cbere91mod0ieafghdgo.mp4', 7)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (16, N'Giới thiệu NodeJS', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 8)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (17, N'Cài đặt NodeJS và NPM', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 8)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (19, N'Callbacks trong NodeJS', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 9)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (20, N'Promises và Async/await trong NodeJS', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 9)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (21, N'Kết nối và truy vấn cơ sở dữ liệu MySQL trong NodeJS', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 11)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (22, N'Kết nối và truy vấn cơ sở dữ liệu MongoDB trong NodeJS', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 11)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (23, N'Giới thiệu về Python', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 13)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (24, N'Cài đặt Python và các công cụ hỗ trợ', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678430207/poj8vstcla7qpoy6bgwv.mp4', 13)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (26, N'Cấu trúc điều khiển if, for, while trong Python', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 14)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (27, N'Hàm trong Python', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 14)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (29, N'Lập trình web với Flask', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 16)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (30, N'Xử lý dữ liệu và phân tích dữ liệu với Pandas và NumPy', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 16)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (31, N'Tổng quan về HTML và cách nó hoạt động', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 17)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (32, N'Các thẻ cơ bản trong HTML', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 17)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (33, N' Tổng quan về CSS và cách nó hoạt động', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 18)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (34, N'Các lựa chọn lựa chọn CSS và cách sử dụng chúng', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 18)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (35, N'Thẻ HTML tiên tiến và cách sử dụng chúng', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 19)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (36, N'Điều chỉnh bố cục trang web bằng CSS', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 19)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (39, N'Tổng quan về JavaScript và cách nó hoạt động', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 20)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (40, N'Cú pháp cơ bản của JavaScript', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 20)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (41, N' Xử lý sự kiện trong JavaScript', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 21)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (43, N'Giới thiệu về DOM và cách truy cập vào nó trong JavaScript', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 21)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (45, N'Hàm trong JavaScript', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 23)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (46, N'Giới thiệu về Object-Oriented Programming và Class trong JavaScript', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 23)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (47, N'Tổng quan về Java và lịch sử phát triển của nó', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 24)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (48, N'Các công cụ phát triển Java như JDK, Eclipse, NetBeans, IntelliJ IDEA', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 24)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (51, N'Giới thiệu về lập trình hướng đối tượng', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 25)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (52, N'Lớp, đối tượng và phương thức trong Java', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 25)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (53, N'Xử lý chuỗi và mảng trong Java', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 26)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (54, N'Các thuật toán và cấu trúc dữ liệu trong Java', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 26)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (55, N'Tổng quan về Bootstrap và lịch sử phát triển của nó', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 27)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (56, N'Các thành phần cơ bản của Bootstrap như Grid system, Typography, Forms, Buttons, Icons, Navbar', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 27)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (57, N'Các bước cơ bản để thiết kế trang web với Bootstrap', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 28)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (58, N'Sử dụng Grid system để tạo layout cho trang web', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 28)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (59, N'Cách tùy chỉnh các thành phần Bootstrap để phù hợp với yêu cầu thiết kế của trang web', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 29)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (60, N'Sử dụng các tính năng Responsive Design của Bootstrap để thiết kế giao diện trang web đáp ứng cho nhiều kích cỡ màn hình', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 29)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (61, N'Thiết kế cơ sở dữ liệu cho dự án web', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 30)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (62, N'Sử dụng migrations để quản lý cấu trúc cơ sở dữ liệu', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 30)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (63, N'Sử dụng Routing và Controllers để tạo các tính năng cho website', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 31)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (64, N'Sử dụng Blade templates để thiết kế giao diện cho website', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 31)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (65, N'Sử dụng Eloquent ORM để truy vấn cơ sở dữ liệu một cách dễ dàng và hiệu quả', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 32)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (66, N'Tối ưu hóa website để tăng tốc độ và giảm tải cho máy chủ', N'https://res.cloudinary.com/djfbh9dqg/video/upload/v1678004220/ReactJS_l%C3%A0_g%C3%AC-_T%E1%BA%A1i_sao_n%C3%AAn_h%E1%BB%8Dc_ReactJS-_aeayjg.mp4', 32)
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2850, N'Lập Trình ReactJs', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788065/photo/Reactjs_cgenjb.jpg', 200000, 40000, N'Khóa học Lập Trình ReactJS là một khóa học trực tuyến giúp học viên học cách tạo ra các ứng dụng web động và tương tác cao bằng cách sử dụng ReactJS, một thư viện JavaScript phổ biến. Khóa học này cung cấp kiến thức từ cơ bản đến nâng cao về ReactJS và các công cụ phát triển liên quan, bao gồm các chủ đề như component, state, props, JSX, routing, API, Redux và Redux Saga.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1681399918/noidung/poqhdvxp0ahzh0tl7zwn.txt', CAST(N'2022-12-06' AS Date), 1, 1)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2851, N'Lập Trình Nodejs', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788065/photo/Nodejs_gody4o.png', 250000, 180000, N'Node.js là một nền tảng lập trình được xây dựng trên động cơ JavaScript V8 của Google, cho phép các lập trình viên sử dụng JavaScript để lập trình phía máy chủ. Node.js cho phép lập trình viên xây dựng các ứng dụng web và các ứng dụng back-end phức tạp với các tính năng phong phú như đa luồng, xử lý bất đồng bộ, xử lý sự kiện và các công cụ phát triển khác.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2022-12-12' AS Date), 1, 2)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2853, N'Lập Trình Python', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788065/photo/pythonbg_kqizeg.jpg', 800000, 250000, N'Python là một ngôn ngữ lập trình thông dịch, đa nền tảng và đa mục đích được phát triển bởi Guido van Rossum vào năm 1991. Python đã trở thành một trong những ngôn ngữ lập trình phổ biến nhất trên thế giới với cộng đồng lớn và nhiều tài liệu hướng dẫn. Python được sử dụng để phát triển các ứng dụng máy tính, trang web, ứng dụng di động, trí tuệ nhân tạo, khoa học dữ liệu và nhiều lĩnh vực khác.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2023-02-03' AS Date), 1, 1)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2855, N'HTML-CSS Cơ Bản', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788063/photo/htmlcss_kugcnd.png', 0, 0, N'HTML (Hypertext Markup Language) và CSS (Cascading Style Sheets) là những ngôn ngữ lập trình cơ bản được sử dụng để thiết kế các trang web. HTML được sử dụng để định dạng nội dung trên trang web, trong khi CSS được sử dụng để tạo kiểu và trang trí cho trang web. Khóa học HTML-CSS Cơ bản sẽ giúp bạn học cách sử dụng HTML và CSS để tạo ra các trang web đẹp và chuyên nghiệp.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2023-02-03' AS Date), 1, 2)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2856, N'Lập Trình Java Cơ Bản', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788063/photo/java_o4vn6q.jpg', 400000, 200000, N'Java là một ngôn ngữ lập trình phổ biến được sử dụng rộng rãi trong phát triển ứng dụng máy tính và web. Java là một ngôn ngữ lập trình đa nền tảng, có thể chạy trên nhiều hệ điều hành khác nhau và có thể được sử dụng để phát triển các ứng dụng cho desktop, web và di động.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2023-02-03' AS Date), 1, 1)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2858, N'Lập Trình javascript Cơ Bản', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788064/photo/javasciptcoban_yfqvgv.jpg', 0, 0, N'JavaScript là một ngôn ngữ lập trình phổ biến, được sử dụng phổ biến cho các ứng dụng web và mobile. Nó là một ngôn ngữ lập trình được thực thi trên máy khách (client-side), có nghĩa là mã được thực thi trên trình duyệt của người dùng thay vì được thực thi trên máy chủ.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2023-02-03' AS Date), 1, 2)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2860, N'Thiết Kế Giao Diện Bằng Bootrap', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788061/photo/bootstrap_ubftzy.png', 0, 0, N'Bootstrap là một bộ công cụ HTML, CSS và JavaScript mã nguồn mở được thiết kế để giúp tạo giao diện web đẹp và dễ dàng cho các lập trình viên. Bootstrap được tạo ra bởi Twitter và đã được phát hành dưới giấy phép MIT.

Khóa học Bootstrap sẽ giúp bạn học cách sử dụng bộ công cụ này để xây dựng các giao diện web độc đáo và chuyên nghiệp. Khóa học sẽ giới thiệu cho bạn các khái niệm cơ bản về Bootstrap, bao gồm cách sử dụng lưới (grid system) để xây dựng trang web đáp ứng (responsive web design), cách sử dụng các thành phần (component) như nút, biểu mẫu, bảng, thẻ, hộp thoại, v.v. để tạo giao diện đẹp mắt và dễ sử dụng.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2023-03-05' AS Date), 1, 1)
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [learn], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2862, N'Xây dựng website hoàn chỉnh với Laravel PHP Framework', N'https://res.cloudinary.com/djfbh9dqg/image/upload/v1678788064/photo/laravel_btuicp.jpg', 0, 0, N'Laravel là một framework mã nguồn mở được sử dụng rộng rãi để xây dựng các ứng dụng web dựa trên ngôn ngữ lập trình PHP. Laravel cung cấp cho các lập trình viên một cách tiếp cận dễ dàng và hiệu quả để xây dựng các ứng dụng web với các tính năng phong phú như xử lý tệp, chứng thực, phân quyền, định tuyến, xử lý email và cả tạo và quản lý cơ sở dữ liệu.', N'https://res.cloudinary.com/djfbh9dqg/raw/upload/v1679386946/2850_xchao3.txt', CAST(N'2023-03-05' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseCode] ON 

INSERT [dbo].[CourseCode] ([CourseId], [Code], [quantity], [username], [id], [status]) VALUES (2851, N'LpTrnhNodejs545081685', 10, N'phucpc02265', 1, 1)
INSERT [dbo].[CourseCode] ([CourseId], [Code], [quantity], [username], [id], [status]) VALUES (2850, N'LpTrnhReactJs669087850', 5, N'phucpc02265', 2, 1)
INSERT [dbo].[CourseCode] ([CourseId], [Code], [quantity], [username], [id], [status]) VALUES (2850, N'LpTrnhReactJs897006413', 4, N'phucpc02265', 3, 1)
SET IDENTITY_INSERT [dbo].[CourseCode] OFF
GO
SET IDENTITY_INSERT [dbo].[neworder] ON 

INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1141, N'phucpc02265', 2860, CAST(N'2023-03-11' AS Date), N'0', N'Khóa Học Miễn Phí')
INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1142, N'phucpc02265', 2855, CAST(N'2023-03-11' AS Date), N'0', N'Khóa Học Miễn Phí')
INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1143, N'phucpc02265', 2850, CAST(N'2023-03-11' AS Date), N'0', N'VNPAY')
INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1144, N'minhjrt@gmail.com', 2862, CAST(N'2023-03-12' AS Date), N'0', N'Khóa Học Miễn Phí')
INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1148, N'phucpc02265', 2856, CAST(N'2023-04-04' AS Date), N'0', N'VNPAY')
INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1149, N'phucpc02265', 2858, CAST(N'2023-04-15' AS Date), N'0', N'Khóa Học Miễn Phí')
INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1150, N'phucpc02265', 2853, CAST(N'2023-04-15' AS Date), N'0', N'VNPAY')
SET IDENTITY_INSERT [dbo].[neworder] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (116, N'NCB', N'20230306225902', N'VND', N'YES', 180000, N'56859846', 2851, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (117, N'NCB', N'20230306230702', N'VND', N'YES', 180000, N'52687450', 2851, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (118, N'NCB', N'20230306231022', N'VND', N'YES', 180000, N'29207200', 2851, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (119, N'NCB', N'20230306231326', N'VND', N'YES', 180000, N'09238036', 2851, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (120, N'NCB', N'20230306234435', N'VND', N'YES', 180000, N'39147478', 2851, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (121, N'NCB', N'20230306235032', N'VND', N'YES', 40000, N'10933848', 2850, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (122, N'NCB', N'20230306235340', N'VND', N'YES', 250000, N'06489825', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (123, N'NCB', N'20230307224851', N'VND', N'YES', 250000, N'49062070', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (124, N'NCB', N'20230308130813', N'VND', N'YES', 40000, N'53958458', 2850, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (125, NULL, N'20230308212821', N'VND', N'NO', 180000, N'71224138', 2851, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (126, N'NCB', N'20230311213643', N'VND', N'YES', 40000, N'03825884', 2850, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (127, N'NCB', N'20230312214449', N'VND', N'YES', 40000, N'80983587', 2850, N'minhjrt@gmail.com')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (128, NULL, N'20230317220655', N'VND', N'NO', 250000, N'26141514', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (129, NULL, N'20230402235934', N'VND', N'NO', 250000, N'38554883', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (130, NULL, N'20230403000046', N'VND', N'NO', 250000, N'93055580', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (131, NULL, N'20230403000127', N'VND', N'NO', 250000, N'85021859', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (132, NULL, N'20230403000156', N'VND', N'NO', 250000, N'00662830', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (133, NULL, N'20230403000244', N'VND', N'NO', 250000, N'82713135', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (134, NULL, N'20230403001114', N'VND', N'NO', 250000, N'39785352', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (135, NULL, N'20230404212511', N'VND', N'NO', 200000, N'28097627', 2856, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (136, N'NCB', N'20230404212927', N'VND', N'YES', 200000, N'73930780', 2856, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (137, NULL, N'20230404230201', N'VND', N'NO', 250000, N'42973542', 2853, N'phucpc02265')
INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (138, N'NCB', N'20230415215556', N'VND', N'YES', 250000, N'88652934', 2853, N'phucpc02265')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (3, 2850, 3, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (4, 2850, 6, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (5, 2850, 7, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (10, 2850, 14, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (11, 2851, 16, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (12, 2851, 17, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (13, 2851, 19, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (14, 2851, 20, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (15, 2851, 21, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (16, 2851, 22, 1)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (17, 2853, 23, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (18, 2853, 24, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (19, 2853, 26, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (20, 2853, 27, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (23, 2853, 29, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (24, 2853, 30, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (25, 2855, 32, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (27, 2855, 31, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (28, 2855, 33, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (29, 2855, 34, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (30, 2855, 35, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (31, 2855, 36, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (32, 2858, 39, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (33, 2858, 40, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (34, 2858, 41, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (35, 2858, 43, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (36, 2858, 45, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (37, 2858, 46, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (38, 2856, 47, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (39, 2856, 48, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (40, 2856, 51, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (41, 2856, 52, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (42, 2856, 53, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (43, 2856, 54, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (44, 2860, 55, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (45, 2860, 56, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (46, 2860, 57, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (47, 2860, 58, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (48, 2860, 59, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (49, 2860, 60, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (50, 2862, 61, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (51, 2862, 62, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (52, 2862, 63, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (53, 2862, 64, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (54, 2862, 65, 0)
INSERT [dbo].[Quiz] ([id], [course_id], [content_id], [status]) VALUES (55, 2862, 66, 0)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[quizquestion] ON 

INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (1, N'ReactJS là gì??', N'Một framework lập trình PHP', N'Một framework lập trình JavaScript.', N'Một trình duyệt web.', N'Một hệ thống quản lý cơ sở dữ liệu.', N'optionB', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (2, N'ReactJS được tạo ra bởi công ty nào?', N'Facebook', N'Google', N'2002', N'Amazon', N'optionA', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (3, N'Cú pháp nào được sử dụng để tạo một component trong ReactJS?', N'createComponent()', N'makeComponent()', N'buildComponent()', N'renderComponent()', N'optionD', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (4, N'ReactJS sử dụng hàm nào để render một component?', N'renderComponent()', N'buildComponent()', N'createComponent()', N'makeComponent()', N'optionA', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (5, N'Các props trong ReactJS được truyền vào component bằng cách nào?', N'Dùng hàm setState()', N'Dùng hàm componentDidMount()', N'Dùng hàm componentWillReceiveProps()', N'Dùng các thuộc tính của component', N'optionD', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (6, N'ReactJS sử dụng state để làm gì?', N'Lưu trữ dữ liệu của component.', N'Quản lý các component con.', N'Thiết lập các props cho component.', N'Tạo ra các hàm callback cho component.', N'optionA', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (7, N'Để tạo ra một event trong ReactJS, ta sử dụng hàm nào?', N'onEvent()', N'addEventListener()', N'onClick()', N'createEvent()', N'optionC', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (8, N'Cách sử dụng hook trong ReactJS là gì?', N'Sử dụng hook để quản lý state và lifecycle trong function component.', N'Sử dụng hook để tạo ra các event trong class component.', N'Sử dụng hook để tạo ra các component con trong class component.', N'Sử dụng hook để render các component con trong function component.', N'optionA', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (9, N'Cách sử dụng Redux trong ReactJS là gì?', N'Sử dụng Redux để quản lý state của toàn bộ ứng dụng.', N'Sử dụng Redux để tạo ra các event cho các component.', N'Sử dụng Redux để tạo ra các component con.', N'Sử dụng Redux để render các component con.', N'optionA', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (10, N'Làm thế nào để tạo một form trong ReactJS?', N'Sử dụng các thư viện bên ngoài như Formik hoặc Redux Form.', N'Sử dụng các thẻ HTML và xử lý sự kiện trong ReactJS.', N'Sử dụng các component có sẵn của ReactJS như Input, Checkbox, Radio, vv.', N'Tất cả các phương án đều đúng.', N'optionD', 3)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (23, N'Arrow function là gì?', N'Là hàm truyền thống trong JavaScript.', N' Là cú pháp tạo hàm mới trong ES6.', N' Là hàm đặc biệt chỉ có thể dùng trong React.', N'Là cú pháp tạo hàm mới trong ES5.', N'optionB', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (24, N'Keyword để khai báo biến trong JavaScript?', N'let', N'const', N'var', N'Tất cả điều đúng', N'optionD', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (25, N'Cú pháp để khai báo hàm trong JavaScript?', N'function myFunction()', N'function myFunction', N'void myFunction', N'func myFunction()', N'optionA', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (26, N'Đâu là cách gọi hàm setTimeout() đúng trong JavaScript?', N'setTimeout(myFunction(), 1000)', N'setTimeout(myFunction, 1000)', N'setTimeout("myFunction()", 1000)', N'setTimeout("myFunction", 1000)', N'optionB', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (27, N'Kết quả trả về của phép toán typeof của một mảng là gì?', N'array', N'object', N'function', N'string', N'optionB', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (28, N'Phương thức nào được sử dụng để thêm một phần tử vào cuối một mảng trong JavaScript?', N'push()', N'unshift()', N'shift()', N'pop()', N'optionA', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (29, N'Cú pháp để lặp qua các phần tử của một mảng trong JavaScript là gì?', N'for (i = 0; i < arr.length; i++)', N'for (i = 0; i <= arr.length; i++)', N'for (i < arr.length; i++)', N'foreach (i in arr)', N'optionA', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (30, N'Đâu là cách gọi hàm parseInt() đúng trong JavaScript?', N'parseInt("10px")', N'parseInt(10px)', N'parseint("10px")', N'parseint(10px)', N'optionA', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (31, N'Phương thức nào được sử dụng để xóa một phần tử khỏi một mảng trong JavaScript?', N'slice()', N'splice()', N'pop()', N'shift()', N'optionB', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (32, N'Cú pháp để tạo đối tượng trong JavaScript là gì?', N'var obj = {};', N'var obj = Object();', N'var obj = new Object();', N'Tất cả đều đúng', N'optionD', 4)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (33, N'Trong JavaScript, cú pháp nào dùng để tạo một Arrow function?', N'(param1, param2) => { ... }', N'function myFunction(param1, param2) { ... }', N'function myFunction = (param1, param2) => { ... }', N'function(param1, param2) { ... }', N'optionA', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (34, N'Arrow function có thể thay thế cho hàm thông thường trong các trường hợp nào?', N'Khi chỉ có một biểu thức trả về trong hàm', N'Khi hàm không có tham số', N'Khi hàm có nhiều hơn một lệnh trong thân hàm', N'Khi hàm được sử dụng trong các đoạn mã chạy ở dạng đệ quy', N'optionA', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (35, N'Arrow function có thể sử dụng bao nhiêu tham số?', N'Một tham số', N'Hai tham số', N'Không giới hạn số lượng tham số', N'Tùy vào tình huống sử dụng', N'optionC', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (36, N'Arrow function sử dụng từ khóa nào để khai báo tham số?', N'let', N'var', N'const', N'Không cần khai báo tham số', N'optionD', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (37, N'Với một Arrow function chỉ trả về một giá trị, ta có thể viết nó ngắn gọn hơn bằng cách?', N'Viết giá trị trực tiếp ở sau dấu =>', N'Sử dụng dấu {} để bao bọc thân hàm', N'Tất cả các đáp án đều sai', N'Sử dụng từ khóa return', N'optionA', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (38, N'Arrow function có thể trả về kiểu dữ liệu nào?', N'Kiểu dữ liệu nguyên thủy (primitive data types)', N'Kiểu dữ liệu đối tượng (object data types)', N'Cả kiểu dữ liệu nguyên thủy và đối tượng', N'Arrow function không thể trả về kiểu dữ liệu nào', N'optionC', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (39, N'Với Arrow function, từ khóa return có cần thiết không?', N'Cần thiết', N'Không cần thiết', N'Tùy vào tình huống sử dụng', N'Chỉ cần sử dụng từ khóa return khi trả về giá trị là một đối tượng', N'optionB', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (40, N'Trong Arrow function, cách viết ngắn gọn của "return" là gì?', N'r', N'ret', N'=>', N'>', N'optionC', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (41, N'Arrow function có thể được dùng để khai báo một hàm tên là "myFunction".', N'Đúng', N'Sai', N'1 đúng , 2 sai', N'2 sai 1 đúng', N'optionA', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (42, N'Arrow function có thể được sử dụng để trả về một đối tượng bằng cách bao bọc đối tượng đó trong cặp ngoặc nhọn { }.', N'Đúng', N'Sai', N'1 đúng , 2 sai', N'1 đúng , 2 sai', N'optionB', 5)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (83, N'Phương thức document.createElement() được sử dụng để làm gì?', N'Thêm một phần tử HTML mới vào trang web', N' Xóa một phần tử HTML khỏi trang web', N' Sửa đổi một phần tử HTML trên trang web', N'Không phải là một phương thức hợp lệ trong JavaScript', N'optionA', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (84, N'Đối tượng nào sử dụng phương thức document.createElement()?', N' Document', N'Window', N'Location', N'Navigator', N'optionA', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (85, N'Phương thức document.createElement() trả về gì?', N'Một chuỗi HTML', N'Một đối tượng HTML', N'Một đối tượng JavaScript', N' Không có giá trị trả về', N'optionB', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (86, N'Khi sử dụng phương thức document.createElement(), bạn cần cung cấp gì?', N'Tên của phần tử HTML', N'ID của phần tử HTML', N'Lớp của phần tử HTML', N'Tất cả các phương thức trên đều đúng', N'optionA', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (87, N'Để thêm một phần tử HTML mới vào trang web, bạn cần làm gì?', N'Sử dụng phương thức document.createElement() để tạo một phần tử HTML mới', N'Sử dụng phương thức document.removeElement() để xóa một phần tử HTML', N'Sử dụng phương thức document.updateElement() để sửa đổi một phần tử HTML', N'Không thể thêm phần tử HTML mới vào trang web', N'optionA', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (88, N'Tên của phần tử HTML mới được tạo bằng phương thức document.createElement() ', N' Div', N' Span', N'Paragraph', N'Tất cả các phương án trên đều đúng', N'optionD', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (89, N'Để thêm một thuộc tính cho phần tử HTML mới tạo, ta dùng phương thức gì?', N'setAttribute()', N'createElement()', N'appendChild()', N'getElementById()', N'optionA', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (90, N'Bạn có thể thêm thuộc tính vào phần tử HTML mới được tạo bằng phương thức document.createElement() bằng cách nào?', N'Sử dụng phương thức setAttribute()', N' Sử dụng phương thức createElementAttribute()', N'Sử dụng phương thức addAttribute()', N'Không thể thêm thuộc tính vào phần tử HTML mới', N'optionA', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (91, N'Để thêm phần tử HTML mới vào một phần tử HTML đã tồn tại, bạn cần sử dụng phương thức nào?', N'document.createElement()', N'appendChild()', N'setAttribute()', N'getElementById()', N'optionB', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (92, N'Khi sử dụng phương thức document.createElement(), tên của phần tử HTML mới tạo phải được viết như thế nào?', N'Tên phải được viết hoa toàn bộ', N'Tên phải được viết thường toàn bộ', N' Tên phải được viết hoa chữ cái đầu tiên', N'Tên phải được viết thường chữ cái đầu tiên', N'optionB', 10)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (93, N'NodeJS là gì?', N'Một framework web', N'Một ngôn ngữ lập trình', N' Một máy chủ web', N'Một trình duyệt web', N'optionB', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (94, N'NodeJS được xây dựng dựa trên ngôn ngữ lập trình nào?', N' Python', N'JavaScript', N' C#', N'Ruby', N'optionB', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (95, N'NodeJS được phát triển bởi công ty nào?', N'Google', N'Microsoft', N' Amazon', N' Facebook', N'optionA', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (96, N'NodeJS được sử dụng để làm gì?', N'Xây dựng các ứng dụng web', N'Xây dựng các ứng dụng di động', N'Xây dựng các ứng dụng desktop', N'Tất cả đều đúng', N'optionA', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (97, N'NodeJS làm việc trên nền tảng nào?', N' Linux', N'Windows', N'Mac OS', N'Tất cả đều đúng', N'optionD', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (98, N'NodeJS sử dụng công nghệ gì để xử lý các yêu cầu đồng thời?', N' Thread', N'Process', N'Event loop', N'Semaphore', N'optionC', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (99, N'NodeJS sử dụng module nào để xử lý I/O không đồng bộ?', N'fs', N'http', N'net', N'zlib', N'optionA', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (100, N'NodeJS có thể được cài đặt trên hệ điều hành nào?', N' Windows', N' Linux', N'Mac OS', N'Tất cả đều đúng', N'optionD', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (101, N'NodeJS được phát triển bởi ai?', N'Google', N' Facebook', N'Microsoft', N'NodeJS không được phát triển bởi bất kỳ công ty nào.', N'optionD', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (102, N'NodeJS có thể được sử dụng để phát triển các ứng dụng desktop (desktop applications) trên hệ điều hành nào?', N'Windows', N'Linux', N'Mac OS', N'Tất cả đều đúng', N'optionD', 11)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (103, N'NodeJS là gì?', N'Một hệ điều hành', N'Một trình duyệt web', N'Một nền tảng phát triển ứng dụng web', N' Một trình biên dịch mã nguồn mở', N'optionC', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (104, N'NPM là gì ?', N' Node Package Manager', N'Node Programming Module', N'Node Programming Manager', N'Node Package Module', N'optionA', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (105, N'Làm cách nào để kiểm tra NodeJS đã được cài đặt thành công trên máy tính của bạn?', N'Kiểm tra phiên bản NodeJS', N'Chạy một ứng dụng NodeJS', N'Kiểm tra phiên bản NPM', N'Cả hai đáp án đều đúng', N'optionA', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (106, N'Làm cách nào để cài đặt NodeJS và NPM trên hệ điều hành Windows?', N'Tải xuống tệp cài đặt từ trang web chính thức và cài đặt bằng giao diện đồ họa', N'Cài đặt thông qua Terminal hoặc Command Prompt sử dụng Chocolatey hoặc Node Version Manager (NVM)', N'Sử dụng ứng dụng Microsoft Store để tìm kiếm và cài đặt NodeJS và NPM', N'Cả ba đáp án đều đúng', N'optionB', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (107, N'Làm cách nào để cài đặt NodeJS và NPM trên hệ điều hành MacOS?', N'Tải xuống tệp cài đặt từ trang web chính thức và cài đặt bằng giao diện đồ họa', N'Cài đặt thông qua Terminal sử dụng Homebrew hoặc Node Version Manager (NVM)', N'Sử dụng ứng dụng App Store để tìm kiếm và cài đặt NodeJS và NPM', N'Cả ba đáp án đều đúng', N'optionB', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (108, N'Làm cách nào để kiểm tra phiên bản của NPM đang chạy trên máy tính của bạn?', N'Chạy lệnh "npm -v" trong Terminal hoặc Command Prompt', N'Chạy lệnh "npm --version" trong Terminal hoặc Command Prompt', N' Kiểm tra trong gói.json của dự án', N'Cả hai đáp án a và b đều đúng', N'optionD', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (109, N'Làm cách nào để cập nhật phiên bản của NPM trên máy tính của bạn?', N'Chạy lệnh "npm update -g" trong Terminal hoặc Command Prompt', N'Tải xuống phiên bản mới nhất từ trang web chính thức và cài đặt bằng giao diện đồ họa', N' Sử dụng một trình quản lý gói như Homebrew hoặc Chocolatey để cập nhật NPM', N'Cả ba đáp án đều đúng', N'optionA', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (110, N'Làm cách nào để kiểm tra các gói đã được cài đặt bởi NPM trên máy tính của bạn?', N' Chạy lệnh "npm list" trong Terminal hoặc Command Prompt', N' Kiểm tra trong file package.json của dự án', N'Kiểm tra trong thư mục node_modules', N'Cả ba đáp án đều đúng', N'optionA', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (111, N'Chạy lệnh "npm list" trong Terminal hoặc Command Prompt ?', N'Chạy lệnh "npm install [tên gói]" trong Terminal hoặc Command Prompt', N'Tải xuống tệp cài đặt từ trang web chính thức và cài đặt bằng giao diện đồ họa', N'Sử dụng một trình quản lý gói như Homebrew hoặc Chocolatey để cài đặt gói NPM', N'Cả ba đáp án đều đúng', N'optionA', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (112, N'Làm cách nào để gỡ bỏ một gói NPM đã được cài đặt trên máy tính của bạn?', N'Chạy lệnh "npm uninstall [tên gói]" trong Terminal hoặc Command Prompt', N'Xóa thư mục gốc của gói trong thư mục node_modules', N'Sử dụng một trình quản lý gói như Homebrew hoặc Chocolatey để gỡ bỏ gói NPM', N'Cả ba đáp án đều đúng', N'optionA', 12)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (113, N'Callback là gì trong NodeJS?', N' Một hàm được gọi khi một tác vụ bất đồng bộ hoàn thành', N' Một hàm được gọi khi một tác vụ đồng bộ hoàn thàn', N'Một hàm được gọi khi một tác vụ xảy ra lỗi', N'Một hàm được gọi khi chương trình kết thúc', N'optionA', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (114, N'Tại sao chúng ta cần sử dụng Callback trong NodeJS?', N'Để xử lý các tác vụ bất đồng bộ một cách hiệu quả', N'Để xử lý các tác vụ đồng bộ một cách hiệu quả', N'Để đơn giản hóa mã nguồn', N'Để tăng tốc độ thực thi chương trình', N'optionA', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (115, N'Làm thế nào để định nghĩa một Callback trong NodeJS?', N'Tạo một hàm với tham số cuối cùng là một hàm callback và gọi hàm callback trong hàm đó', N'Tạo một hàm với tham số đầu tiên là một hàm callback và gọi hàm callback trong hàm đó', N'Tạo một hàm với tham số cuối cùng là một hàm callback và trả về kết quả của hàm callback', N'Tạo một hàm với tham số đầu tiên là một hàm callback và trả về kết quả của hàm callback', N'optionA', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (116, N'Làm thế nào để truyền tham số vào một Callback trong NodeJS?', N'Truyền tham số bằng cách sử dụng một mảng các tham số và đưa vào hàm callback', N'Truyền tham số bằng cách gọi hàm callback với tham số tương ứng', N'Truyền tham số bằng cách định nghĩa tham số trong hàm callback và gọi hàm callback với tham số tương ứng', N'Cả ba đáp án trên đều đúng', N'optionB', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (117, N'Làm thế nào để xử lý Callback Hell trong NodeJS?', N'Sử dụng Promises để xử lý các tác vụ bất đồng bộ', N'Sử dụng Async/Await để xử lý các tác vụ bất đồng bộ', N'Sử dụng Event Emitters để xử lý các tác vụ bất đồng bộ', N'Cả ba đáp án trên đều đúng', N'optionD', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (118, N'Promise là gì trong NodeJS?', N'Một cách xử lý các tác vụ bất đồng bộ', N'Một hàm được gọi khi một tác vụ bất đồng bộ hoàn thành', N' Một hàm được gọi khi một tác vụ xảy ra lỗi', N'Một hàm được gọi khi chương trình kết thúc', N'optionA', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (119, N'Làm thế nào để sử dụng Promise trong NodeJS?', N'Tạo một đối tượng Promise và trả về kết quả của Promise', N'Tạo một đối tượng Promise và gọi hàm resolve hoặc reject để trả về kết quả của Promise', N' Tạo một đối tượng Promise và gọi hàm then hoặc catch để xử lý kết quả của Promise', N'Cả ba đáp án trên đều đúng', N'optionD', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (120, N'Async/Await là gì trong NodeJS?', N'Một cách xử lý các tác vụ bất đồng bộ', N'Một hàm được gọi khi một tác vụ bất đồng bộ hoàn thành', N'Một hàm được gọi khi một tác vụ xảy ra lỗi', N'Một hàm được gọi khi chương trình kết thúc', N'optionA', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (121, N'Làm thế nào để sử dụng Async/Await trong NodeJS?', N' Sử dụng từ khóa async trước hàm và từ khóa await trước tác vụ bất đồng bộ', N'Sử dụng từ khóa await trước hàm và từ khóa async trước tác vụ bất đồng bộ', N' Sử dụng từ khóa async trước tác vụ bất đồng bộ và từ khóa await trước hàm', N'Không thể sử dụng Async/Await trong NodeJS', N'optionA', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (122, N'Callback và Promise khác nhau như thế nào trong NodeJS?', N'Callback và Promise đều là cách xử lý các tác vụ bất đồng bộ trong NodeJS', N'Callback được sử dụng nhiều hơn Promise trong NodeJS', N'Promise được sử dụng nhiều hơn Callback trong NodeJS', N'Callback và Promise có cách xử lý và cú pháp khác nhau trong NodeJS', N'optionD', 13)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (123, N'Promises và Async/await là gì trong NodeJS?', N' Là cách xử lý tác vụ bất đồng bộ', N'Là thư viện của NodeJS để lập trình bất đồng bộ', N' Là cú pháp để xử lý các tác vụ đồng bộ', N'Không có đáp án đúng', N'optionA', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (124, N'Promises là gì trong NodeJS?', N'Một đối tượng JavaScript mô tả việc thực thi một tác vụ bất đồng bộ và trả về kết quả hoặc thông báo lỗi', N'Một thư viện của NodeJS để xử lý tác vụ đồng bộ', N'Một cú pháp để xử lý tác vụ đồng bộ', N' Không có đáp án đúng', N'optionA', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (125, N'Async/await là gì trong NodeJS?', N' Một cách xử lý tác vụ đồng bộ', N'Một thư viện của NodeJS để xử lý tác vụ bất đồng bộ', N'Một cú pháp để xử lý tác vụ bất đồng bộ', N'Không có đáp án đúng', N'optionC', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (126, N'Làm thế nào để sử dụng Promise trong NodeJS?', N'Sử dụng từ khóa then và catch để xử lý kết quả của Promise', N'Sử dụng từ khóa resolve và reject để trả về kết quả của Promise', N'Tạo một đối tượng Promise và trả về kết quả của Promise', N' Cả ba đáp án trên đều đúng', N'optionD', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (127, N'Làm thế nào để sử dụng Async/await trong NodeJS?', N' Sử dụng từ khóa async trước hàm và từ khóa await trước tác vụ bất đồng bộ', N'Sử dụng từ khóa await trước hàm và từ khóa async trước tác vụ bất đồng bộ', N' Sử dụng từ khóa async trước tác vụ bất đồng bộ và từ khóa await trước hàm', N'Không thể sử dụng Async/await trong NodeJS', N'optionA', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (128, N'Promise và Async/await khác nhau như thế nào trong NodeJS?', N'Promise và Async/await đều là cách xử lý tác vụ bất đồng bộ trong NodeJS', N'Promise sử dụng cú pháp then/catch, trong khi Async/await sử dụng cú pháp try/catch', N'Promise là một cách xử lý tác vụ bất đồng bộ đồng bộ trong khi Async/await là một cách xử lý tác vụ bất đồng bộ không đồng bộ', N'Không có sự khác biệt giữa Promise và Async/await trong NodeJS', N'optionB', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (129, N'Khi nào nên sử dụng Promise trong NodeJS?', N'Khi muốn xử lý các tác vụ bất đồng bộ đồng bộ', N'Khi muốn xử lý các tác vụ bất đồng bộ không đồng bộ', N' Khi muốn xử lý các tác vụ đồng bộ', N' Không cần sử dụng Promise trong NodeJS', N'optionB', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (130, N'Khi nào nên sử dụng Async/await trong NodeJS?', N' Khi muốn xử lý các tác vụ đồng bộ', N' Khi muốn xử lý các tác vụ bất đồng bộ đồng bộ', N'Khi muốn xử lý các tác vụ bất đồng bộ không đồng bộ', N'Không cần sử dụng Async/await trong NodeJS', N'optionC', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (131, N' Khi muốn xử lý các tác vụ bất đồng bộ không đồng bộ', N'Sử dụng Promises để xử lý từng tác vụ bất đồng bộ riêng biệt', N'Sử dụng Async/await để xử lý từng tác vụ bất đồng bộ riêng biệt', N'Sử dụng Promises và Async/await để xử lý nhiều tác vụ bất đồng bộ cùng lúc', N'Không thể xử lý nhiều tác vụ bất đồng bộ cùng lúc trong NodeJS', N'optionC', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (132, N'Lợi ích của việc sử dụng Async/await trong NodeJS là gì?', N' Làm code dễ hiểu và dễ bảo trì hơn so với Promise', N' Giúp tăng tốc độ xử lý tác vụ bất đồng bộ', N'Cải thiện hiệu năng ứng dụng NodeJS', N'Giúp giảm thiểu việc lỗi hệ thống và nâng cao khả năng kiểm tra lỗi', N'optionA', 14)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (133, N'Làm thế nào để kết nối đến cơ sở dữ liệu MySQL trong NodeJS?', N' Sử dụng module sqlite3', N'Sử dụng module mongodb', N'Sử dụng module mysql2', N'Sử dụng module sequelize', N'optionC', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (134, N'Các bước cơ bản để truy vấn dữ liệu từ MySQL bằng NodeJS là gì?', N'Kết nối đến cơ sở dữ liệu, tạo truy vấn SQL, thực thi truy vấn, xử lý kết quả', N'Tạo truy vấn SQL, kết nối đến cơ sở dữ liệu, thực thi truy vấn, xử lý kết quả', N'Tạo truy vấn SQL, thực thi truy vấn, kết nối đến cơ sở dữ liệu, xử lý kết quả', N'Kết nối đến cơ sở dữ liệu, xử lý kết quả, tạo truy vấn SQL, thực thi truy vấn', N'optionA', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (135, N'Làm thế nào để truy vấn dữ liệu MySQL bằng NodeJS sử dụng module mysql2?', N' Sử dụng phương thức execute()', N' Sử dụng phương thức query()', N'Sử dụng phương thức select()', N' Sử dụng phương thức fetch()', N'optionB', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (136, N'Các phương thức để truy vấn dữ liệu MySQL bằng NodeJS sử dụng module mysql2 là gì?', N'query(), execute(), select(), fetch()', N' query(), execute(), update(), delete()', N' query(), prepare(), execute(), bind()', N'query(), insert(), update(), delete()', N'optionA', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (137, N'Làm thế nào để thực hiện truy vấn MySQL bằng NodeJS sử dụng parameterized query?', N'Sử dụng phương thức prepare() và bind()', N'Sử dụng phương thức select()', N' Sử dụng phương thức fetch()', N'Sử dụng phương thức execute()', N'optionA', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (138, N'Làm thế nào để kết nối đến cơ sở dữ liệu MySQL sử dụng module mysql2 trong NodeJS?', N'Sử dụng phương thức connect()', N'Sử dụng phương thức createConnection()', N'Sử dụng phương thức openConnection()', N'Sử dụng phương thức getConnection()', N'optionB', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (139, N'Làm thế nào để sử dụng pool connection trong kết nối cơ sở dữ liệu MySQL bằng NodeJS?', N'Sử dụng phương thức createConnection()', N'Sử dụng phương thức createPool()', N'Sử dụng phương thức connect()', N'Sử dụng phương thức openConnection()', N'optionB', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (140, N'Các phương thức để thực hiện prepared statement trong MySQL bằng NodeJS là gì?', N' query(), prepare(), execute(), bind()', N'query(), execute(), select(), fetch()', N'prepare(), execute(), select(), fetch()', N'query(), execute(), insert(), delete()', N'optionA', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (141, N'Làm thế nào để tránh tấn công SQL Injection trong truy vấn MySQL bằng NodeJS?', N'Sử dụng parameterized query', N'Sử dụng encodeURI()', N' Sử dụng JSON.stringify()', N' Sử dụng eval()', N'optionA', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (142, N'Làm thế nào để thực hiện transaction trong MySQL bằng NodeJS?', N' Sử dụng phương thức beginTransaction()', N'Sử dụng phương thức commitTransaction()', N'Sử dụng phương thức rollbackTransaction()', N'Tất cả các phương án trên', N'optionD', 15)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (143, N'Làm thế nào để kết nối đến cơ sở dữ liệu MongoDB trong NodeJS?', N'Sử dụng phương thức connect() của module mongoose', N'Sử dụng phương thức connect() của module mongodb', N' Sử dụng phương thức open() của module mongoose', N' Sử dụng phương thức open() của module mongodb', N'optionA', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (144, N'Làm thế nào để tạo một document mới trong MongoDB sử dụng NodeJS?', N'Sử dụng phương thức create()', N' Sử dụng phương thức insert()', N'Sử dụng phương thức save()', N'Sử dụng phương thức update()', N'optionC', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (145, N'Làm thế nào để tìm kiếm document trong MongoDB sử dụng NodeJS?', N'Sử dụng phương thức find()', N'Sử dụng phương thức findOne()', N'Sử dụng phương thức search()', N'Sử dụng phương thức query()', N'optionB', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (146, N'Làm thế nào để cập nhật một document trong MongoDB sử dụng NodeJS?', N' Sử dụng phương thức update()', N' Sử dụng phương thức save()', N'Sử dụng phương thức findOneAndUpdate()', N'Sử dụng phương thức updateOne()', N'optionC', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (147, N'Làm thế nào để xóa một document trong MongoDB sử dụng NodeJS?', N'Sử dụng phương thức remove()', N'Sử dụng phương thức delete()', N'Sử dụng phương thức findOneAndRemove()', N'Sử dụng phương thức deleteOne()', N'optionC', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (148, N'Làm thế nào để tìm kiếm document trong MongoDB theo điều kiện sử dụng NodeJS?', N'Sử dụng phương thức find()', N' Sử dụng phương thức findOne()', N' Sử dụng phương thức search()', N'Sử dụng phương thức query()', N'optionA', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (149, N'Làm thế nào để thêm một bản ghi mới vào một collection trong MongoDB bằng NodeJS?', N'sử dụng phương thức addOne()', N'sử dụng phương thức insertOne()', N'sử dụng phương thức createOne()', N' sử dụng phương thức saveOne()', N'optionB', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (150, N'Làm thế nào để lấy tất cả các bản ghi trong một collection trong MongoDB bằng NodeJS?', N'. sử dụng phương thức getAll()', N'sử dụng phương thức find()', N'sử dụng phương thức selectAll()', N'sử dụng phương thức queryAll()', N'optionB', 16)
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (151, N'Làm thế nào để cập nhật một bản ghi trong MongoDB bằng NodeJS?', N'sử dụng phương thức updateOne()', N' sử dụng phương thức editOne()', N'sử dụng phương thức changeOne()', N'sử dụng phương thức modifyOne()', N'optionA', 16)
GO
INSERT [dbo].[quizquestion] ([id], [question], [optionA], [optionB], [optionC], [optionD], [correctOption], [quiz_id]) VALUES (152, N'Làm thế nào để xóa một bản ghi trong MongoDB bằng NodeJS?', N' sử dụng phương thức deleteOne()', N'sử dụng phương thức removeOne()', N' sử dụng phương thức eraseOne()', N'sử dụng phương thức destroyOne()', N'optionA', 16)
SET IDENTITY_INSERT [dbo].[quizquestion] OFF
GO
SET IDENTITY_INSERT [dbo].[quizresult] ON 

INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (574, N'phucpc02265', 3, 1, N'optionB   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (575, N'phucpc02265', 3, 2, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (576, N'phucpc02265', 3, 3, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (577, N'phucpc02265', 3, 4, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (578, N'phucpc02265', 3, 5, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (579, N'phucpc02265', 3, 6, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (580, N'phucpc02265', 3, 7, N'optionB   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (581, N'phucpc02265', 3, 8, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (582, N'phucpc02265', 3, 9, N'optionB   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (583, N'phucpc02265', 3, 10, N'optionD   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (594, N'minhjrt@gmail.COM', 3, 1, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (595, N'minhjrt@gmail.COM', 3, 2, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (596, N'minhjrt@gmail.COM', 3, 3, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (597, N'minhjrt@gmail.COM', 3, 4, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (598, N'minhjrt@gmail.COM', 3, 5, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (599, N'minhjrt@gmail.COM', 3, 6, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (600, N'minhjrt@gmail.COM', 3, 7, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (601, N'minhjrt@gmail.COM', 3, 8, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (602, N'minhjrt@gmail.COM', 3, 9, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (603, N'minhjrt@gmail.COM', 3, 10, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (654, N'phucpc02265', 4, 23, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (655, N'phucpc02265', 4, 24, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (656, N'phucpc02265', 4, 25, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (657, N'phucpc02265', 4, 26, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (658, N'phucpc02265', 4, 27, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (659, N'phucpc02265', 4, 28, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (660, N'phucpc02265', 4, 29, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (661, N'phucpc02265', 4, 30, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (662, N'phucpc02265', 4, 31, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (663, N'phucpc02265', 4, 32, N'optionA   ', N'0         ', 0)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (684, N'phucpc02265', 5, 33, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (685, N'phucpc02265', 5, 34, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (686, N'phucpc02265', 5, 35, N'optionC   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (687, N'phucpc02265', 5, 36, N'optionD   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (688, N'phucpc02265', 5, 37, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (689, N'phucpc02265', 5, 38, N'optionC   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (690, N'phucpc02265', 5, 39, N'optionB   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (691, N'phucpc02265', 5, 40, N'optionC   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (692, N'phucpc02265', 5, 41, N'optionA   ', N'1         ', 1)
INSERT [dbo].[quizresult] ([id], [user_id], [quiz_id], [question_id], [user_answer], [score], [correct]) VALUES (693, N'phucpc02265', 5, 42, N'optionA   ', N'0         ', 0)
SET IDENTITY_INSERT [dbo].[quizresult] OFF
GO
INSERT [dbo].[Roles] ([tps_Id], [tps_Name]) VALUES (N'Admin', N'Quản Trị Viên')
INSERT [dbo].[Roles] ([tps_Id], [tps_Name]) VALUES (N'User', N'Người Dùng')
GO
SET IDENTITY_INSERT [dbo].[TransactionEntity] ON 

INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (4, N'13951464', N'00', N'VNP13951464', N'56859846', N'180000', 116)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (5, N'13951466', N'00', N'VNP13951466', N'52687450', N'180000', 117)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (6, N'13951468', N'00', N'VNP13951468', N'29207200', N'180000', 118)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (7, N'13951468', N'00', N'VNP13951468', N'29207200', N'180000', 118)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (8, N'13951468', N'00', N'VNP13951468', N'29207200', N'180000', 118)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (9, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (10, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (11, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (12, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (13, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (14, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (15, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (16, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (17, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (18, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (19, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (20, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (21, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (22, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (23, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (24, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (25, N'13951471', N'00', N'VNP13951471', N'09238036', N'180000', 119)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (26, N'13951481', N'00', N'VNP13951481', N'39147478', N'180000', 120)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (27, N'13951483', N'00', N'VNP13951483', N'10933848', N'40000', 121)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (28, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (29, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (30, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (31, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (32, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (33, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (34, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (35, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (36, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (37, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (38, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (39, N'13951485', N'00', N'VNP13951485', N'06489825', N'250000', 122)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (40, N'13952336', N'00', N'VNP13952336', N'49062070', N'250000', 123)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (41, N'13952656', N'00', N'VNP13952656', N'53958458', N'40000', 124)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (42, N'13955013', N'00', N'VNP13955013', N'03825884', N'40000', 126)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (43, N'13955227', N'00', N'VNP13955227', N'80983587', N'40000', 127)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (44, N'13983063', N'00', N'VNP13983063', N'73930780', N'200000', 136)
INSERT [dbo].[TransactionEntity] ([id], [transactionno], [transactionstatus], [banktranno], [txnref], [amount], [id_payment]) VALUES (45, N'13991411', N'00', N'VNP13991411', N'88652934', N'250000', 138)
SET IDENTITY_INSERT [dbo].[TransactionEntity] OFF
GO
SET IDENTITY_INSERT [dbo].[UserContent] ON 

INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (123, N'phucpc02265', 55, 1, 2860, N'Complete')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (124, N'phucpc02265', 31, 1, 2855, N'0:0:0')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (125, N'phucpc02265', 3, 1, 2850, N'0:0:52')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (126, N'phucpc02265', 6, 1, 2850, N'Complete')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (127, N'phucpc02265', 7, 1, 2850, N'Complete')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (128, N'minhjrt@gmail.COM', 61, 1, 2862, N'0:0:36')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (129, N'minhjrt@gmail.COM', 3, 1, 2850, N'0:0:1')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (130, N'minhjrt@gmail.COM', 6, 1, 2850, N'Complete')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (131, N'phucpc02265', 14, 1, 2850, N'0:1:38')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (132, N'phucpc02265', 47, 1, 2856, N'0:0:0')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (133, N'phucpc02265', 39, 1, 2858, N'0:0:2')
INSERT [dbo].[UserContent] ([id], [user_content], [content_id], [completed], [course_id], [time]) VALUES (134, N'phucpc02265', 23, 1, 2853, N'0:0:31')
SET IDENTITY_INSERT [dbo].[UserContent] OFF
GO
ALTER TABLE [dbo].[authority]  WITH CHECK ADD  CONSTRAINT [FK_authority_Account] FOREIGN KEY([tps_Username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[authority] CHECK CONSTRAINT [FK_authority_Account]
GO
ALTER TABLE [dbo].[authority]  WITH CHECK ADD  CONSTRAINT [FK_authority_Roles] FOREIGN KEY([tps_RoleId])
REFERENCES [dbo].[Roles] ([tps_Id])
GO
ALTER TABLE [dbo].[authority] CHECK CONSTRAINT [FK_authority_Roles]
GO
ALTER TABLE [dbo].[chapter]  WITH CHECK ADD  CONSTRAINT [FK_chapter_course] FOREIGN KEY([tps_idCourse])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[chapter] CHECK CONSTRAINT [FK_chapter_course]
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_content_chapter] FOREIGN KEY([tps_idChapter])
REFERENCES [dbo].[chapter] ([tps_id])
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_content_chapter]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_categoryy] FOREIGN KEY([tps_CategoryId])
REFERENCES [dbo].[category] ([tps_Id])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_categoryy]
GO
ALTER TABLE [dbo].[CourseCode]  WITH CHECK ADD  CONSTRAINT [FK_CourseCode_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[CourseCode] CHECK CONSTRAINT [FK_CourseCode_Account]
GO
ALTER TABLE [dbo].[CourseCode]  WITH CHECK ADD  CONSTRAINT [FK_CourseCode_course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[CourseCode] CHECK CONSTRAINT [FK_CourseCode_course]
GO
ALTER TABLE [dbo].[favoriteCrouse]  WITH CHECK ADD  CONSTRAINT [FK_favoriteCrouse_course] FOREIGN KEY([tps_CrouseId])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[favoriteCrouse] CHECK CONSTRAINT [FK_favoriteCrouse_course]
GO
ALTER TABLE [dbo].[neworder]  WITH CHECK ADD  CONSTRAINT [FK_neworder_Account] FOREIGN KEY([tps_username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[neworder] CHECK CONSTRAINT [FK_neworder_Account]
GO
ALTER TABLE [dbo].[neworder]  WITH CHECK ADD  CONSTRAINT [FK_neworder_course] FOREIGN KEY([tps_courseid])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[neworder] CHECK CONSTRAINT [FK_neworder_course]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Account] FOREIGN KEY([tps_Username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Account]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Account]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_course] FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_course]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Content] FOREIGN KEY([content_id])
REFERENCES [dbo].[Content] ([tps_Id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Content]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_course] FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_course]
GO
ALTER TABLE [dbo].[quizquestion]  WITH CHECK ADD  CONSTRAINT [FK_QuizQuestion_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[quizquestion] CHECK CONSTRAINT [FK_QuizQuestion_Quiz]
GO
ALTER TABLE [dbo].[quizresult]  WITH CHECK ADD  CONSTRAINT [FK_QuizResult_Account] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[quizresult] CHECK CONSTRAINT [FK_QuizResult_Account]
GO
ALTER TABLE [dbo].[quizresult]  WITH CHECK ADD  CONSTRAINT [FK_QuizResult_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[quizresult] CHECK CONSTRAINT [FK_QuizResult_Quiz]
GO
ALTER TABLE [dbo].[TransactionEntity]  WITH CHECK ADD  CONSTRAINT [FK_TransactionEntity_Payment] FOREIGN KEY([id_payment])
REFERENCES [dbo].[Payment] ([id])
GO
ALTER TABLE [dbo].[TransactionEntity] CHECK CONSTRAINT [FK_TransactionEntity_Payment]
GO
ALTER TABLE [dbo].[UserContent]  WITH CHECK ADD  CONSTRAINT [FK_UserContent_Account] FOREIGN KEY([user_content])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[UserContent] CHECK CONSTRAINT [FK_UserContent_Account]
GO
ALTER TABLE [dbo].[UserContent]  WITH CHECK ADD  CONSTRAINT [FK_UserContent_Content] FOREIGN KEY([content_id])
REFERENCES [dbo].[Content] ([tps_Id])
GO
ALTER TABLE [dbo].[UserContent] CHECK CONSTRAINT [FK_UserContent_Content]
GO
USE [master]
GO
ALTER DATABASE [KhoaHoc] SET  READ_WRITE 
GO