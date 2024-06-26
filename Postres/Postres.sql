USE [master]
GO
/****** Object:  Database [Postres]    Script Date: 20/06/2024 15:41:56 ******/
CREATE DATABASE [Postres]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Postres', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Postres.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Postres_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Postres_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Postres] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Postres].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Postres] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Postres] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Postres] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Postres] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Postres] SET ARITHABORT OFF 
GO
ALTER DATABASE [Postres] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Postres] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Postres] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Postres] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Postres] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Postres] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Postres] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Postres] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Postres] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Postres] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Postres] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Postres] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Postres] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Postres] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Postres] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Postres] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Postres] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Postres] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Postres] SET  MULTI_USER 
GO
ALTER DATABASE [Postres] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Postres] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Postres] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Postres] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Postres] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Postres] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Postres] SET QUERY_STORE = OFF
GO
USE [Postres]
GO
/****** Object:  Table [dbo].[desserts]    Script Date: 20/06/2024 15:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desserts](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[price] [real] NULL,
 CONSTRAINT [PK_desserts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (1, N'chocolate cake', 6.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (2, N'chocolate chip cookies', 3.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (3, N'chocolate mousse', 5.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (4, N'strawberry cheesecakeº', 7.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (5, N'vanilla ice cream', 4.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (6, N'raspberry sorbet', 4.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (7, N'caramel flan', 5.99)
INSERT [dbo].[desserts] ([id], [name], [price]) VALUES (8, N'chocolate brownie', 6.99)
GO
USE [master]
GO
ALTER DATABASE [Postres] SET  READ_WRITE 
GO
