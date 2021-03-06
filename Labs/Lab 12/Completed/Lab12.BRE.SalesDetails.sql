USE [master]
GO
/****** Object:  Database [SalesDetails]    Script Date: 09/30/2013 15:02:59 ******/
CREATE DATABASE [SalesDetails] ON  PRIMARY 
( NAME = N'SalesDetails', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SalesDetails.mdf' , SIZE = 5072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SalesDetails_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SalesDetails_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SalesDetails] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesDetails].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SalesDetails] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SalesDetails] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SalesDetails] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SalesDetails] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SalesDetails] SET ARITHABORT OFF
GO
ALTER DATABASE [SalesDetails] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SalesDetails] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SalesDetails] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SalesDetails] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SalesDetails] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SalesDetails] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SalesDetails] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SalesDetails] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SalesDetails] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SalesDetails] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SalesDetails] SET  DISABLE_BROKER
GO
ALTER DATABASE [SalesDetails] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SalesDetails] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SalesDetails] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SalesDetails] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SalesDetails] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SalesDetails] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SalesDetails] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SalesDetails] SET  READ_WRITE
GO
ALTER DATABASE [SalesDetails] SET RECOVERY FULL
GO
ALTER DATABASE [SalesDetails] SET  MULTI_USER
GO
ALTER DATABASE [SalesDetails] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SalesDetails] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SalesDetails', N'ON'
GO
USE [SalesDetails]
GO
/****** Object:  Table [dbo].[CustomerSalesStatistics]    Script Date: 09/30/2013 15:03:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerSalesStatistics](
	[CustomerId] [int] NOT NULL,
	[CustomerName] [varchar](250) NOT NULL,
	[Quota] [decimal](10, 0) NOT NULL,
	[TotalOrdersToDate] [decimal](10, 0) NOT NULL,
	[Rank] [int] NOT NULL,
 CONSTRAINT [PK_CustomerSalesStatistics] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CustomerSalesStatistics] ([CustomerId], [CustomerName], [Quota], [TotalOrdersToDate], [Rank]) VALUES (1, N'Fabrikam', CAST(2200 AS Decimal(10, 0)), CAST(100000 AS Decimal(10, 0)), 1)
INSERT [dbo].[CustomerSalesStatistics] ([CustomerId], [CustomerName], [Quota], [TotalOrdersToDate], [Rank]) VALUES (2, N'SLR', CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), 0)
INSERT [dbo].[CustomerSalesStatistics] ([CustomerId], [CustomerName], [Quota], [TotalOrdersToDate], [Rank]) VALUES (3, N'Contoso LTD', CAST(15000 AS Decimal(10, 0)), CAST(12200 AS Decimal(10, 0)), 2)
