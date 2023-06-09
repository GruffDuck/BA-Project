/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2022 (16.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2022
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [AssetDB]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AssetDB')
BEGIN
CREATE DATABASE [AssetDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AssetDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AssetDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AssetDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AssetDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE Turkish_CI_AS
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
END
GO
ALTER DATABASE [AssetDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssetDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssetDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssetDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssetDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssetDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssetDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssetDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AssetDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssetDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssetDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssetDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssetDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssetDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssetDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssetDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssetDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AssetDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssetDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssetDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssetDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssetDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssetDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssetDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssetDB] SET RECOVERY FULL 
GO
ALTER DATABASE [AssetDB] SET  MULTI_USER 
GO
ALTER DATABASE [AssetDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssetDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssetDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssetDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AssetDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AssetDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AssetDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [AssetDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLTELEMETRY$SQLEXPRESS')
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT Service\MSSQL$SQLEXPRESS')
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-0VM93PF\Ba]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'DESKTOP-0VM93PF\Ba')
CREATE LOGIN [DESKTOP-0VM93PF\Ba] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [as]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'as')
CREATE LOGIN [as] WITH PASSWORD=N'yArVTqAjYOiqtZjULwlfBI+QPf0s61Xb8AxiMeTp3xU=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [as] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'VyuMVoUuBCFFhhrsJdhj3k4iyZPpaiDHVJrbLEWZKEI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 3/23/2023 2:09:39 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'zrbXttrLpewpiBIStDIB0iLIcog4H45Vht5o0BRt5Ks=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[AssetDB] TO [sa]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-0VM93PF\Ba]
GO
USE [AssetDB]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[ActionStatus]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActionStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetActionID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ActionStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ActionStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Asset](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsBarcode] [bit] NULL,
	[CompanyID] [int] NOT NULL,
	[AssetGroupID] [int] NOT NULL,
	[BrandModelID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Cost] [money] NOT NULL,
	[Guarantee] [bit] NULL,
	[EntryDate] [datetime] NULL,
	[RetireDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[RegistrationNumber] [uniqueidentifier] NULL,
	[AssetTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Asset] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetAction]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetAction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetAction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetAction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetAction] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetActionOptions]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetActionOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetActionOptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[IsTitle] [bit] NULL,
	[Description] [nvarchar](100) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetActionOptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetActionOptions] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetBarcode]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetBarcode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetBarcode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[Barcode] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetBarcode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetBarcode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetCustomer]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetCustomer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetCustomer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetCustomer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetGroup]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetGroup] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetOwner]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetOwner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[OwnerTypeID] [int] NOT NULL,
	[OwnerID] [int] NOT NULL,
	[DebitReason] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetOwner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetOwner] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetStatus]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[Note] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Date] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetType]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetWithoutBarcode]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetWithoutBarcode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AssetWithoutBarcode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[BrandModel]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandModel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BrandModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[IsBrand] [bit] NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
	[Model] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
 CONSTRAINT [PK_BrandModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[BrandModel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[Note] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[Date] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Comment] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Communication]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Communication]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Communication](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[CommunicationTypeID] [int] NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Communication] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Communication] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[CommunicationType]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommunicationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CommunicationType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CommunicationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[CommunicationType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Company]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[ID] [int] NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Company] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Currency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Currency] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionNumber] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[LastName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Customer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Login]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[Password] [nchar](20) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[PersonnelID] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Login] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[OwnerType]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OwnerType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OwnerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_OwnerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[OwnerType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personnel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Personnel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[CompanyID] [int] NOT NULL,
	[Name] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[IsTeam] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Personnel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Personnel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[RolePersonnel]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePersonnel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RolePersonnel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RolePersonnel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[RolePersonnel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Statu]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Statu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Statu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Statu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Statu] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Unit] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[ActionStatus] ON 

INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (10, 12, 8, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (11, 13, 9, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (12, 14, 10, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (13, 15, 11, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (14, 16, 12, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (15, 17, 13, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [IsActive]) VALUES (16, 18, 14, 1)
SET IDENTITY_INSERT [dbo].[ActionStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Asset] ON 

INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (5, 0, 1, 1, 12, 1, N'Apple ', 25.0000, 1, NULL, NULL, NULL, N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (6, 0, 2, 2, 8, 3, N'Xiaomi ', 5.0000, 1, NULL, NULL, NULL, N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (7, 0, 1, 3, 5, 2, N'Samsung ', 10.0000, 1, NULL, NULL, NULL, N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 3)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (8, 0, 1, 4, 13, 2, N'Google', 25.0000, 1, CAST(N'2023-03-21T03:38:05.120' AS DateTime), NULL, CAST(N'2023-03-21T03:38:05.120' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (9, 0, 1, 5, 14, 1, N'Samsung', 47.3200, 1, CAST(N'2023-03-21T03:41:17.500' AS DateTime), NULL, CAST(N'2023-03-21T03:41:17.500' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (10, 0, 2, 6, 15, 2, N'Apple', 52.9800, 1, CAST(N'2023-03-21T03:42:02.447' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.447' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (11, 0, 1, 7, 16, 3, N'Sony', 78.4400, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 3)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (12, 0, 2, 8, 17, 1, N'LG', 93.5600, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (13, 0, 1, 9, 18, 2, N'Nokia', 65.2100, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (14, 0, 2, 10, 19, 3, N'Motorola', 87.8900, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 3)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (15, 0, 1, 11, 20, 1, N'Huawei', 36.7700, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (16, 0, 2, 12, 21, 2, N'Xiaomi', 51.6300, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (17, 0, 1, 13, 22, 3, N'Asus', 99.1200, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 3)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (18, 0, 2, 14, 23, 1, N'ZTE', 75.2900, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (19, 0, 1, 15, 24, 2, N'Oppo', 48.7200, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (20, 0, 2, 16, 25, 3, N'Vivo', 62.8400, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 3)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (21, 0, 1, 17, 26, 1, N'Realme', 55.2100, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (22, 0, 2, 18, 27, 2, N'Blackberry', 41.9800, 1, CAST(N'2023-03-21T03:42:02.450' AS DateTime), NULL, CAST(N'2023-03-21T03:42:02.450' AS DateTime), N'Admin', NULL, NULL, 1, N'b2345678-90a1-4def-2345-67890abcdef1', 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (23, 1, 1, 1, 34, 3, NULL, 2000.0000, 0, CAST(N'2023-03-23T00:08:54.740' AS DateTime), CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-03-23T00:08:54.740' AS DateTime), N'Admin', NULL, NULL, 1, NULL, 13)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (24, 0, 2, 1, 8, 1, NULL, 1.0000, 0, CAST(N'2023-03-23T00:12:12.307' AS DateTime), CAST(N'2023-03-23T00:11:56.170' AS DateTime), CAST(N'2023-03-23T00:12:12.307' AS DateTime), N'Admin', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (26, 0, 2, 1, 5, 1, N'Samsung', 1.0000, 0, CAST(N'2023-03-23T00:18:12.527' AS DateTime), CAST(N'2023-03-23T00:17:55.640' AS DateTime), CAST(N'2023-03-23T00:18:12.527' AS DateTime), N'Admin', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (27, 0, 2, 1, 32, 1, N'Google', 1.0000, 0, CAST(N'2023-03-23T00:18:42.540' AS DateTime), CAST(N'2023-03-23T00:17:55.640' AS DateTime), CAST(N'2023-03-23T00:18:42.540' AS DateTime), N'Admin', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (28, 0, 2, 1, 14, 1, N'Xiaomi', 1.0000, 0, CAST(N'2023-03-23T00:20:01.893' AS DateTime), CAST(N'2023-03-23T00:19:45.860' AS DateTime), CAST(N'2023-03-23T00:20:01.893' AS DateTime), N'Admin', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (29, 1, 2, 1, 5, 1, N'Samsung', 1.0000, 0, CAST(N'2023-03-23T00:26:55.093' AS DateTime), CAST(N'2023-03-23T00:26:39.923' AS DateTime), CAST(N'2023-03-23T00:26:55.093' AS DateTime), N'1', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (30, 1, 2, 1, 12, 1, N'Apple', 1.0000, 0, CAST(N'2023-03-23T00:35:31.807' AS DateTime), CAST(N'2023-03-23T00:35:16.600' AS DateTime), CAST(N'2023-03-23T00:35:31.807' AS DateTime), N'1', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (31, 1, 2, 1, 12, 1, N'Apple', 1.0000, 1, CAST(N'2023-03-23T00:37:25.370' AS DateTime), CAST(N'2023-03-23T00:37:09.663' AS DateTime), CAST(N'2023-03-23T00:37:25.370' AS DateTime), N'GruffDuck', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Asset] ([ID], [IsBarcode], [CompanyID], [AssetGroupID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [RegistrationNumber], [AssetTypeID]) VALUES (32, 1, 2, 1, 30, 1, N'Samsung', 1.0000, 0, CAST(N'2023-03-23T01:35:37.613' AS DateTime), CAST(N'2023-03-23T01:35:17.103' AS DateTime), CAST(N'2023-03-23T01:35:37.613' AS DateTime), N'1', NULL, NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Asset] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetAction] ON 

INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (12, N'-', 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (13, N'-', 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (14, N'-', 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (15, N'-', 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (16, N'-', 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (17, N'-', 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [IsActive]) VALUES (18, N'-', 1)
SET IDENTITY_INSERT [dbo].[AssetAction] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetActionOptions] ON 

INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [IsTitle], [Description], [IsActive]) VALUES (1, 1, 1, N'-', 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [IsTitle], [Description], [IsActive]) VALUES (2, 2, 1, N'-', 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [IsTitle], [Description], [IsActive]) VALUES (3, 3, 1, N'-', 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [IsTitle], [Description], [IsActive]) VALUES (4, 4, 1, N'-', 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [IsTitle], [Description], [IsActive]) VALUES (5, 5, 1, N'-', 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [IsTitle], [Description], [IsActive]) VALUES (6, 6, 1, N'-', 1)
SET IDENTITY_INSERT [dbo].[AssetActionOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetCustomer] ON 

INSERT [dbo].[AssetCustomer] ([ID], [AssetID], [CustomerID], [IsActive]) VALUES (7, 5, 2, 1)
INSERT [dbo].[AssetCustomer] ([ID], [AssetID], [CustomerID], [IsActive]) VALUES (8, 6, 3, 1)
INSERT [dbo].[AssetCustomer] ([ID], [AssetID], [CustomerID], [IsActive]) VALUES (10, 7, 8, 1)
SET IDENTITY_INSERT [dbo].[AssetCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetGroup] ON 

INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (1, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (2, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (3, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (4, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (5, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (6, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (7, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (8, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (9, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (10, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (11, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (12, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (13, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (14, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (15, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (16, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (17, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (18, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (19, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (20, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (21, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (22, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (23, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (24, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (25, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (26, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (27, N'-', 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [IsActive]) VALUES (28, N'-', 1)
SET IDENTITY_INSERT [dbo].[AssetGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetStatus] ON 

INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [IsActive]) VALUES (1, 5, 2, 8, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [IsActive]) VALUES (8, 6, 5, 9, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [IsActive]) VALUES (9, 7, 6, 10, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetType] ON 

INSERT [dbo].[AssetType] ([ID], [Description], [IsActive]) VALUES (1, N'Turkcell Seri Bazlı', 1)
INSERT [dbo].[AssetType] ([ID], [Description], [IsActive]) VALUES (2, N'Zimmetlenebilen', 1)
INSERT [dbo].[AssetType] ([ID], [Description], [IsActive]) VALUES (3, N'Sarf Malzeme', 1)
INSERT [dbo].[AssetType] ([ID], [Description], [IsActive]) VALUES (13, N'Telefon', 1)
SET IDENTITY_INSERT [dbo].[AssetType] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetWithoutBarcode] ON 

INSERT [dbo].[AssetWithoutBarcode] ([ID], [AssetID], [UnitID], [Quantity], [IsActive]) VALUES (1, 5, 1, CAST(10 AS Decimal(18, 0)), 1)
INSERT [dbo].[AssetWithoutBarcode] ([ID], [AssetID], [UnitID], [Quantity], [IsActive]) VALUES (4, 6, 1, CAST(15 AS Decimal(18, 0)), 1)
INSERT [dbo].[AssetWithoutBarcode] ([ID], [AssetID], [UnitID], [Quantity], [IsActive]) VALUES (5, 7, 1, CAST(25 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[AssetWithoutBarcode] OFF
GO
SET IDENTITY_INSERT [dbo].[BrandModel] ON 

INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (5, 4, 1, N'Samsung', 1, N'Galaxy Tab 3')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (8, 5, 1, N'Xiaomi', 1, N'Poco X3')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (12, 1, 1, N'Apple', 1, N'IPhone14')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (13, 6, 1, N'Google', 1, N'Pixel 6')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (14, 7, 1, N'Xiaomi', 1, N'Mi 12')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (15, 8, 1, N'Oppo', 1, N'Find X4')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (16, 9, 1, N'Huawei', 1, N'Mate 50')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (17, 10, 1, N'Sony', 1, N'Xperia 1 III')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (18, 11, 1, N'LG', 1, N'Velvet 3')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (19, 12, 1, N'Nokia', 1, N'9 PureView')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (20, 13, 1, N'Motorola', 1, N'Moto G9')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (21, 14, 1, N'Asus', 1, N'Zenfone 8')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (22, 15, 1, N'HTC', 1, N'U21')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (23, 16, 1, N'BlackBerry', 1, N'KEY3')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (24, 17, 1, N'Lenovo', 1, N'Legion Duel 2')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (25, 18, 1, N'ZTE', 1, N'Axon 30')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (26, 19, 1, N'Realme', 1, N'GT Neo 2')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (27, 20, 1, N'Vivo', 1, N'X70')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (28, 21, 1, N'POCO', 1, N'F4')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (29, 22, 1, N'Redmi', 1, N'Note 11')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (30, 23, 1, N'Samsung', 1, N'Galaxy S21')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (31, 24, 1, N'Apple', 1, N'iPhone 14')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (32, 25, 1, N'Google', 1, N'Pixel 6')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (33, 26, 1, N'OnePlus', 1, N'10')
INSERT [dbo].[BrandModel] ([ID], [MasterID], [IsBrand], [Description], [IsActive], [Model]) VALUES (34, NULL, NULL, N'Nokia', 1, N'1100')
SET IDENTITY_INSERT [dbo].[BrandModel] OFF
GO
SET IDENTITY_INSERT [dbo].[Communication] ON 

INSERT [dbo].[Communication] ([ID], [PersonnelID], [CommunicationTypeID], [Description], [IsActive]) VALUES (1, 2, 2, N'-', 1)
INSERT [dbo].[Communication] ([ID], [PersonnelID], [CommunicationTypeID], [Description], [IsActive]) VALUES (2, 6, 3, N'-', 1)
INSERT [dbo].[Communication] ([ID], [PersonnelID], [CommunicationTypeID], [Description], [IsActive]) VALUES (3, 7, 1, N'-', 1)
INSERT [dbo].[Communication] ([ID], [PersonnelID], [CommunicationTypeID], [Description], [IsActive]) VALUES (4, 18, 4, N'-', 1)
INSERT [dbo].[Communication] ([ID], [PersonnelID], [CommunicationTypeID], [Description], [IsActive]) VALUES (5, 19, 2, N'-', 1)
INSERT [dbo].[Communication] ([ID], [PersonnelID], [CommunicationTypeID], [Description], [IsActive]) VALUES (6, 20, 1, N'-', 1)
SET IDENTITY_INSERT [dbo].[Communication] OFF
GO
SET IDENTITY_INSERT [dbo].[CommunicationType] ON 

INSERT [dbo].[CommunicationType] ([ID], [Description], [IsActive]) VALUES (1, N'E posta', 1)
INSERT [dbo].[CommunicationType] ([ID], [Description], [IsActive]) VALUES (2, N'Ev telefonu', 1)
INSERT [dbo].[CommunicationType] ([ID], [Description], [IsActive]) VALUES (3, N'İş Telefonu', 1)
INSERT [dbo].[CommunicationType] ([ID], [Description], [IsActive]) VALUES (4, N'Cep Telefonu', 1)
SET IDENTITY_INSERT [dbo].[CommunicationType] OFF
GO
INSERT [dbo].[Company] ([ID], [Description], [IsActive]) VALUES (1, N'Turkcell', 1)
INSERT [dbo].[Company] ([ID], [Description], [IsActive]) VALUES (2, N'BilgeAdam', 1)
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([ID], [Description], [IsActive]) VALUES (1, N'TRY', 1)
INSERT [dbo].[Currency] ([ID], [Description], [IsActive]) VALUES (2, N'EUR', 1)
INSERT [dbo].[Currency] ([ID], [Description], [IsActive]) VALUES (3, N'USD', 1)
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (2, N'34b27456-4497-45dc-bf14-d88ece0d8ba4', N'Bekir', N'Deliküçük', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (3, N'34b27456-4497-45dc-bf14-d88ade0d8ba4', N'Hüseyin', N'Özgüven', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (5, N'34b27456-4497-45dc-bf14-d88ece1d8ba4', N'Mehmet', N'Yalınbaş', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (6, N'a1234567-89b0-4cde-1234-56789abcdef0', N'John', N'Doe', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (7, N'b1234567-89b0-4cde-1234-56789abcdef1', N'Jane', N'Doe', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (8, N'c1234567-89b0-4cde-1234-56789abcdef2', N'Bob', N'Smith', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (9, N'd1234567-89b0-4cde-1234-56789abcdef3', N'Sarah', N'Johnson', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (10, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Michael', N'Davis', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (18, N'a1234567-89b0-4cde-1234-56789abcded0', N'John', N'Doe', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (21, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Ahmet', N'Kazaz', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (22, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Mehmet', N'Koca', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (23, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Hayri', N'Mayri', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (24, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Hayriye', N'Çot', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (25, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Hüsniye', N'Kes', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (26, N'e1234567-89b0-4cde-1234-56789abcdef4', N'İbrahim', N'Kel', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (27, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Arzu', N'Gılgamış', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (28, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Aysel', N'Lale', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (29, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Dilara', N'Beş Parmak', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (30, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Atakan', N'Erdoğan', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (31, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Çakır', N'Beyi', 1)
INSERT [dbo].[Customer] ([ID], [SubscriptionNumber], [FirstName], [LastName], [IsActive]) VALUES (32, N'e1234567-89b0-4cde-1234-56789abcdef4', N'Polat', N'Alemdar', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (6, N'hsynozgvn', N'ozguven             ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 2)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (7, N'ayseyilmaz', N'yilmaz              ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 19)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (8, N'mehmetalii', N'alii                ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 18)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (9, N'fatmakaya', N'kaya                ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 5)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (10, N'ahmetdemir', N'demir               ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 6)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (11, N'sevgiyildiz', N'yildiz              ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 7)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (12, N'mustafaakinci', N'akinci              ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 20)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (13, N'gizemaydin', N'aydin               ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 21)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (14, N'emresahin', N'sahin               ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 22)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (15, N'zeynepdurmaz', N'durmaz              ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 23)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (19, N'deneme', N'deneme              ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 24)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (20, N'1', N'1                   ', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', CAST(N'2023-03-19T00:00:00.000' AS DateTime), N'Admin', 1, 25)
INSERT [dbo].[Login] ([ID], [UserName], [Password], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive], [PersonnelID]) VALUES (22, N'GruffDuck', N'g                   ', NULL, N'Admin', NULL, N'Admin', 1, 23)
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[OwnerType] ON 

INSERT [dbo].[OwnerType] ([ID], [Description], [IsActive]) VALUES (7, N'Personel', 1)
INSERT [dbo].[OwnerType] ([ID], [Description], [IsActive]) VALUES (8, N'Ekip', 1)
SET IDENTITY_INSERT [dbo].[OwnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Personnel] ON 

INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 1, N'Hüseyin ÖZGÜVEN', 0, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (5, 2, 1, N'Ayşe Yılmaz', 0, 1, CAST(N'2022-01-02T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (6, 3, 2, N'Mehmet Ali', 0, 1, CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (7, 4, 2, N'Fatma Kaya', 0, 1, CAST(N'2022-01-04T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (18, 2, 2, N'Bekir DELİKÜÇÜK', 1, 1, CAST(N'2022-01-02T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (19, 3, 1, N'Dilara ALTIPARMAK', 0, 0, CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (20, 5, 1, N'Ahmet Demir', 1, 1, CAST(N'2022-01-05T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (21, 6, 2, N'Sevgi Yıldız', 1, 1, CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (22, 7, 1, N'Mustafa Akıncı', 0, 1, CAST(N'2022-01-07T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (23, 8, 2, N'Gizem Aydın', 0, 1, CAST(N'2022-01-08T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (24, 9, 1, N'Emre Şahin', 1, 1, CAST(N'2022-01-09T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (25, 10, 2, N'Zeynep Durmaz', 1, 1, CAST(N'2022-01-10T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Personnel] ([ID], [MasterID], [CompanyID], [Name], [IsTeam], [IsActive], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (26, 11, 1, N'Deniz Gökmen', 0, 1, CAST(N'2022-01-11T00:00:00.000' AS DateTime), N'Admin', N'Admin', CAST(N'2022-01-11T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Personnel] OFF
GO
SET IDENTITY_INSERT [dbo].[RolePersonnel] ON 

INSERT [dbo].[RolePersonnel] ([ID], [PersonnelID], [RoleID], [IsActive]) VALUES (1, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[RolePersonnel] OFF
GO
SET IDENTITY_INSERT [dbo].[Statu] ON 

INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (8, 1, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (9, 2, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (10, 3, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (11, 4, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (12, 5, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (13, 6, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (14, 7, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (15, 8, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (16, 9, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (17, 10, N'-', 1)
INSERT [dbo].[Statu] ([ID], [MasterID], [Description], [IsActive]) VALUES (18, 11, N'-', 1)
SET IDENTITY_INSERT [dbo].[Statu] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([ID], [Description], [IsActive]) VALUES (1, N'Adet', 1)
INSERT [dbo].[Unit] ([ID], [Description], [IsActive]) VALUES (2, N'Metre', 1)
INSERT [dbo].[Unit] ([ID], [Description], [IsActive]) VALUES (3, N'Litre', 1)
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ActionStatus_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActionStatus] ADD  CONSTRAINT [DF_ActionStatus_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Asset_IsBarcode]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF_Asset_IsBarcode]  DEFAULT ((0)) FOR [IsBarcode]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Asset_Guarantee]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF_Asset_Guarantee]  DEFAULT ((1)) FOR [Guarantee]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Asset_EntryDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF_Asset_EntryDate]  DEFAULT (getdate()) FOR [EntryDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Asset_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF_Asset_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Asset_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF_Asset_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetAction_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetAction] ADD  CONSTRAINT [DF_AssetAction_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetActionOptions_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetActionOptions] ADD  CONSTRAINT [DF_AssetActionOptions_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetBarcode_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetBarcode] ADD  CONSTRAINT [DF_AssetBarcode_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetCustomer_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetCustomer] ADD  CONSTRAINT [DF_AssetCustomer_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetGroup_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetGroup] ADD  CONSTRAINT [DF_AssetGroup_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetOwner_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetOwner] ADD  CONSTRAINT [DF_AssetOwner_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetStatus_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetStatus] ADD  CONSTRAINT [DF_AssetStatus_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetType_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetType] ADD  CONSTRAINT [DF_AssetType_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AssetWithoutBarcode_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssetWithoutBarcode] ADD  CONSTRAINT [DF_AssetWithoutBarcode_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_BrandModel_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BrandModel] ADD  CONSTRAINT [DF_BrandModel_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Comment_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Communication_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Communication] ADD  CONSTRAINT [DF_Communication_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_CommunicationType_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CommunicationType] ADD  CONSTRAINT [DF_CommunicationType_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Company_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Currency_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF_Currency_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Customer_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Login_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Login_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_OwnerType_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OwnerType] ADD  CONSTRAINT [DF_OwnerType_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Personnel_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Personnel] ADD  CONSTRAINT [DF_Personnel_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_RolePersonnel_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RolePersonnel] ADD  CONSTRAINT [DF_RolePersonnel_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Statu_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Statu] ADD  CONSTRAINT [DF_Statu_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Unit_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF_Unit_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActionStatus_AssetAction]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActionStatus]'))
ALTER TABLE [dbo].[ActionStatus]  WITH CHECK ADD  CONSTRAINT [FK_ActionStatus_AssetAction] FOREIGN KEY([AssetActionID])
REFERENCES [dbo].[AssetAction] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActionStatus_AssetAction]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActionStatus]'))
ALTER TABLE [dbo].[ActionStatus] CHECK CONSTRAINT [FK_ActionStatus_AssetAction]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActionStatus_Statu]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActionStatus]'))
ALTER TABLE [dbo].[ActionStatus]  WITH CHECK ADD  CONSTRAINT [FK_ActionStatus_Statu] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Statu] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActionStatus_Statu]') AND parent_object_id = OBJECT_ID(N'[dbo].[ActionStatus]'))
ALTER TABLE [dbo].[ActionStatus] CHECK CONSTRAINT [FK_ActionStatus_Statu]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_AssetGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_AssetGroup] FOREIGN KEY([AssetGroupID])
REFERENCES [dbo].[AssetGroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_AssetGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_AssetGroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_AssetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_AssetType] FOREIGN KEY([AssetTypeID])
REFERENCES [dbo].[AssetType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_AssetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_AssetType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_BrandModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_BrandModel] FOREIGN KEY([BrandModelID])
REFERENCES [dbo].[BrandModel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_BrandModel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_BrandModel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_Currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asset_Currency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Asset]'))
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_Currency]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetBarcode_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetBarcode]'))
ALTER TABLE [dbo].[AssetBarcode]  WITH CHECK ADD  CONSTRAINT [FK_AssetBarcode_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetBarcode_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetBarcode]'))
ALTER TABLE [dbo].[AssetBarcode] CHECK CONSTRAINT [FK_AssetBarcode_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetCustomer_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetCustomer]'))
ALTER TABLE [dbo].[AssetCustomer]  WITH CHECK ADD  CONSTRAINT [FK_AssetCustomer_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetCustomer_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetCustomer]'))
ALTER TABLE [dbo].[AssetCustomer] CHECK CONSTRAINT [FK_AssetCustomer_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetCustomer_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetCustomer]'))
ALTER TABLE [dbo].[AssetCustomer]  WITH CHECK ADD  CONSTRAINT [FK_AssetCustomer_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetCustomer_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetCustomer]'))
ALTER TABLE [dbo].[AssetCustomer] CHECK CONSTRAINT [FK_AssetCustomer_Customer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetOwner_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetOwner]'))
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetOwner_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetOwner]'))
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetOwner_AssetActionOptions]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetOwner]'))
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_AssetActionOptions] FOREIGN KEY([DebitReason])
REFERENCES [dbo].[AssetActionOptions] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetOwner_AssetActionOptions]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetOwner]'))
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_AssetActionOptions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetOwner_OwnerType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetOwner]'))
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_OwnerType] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[OwnerType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetOwner_OwnerType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetOwner]'))
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_OwnerType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetStatus_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetStatus]'))
ALTER TABLE [dbo].[AssetStatus]  WITH CHECK ADD  CONSTRAINT [FK_AssetStatus_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetStatus_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetStatus]'))
ALTER TABLE [dbo].[AssetStatus] CHECK CONSTRAINT [FK_AssetStatus_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetStatus_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetStatus]'))
ALTER TABLE [dbo].[AssetStatus]  WITH CHECK ADD  CONSTRAINT [FK_AssetStatus_Personnel] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetStatus_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetStatus]'))
ALTER TABLE [dbo].[AssetStatus] CHECK CONSTRAINT [FK_AssetStatus_Personnel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetStatus_Statu]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetStatus]'))
ALTER TABLE [dbo].[AssetStatus]  WITH CHECK ADD  CONSTRAINT [FK_AssetStatus_Statu] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Statu] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetStatus_Statu]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetStatus]'))
ALTER TABLE [dbo].[AssetStatus] CHECK CONSTRAINT [FK_AssetStatus_Statu]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetWithoutBarcode_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]'))
ALTER TABLE [dbo].[AssetWithoutBarcode]  WITH CHECK ADD  CONSTRAINT [FK_AssetWithoutBarcode_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetWithoutBarcode_Asset]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]'))
ALTER TABLE [dbo].[AssetWithoutBarcode] CHECK CONSTRAINT [FK_AssetWithoutBarcode_Asset]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetWithoutBarcode_Unit]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]'))
ALTER TABLE [dbo].[AssetWithoutBarcode]  WITH CHECK ADD  CONSTRAINT [FK_AssetWithoutBarcode_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssetWithoutBarcode_Unit]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]'))
ALTER TABLE [dbo].[AssetWithoutBarcode] CHECK CONSTRAINT [FK_AssetWithoutBarcode_Unit]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Personnel] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Personnel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Communication_CommunicationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Communication]'))
ALTER TABLE [dbo].[Communication]  WITH CHECK ADD  CONSTRAINT [FK_Communication_CommunicationType] FOREIGN KEY([CommunicationTypeID])
REFERENCES [dbo].[CommunicationType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Communication_CommunicationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Communication]'))
ALTER TABLE [dbo].[Communication] CHECK CONSTRAINT [FK_Communication_CommunicationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Communication_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Communication]'))
ALTER TABLE [dbo].[Communication]  WITH CHECK ADD  CONSTRAINT [FK_Communication_Personnel] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Communication_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Communication]'))
ALTER TABLE [dbo].[Communication] CHECK CONSTRAINT [FK_Communication_Personnel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Personnel] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Login_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login]'))
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Personnel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Personnel_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Personnel]'))
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD  CONSTRAINT [FK_Personnel_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Personnel_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Personnel]'))
ALTER TABLE [dbo].[Personnel] CHECK CONSTRAINT [FK_Personnel_Company]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RolePersonnel_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[RolePersonnel]'))
ALTER TABLE [dbo].[RolePersonnel]  WITH CHECK ADD  CONSTRAINT [FK_RolePersonnel_Personnel] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RolePersonnel_Personnel]') AND parent_object_id = OBJECT_ID(N'[dbo].[RolePersonnel]'))
ALTER TABLE [dbo].[RolePersonnel] CHECK CONSTRAINT [FK_RolePersonnel_Personnel]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertAsset]    Script Date: 3/23/2023 2:09:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertAsset]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_InsertAsset] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_InsertAsset]
	@barcode [bit],
	@assetType [nvarchar](100),
	@startDate [datetime],
	@endDate [datetime],
	@money [money],
	@brand [nvarchar](100),
	@model [nvarchar](100),
	@cost [nvarchar](100),
	@guarantee [bit],
	@companyId [int],
	@createdBy [nvarchar](50),
	@retireDate [datetime]
WITH EXECUTE AS CALLER
AS
BEGIN
    DECLARE @assetTypeId INT
    DECLARE @brandId INT
    DECLARE @currencyId INT
    DECLARE @assetId INT
    DECLARE @assetGroupId INT -- AssetGroupID için bir değişken tanımlıyoruz

    BEGIN TRANSACTION

    IF NOT EXISTS (SELECT * FROM AssetType WHERE Description = @assetType)
    BEGIN
        INSERT INTO AssetType (Description) VALUES (@assetType)
    END

    SELECT @assetTypeId = ID FROM AssetType WHERE Description = @assetType

    IF NOT EXISTS (SELECT * FROM Currency WHERE Description = @cost)
    BEGIN
        INSERT INTO Currency (Description) VALUES (@cost)
    END

    SELECT @currencyId = ID FROM Currency WHERE Description = @cost

    IF EXISTS (SELECT * FROM BrandModel WHERE Description = @brand AND Model = @model)
    BEGIN
        SELECT @brandId = ID FROM BrandModel WHERE Description = @brand AND Model = @model
    END
    ELSE
    BEGIN
        INSERT INTO BrandModel (Model, Description) VALUES (@model, @brand)
        SELECT @brandId = SCOPE_IDENTITY()
    END

    -- AssetGroupID'yi 1 olarak atıyoruz
    SET @assetGroupId = 1

    INSERT INTO Asset (IsBarcode, Cost, Guarantee, AssetTypeID, CompanyID, BrandModelID,CurrencyID, Description,RetireDate,CreatedBy,AssetGroupID)
    VALUES (@barcode, @money, @guarantee, @assetTypeId, @companyId, @brandId, @currencyId,@brand,@retireDate,@createdBy, @assetGroupId)

    COMMIT TRANSACTION
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_InsertAsset] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[sp_InsertAsset] TO  SCHEMA OWNER 
GO
USE [master]
GO
ALTER DATABASE [AssetDB] SET  READ_WRITE 
GO
