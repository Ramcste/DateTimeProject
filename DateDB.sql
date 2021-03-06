USE [master]
GO
/****** Object:  Database [Date]    Script Date: 04/07/2015 10:12:03 PM ******/
CREATE DATABASE [Date]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Date', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Date.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Date_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Date_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Date] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Date].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Date] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Date] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Date] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Date] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Date] SET ARITHABORT OFF 
GO
ALTER DATABASE [Date] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Date] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Date] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Date] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Date] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Date] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Date] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Date] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Date] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Date] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Date] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Date] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Date] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Date] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Date] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Date] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Date] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Date] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Date] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Date] SET  MULTI_USER 
GO
ALTER DATABASE [Date] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Date] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Date] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Date] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Date]
GO
/****** Object:  Table [dbo].[Table_Date]    Script Date: 04/07/2015 10:12:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Date](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Table_Date] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Table_Date] ON 

INSERT [dbo].[Table_Date] ([Id], [Date]) VALUES (1, CAST(0xCE390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Table_Date] OFF
USE [master]
GO
ALTER DATABASE [Date] SET  READ_WRITE 
GO
