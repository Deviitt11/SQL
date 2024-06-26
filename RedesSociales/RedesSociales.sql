USE [master]
GO
/****** Object:  Database [RedesSociales]    Script Date: 23/06/2024 14:22:25 ******/
CREATE DATABASE [RedesSociales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RedesSociales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RedesSociales.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RedesSociales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RedesSociales_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RedesSociales] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RedesSociales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RedesSociales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RedesSociales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RedesSociales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RedesSociales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RedesSociales] SET ARITHABORT OFF 
GO
ALTER DATABASE [RedesSociales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RedesSociales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RedesSociales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RedesSociales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RedesSociales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RedesSociales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RedesSociales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RedesSociales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RedesSociales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RedesSociales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RedesSociales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RedesSociales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RedesSociales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RedesSociales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RedesSociales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RedesSociales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RedesSociales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RedesSociales] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RedesSociales] SET  MULTI_USER 
GO
ALTER DATABASE [RedesSociales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RedesSociales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RedesSociales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RedesSociales] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RedesSociales] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RedesSociales] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RedesSociales] SET QUERY_STORE = OFF
GO
USE [RedesSociales]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 23/06/2024 14:22:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[post_id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[topic] [varchar](50) NULL,
	[likes] [int] NULL,
 CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[posts] ([post_id], [name], [topic], [likes]) VALUES (1, N'Rock Concert', N'Music', 100)
INSERT [dbo].[posts] ([post_id], [name], [topic], [likes]) VALUES (2, N'Beach Paradise', N'Travel', 200)
INSERT [dbo].[posts] ([post_id], [name], [topic], [likes]) VALUES (3, N'Delicious Delights', N'Food', 150)
INSERT [dbo].[posts] ([post_id], [name], [topic], [likes]) VALUES (4, N'Street Art', N'Art', 120)
INSERT [dbo].[posts] ([post_id], [name], [topic], [likes]) VALUES (5, N'Jazz Night', N'Music', 80)
INSERT [dbo].[posts] ([post_id], [name], [topic], [likes]) VALUES (6, N'Mountain Escape', N'Travel', 250)
GO
USE [master]
GO
ALTER DATABASE [RedesSociales] SET  READ_WRITE 
GO
