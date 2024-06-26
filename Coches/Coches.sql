USE [master]
GO
/****** Object:  Database [Coches]    Script Date: 21/06/2024 14:30:53 ******/
CREATE DATABASE [Coches]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coches', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Coches.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coches_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Coches_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Coches] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coches].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coches] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coches] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coches] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coches] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coches] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coches] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coches] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coches] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coches] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coches] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coches] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coches] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coches] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coches] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coches] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coches] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coches] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coches] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coches] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coches] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coches] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coches] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coches] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Coches] SET  MULTI_USER 
GO
ALTER DATABASE [Coches] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coches] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coches] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coches] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coches] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Coches] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Coches] SET QUERY_STORE = OFF
GO
USE [Coches]
GO
/****** Object:  Table [dbo].[cars]    Script Date: 21/06/2024 14:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cars](
	[id] [int] NOT NULL,
	[make] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[price_per_day] [real] NULL,
 CONSTRAINT [PK_cars] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cars] ([id], [make], [model], [price_per_day]) VALUES (1, N'Toyota', N'Camry', 105.5)
INSERT [dbo].[cars] ([id], [make], [model], [price_per_day]) VALUES (2, N'Honda', N'Civic', 95)
INSERT [dbo].[cars] ([id], [make], [model], [price_per_day]) VALUES (3, N'Ford', N'Focus', 75.25)
INSERT [dbo].[cars] ([id], [make], [model], [price_per_day]) VALUES (4, N'Chevrolet', N'Malibu', 110)
INSERT [dbo].[cars] ([id], [make], [model], [price_per_day]) VALUES (5, N'Hyundai', N'Elantra', 90.75)
GO
USE [master]
GO
ALTER DATABASE [Coches] SET  READ_WRITE 
GO
