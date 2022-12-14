USE [master]
GO
/****** Object:  Database [Quanlythuexe]    Script Date: 11/24/2022 11:38:01 PM ******/
CREATE DATABASE [Quanlythuexe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quanlythuexe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Quanlythuexe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Quanlythuexe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Quanlythuexe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Quanlythuexe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlythuexe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlythuexe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlythuexe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlythuexe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlythuexe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlythuexe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlythuexe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quanlythuexe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlythuexe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlythuexe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlythuexe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlythuexe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlythuexe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlythuexe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlythuexe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlythuexe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quanlythuexe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlythuexe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlythuexe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlythuexe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlythuexe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlythuexe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlythuexe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlythuexe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Quanlythuexe] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlythuexe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlythuexe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quanlythuexe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quanlythuexe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Quanlythuexe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Quanlythuexe]
GO
/****** Object:  Table [dbo].[Quanlychuxe]    Script Date: 11/24/2022 11:38:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quanlychuxe](
	[IDcar] [nchar](10) NULL,
	[Biensoxe] [nvarchar](50) NULL,
	[IDchuxe] [nvarchar](50) NOT NULL,
	[Tenchuxe] [nvarchar](50) NULL,
	[Sdt] [nchar](10) NULL,
 CONSTRAINT [PK_Quanlychuxe] PRIMARY KEY CLUSTERED 
(
	[IDchuxe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quanlyhopdong]    Script Date: 11/24/2022 11:38:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quanlyhopdong](
	[IDcar] [nvarchar](50) NOT NULL,
	[Biensoxe] [nvarchar](50) NULL,
	[IDchuxe] [nvarchar](50) NULL,
	[IDkhachhang] [nvarchar](50) NULL,
	[Ngaythue] [date] NULL,
	[Ngaytra] [date] NULL,
	[Phithue] [money] NOT NULL,
 CONSTRAINT [PK_Quanlyhopdong] PRIMARY KEY CLUSTERED 
(
	[IDcar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quanlykhachhang]    Script Date: 11/24/2022 11:38:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quanlykhachhang](
	[IDcus] [nvarchar](50) NOT NULL,
	[Tenkhachhang] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[IDcus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quanlyxe]    Script Date: 11/24/2022 11:38:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quanlyxe](
	[IDcar] [nvarchar](50) NOT NULL,
	[Biensoxe] [nvarchar](50) NULL,
	[Hangxe] [nvarchar](50) NULL,
	[Giathue] [money] NULL,
	[Tinhtrangxe] [nvarchar](50) NULL,
	[Tinhtrangthue] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quanlyxe_1] PRIMARY KEY CLUSTERED 
(
	[IDcar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Quanlychuxe] ([IDcar], [Biensoxe], [IDchuxe], [Tenchuxe], [Sdt]) VALUES (N'2111
    ', N'79H3992
', N'21110876', N'Đăng', N'012345615 ')
INSERT [dbo].[Quanlychuxe] ([IDcar], [Biensoxe], [IDchuxe], [Tenchuxe], [Sdt]) VALUES (N'3212
    ', N'79H3992
', N'21111879', N'Tuấn Anh', N'977728484 ')
INSERT [dbo].[Quanlychuxe] ([IDcar], [Biensoxe], [IDchuxe], [Tenchuxe], [Sdt]) VALUES (N'2113
    ', N'50H3291', N'21119068', N'Ngu Ngoc T', N'789922113 ')
INSERT [dbo].[Quanlychuxe] ([IDcar], [Biensoxe], [IDchuxe], [Tenchuxe], [Sdt]) VALUES (N'2112
    ', N'98K9232
', N'2119078', N'Truong Van S', N'326821123 ')
INSERT [dbo].[Quanlykhachhang] ([IDcus], [Tenkhachhang], [Diachi], [Sdt]) VALUES (N'21110389
', N'Nguyen Thi C
', N'Can Tho
', N'732312321
')
INSERT [dbo].[Quanlykhachhang] ([IDcus], [Tenkhachhang], [Diachi], [Sdt]) VALUES (N'21110392
', N'Tran Van A
', N'Tp HCM
', N'932712231
')
INSERT [dbo].[Quanlykhachhang] ([IDcus], [Tenkhachhang], [Diachi], [Sdt]) VALUES (N'21110789
', N'Ho Van L
', N'Ca Mau
', N'321812829
')
INSERT [dbo].[Quanlyxe] ([IDcar], [Biensoxe], [Hangxe], [Giathue], [Tinhtrangxe], [Tinhtrangthue]) VALUES (N'2111
', N'79H3992
', N'Tesla', 300000.0000, N'Bình thường', N'Đang cho thuê')
INSERT [dbo].[Quanlyxe] ([IDcar], [Biensoxe], [Hangxe], [Giathue], [Tinhtrangxe], [Tinhtrangthue]) VALUES (N'2112
', N'98K9232
', N'Vinfast
', 900000.0000, N'Bình Thường
', N'Đang cho thuê')
INSERT [dbo].[Quanlyxe] ([IDcar], [Biensoxe], [Hangxe], [Giathue], [Tinhtrangxe], [Tinhtrangthue]) VALUES (N'2113
', N'Honda
', N'68U3222
', 2000000.0000, N'Hỏng', N'Chưa cho thuê')
INSERT [dbo].[Quanlyxe] ([IDcar], [Biensoxe], [Hangxe], [Giathue], [Tinhtrangxe], [Tinhtrangthue]) VALUES (N'3212
', N'50H3291', N'Vinfast
', 1200000.0000, N'Bình Thường
', N'Chưa cho thuê')
USE [master]
GO
ALTER DATABASE [Quanlythuexe] SET  READ_WRITE 
GO
