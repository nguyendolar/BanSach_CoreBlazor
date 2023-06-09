USE [master]
GO
/****** Object:  Database [DBPoPoy]    Script Date: 20/6/2023 5:13:31 PM ******/
CREATE DATABASE [DBPoPoy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBPoPoy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DBPoPoy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBPoPoy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DBPoPoy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBPoPoy] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBPoPoy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBPoPoy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBPoPoy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBPoPoy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBPoPoy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBPoPoy] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBPoPoy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBPoPoy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBPoPoy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBPoPoy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBPoPoy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBPoPoy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBPoPoy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBPoPoy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBPoPoy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBPoPoy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBPoPoy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBPoPoy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBPoPoy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBPoPoy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBPoPoy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBPoPoy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBPoPoy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBPoPoy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBPoPoy] SET  MULTI_USER 
GO
ALTER DATABASE [DBPoPoy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBPoPoy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBPoPoy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBPoPoy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBPoPoy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBPoPoy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBPoPoy] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBPoPoy] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBPoPoy]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Street] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Ward] [nvarchar](max) NULL,
	[District] [nvarchar](max) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[Dob] [datetime2](7) NOT NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[RefreshTokenExpiryTime] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductVariantQuantity] [int] NOT NULL,
	[SizeName] [nvarchar](max) NULL,
	[SizeId] [int] NOT NULL,
	[ColorName] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[PaymentMode] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 0) NOT NULL,
	[PayPalPayment] [float] NOT NULL,
	[VnPayPayment] [float] NOT NULL,
	[orderReference] [nvarchar](max) NULL,
	[CheckoutCount] [int] NOT NULL,
	[AddressId] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id] [uniqueidentifier] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[IsRead] [bit] NULL,
	[data] [nvarchar](max) NULL,
	[Created] [datetime2](7) NOT NULL,
	[SenderId] [uniqueidentifier] NULL,
	[ReceiverId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [uniqueidentifier] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[DataUrl] [varchar](500) NULL,
	[Data] [nvarchar](1000) NULL,
	[IsRead] [bit] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [nvarchar](450) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderIdFromOrder] [nvarchar](450) NULL,
	[Quantity] [int] NOT NULL,
	[SizeName] [nvarchar](max) NULL,
	[ColorName] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[AddressId] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 0) NOT NULL,
	[PaymentMode] [nvarchar](max) NULL,
	[PaymentGateUrl] [nvarchar](max) NULL,
	[OrderStatus] [int] NOT NULL,
	[PaymentStatus] [int] NOT NULL,
	[ShipperId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImagePath] [nvarchar](200) NOT NULL,
	[Caption] [nvarchar](200) NULL,
	[IsDefault] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[FileSize] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInCategories]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInCategories](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProductInCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductQuantities]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductQuantities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductQuantities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ReviewAverage] [decimal](18, 0) NOT NULL,
	[CheckoutCount] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Views] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refunds]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refunds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](450) NULL,
	[DateRefunded] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Refunds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 20/6/2023 5:13:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Rating] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ReviewText] [nvarchar](1000) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518142142_new-db', N'5.0.10')
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([Id], [UserId], [Street], [City], [Ward], [District]) VALUES (1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'dsdsds', N'Tỉnh Đắk Lắk', N'Phường Ea Tam', N'Thành phố Buôn Ma Thuột')
INSERT [dbo].[Addresses] ([Id], [UserId], [Street], [City], [Ward], [District]) VALUES (2, N'7fe70ebb-997b-4abb-11dc-08db669696ea', N'dsdsds', N'Tỉnh Cao Bằng', N'Xã Ngọc Động', N'Huyện Hà Quảng')
INSERT [dbo].[Addresses] ([Id], [UserId], [Street], [City], [Ward], [District]) VALUES (3, N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4', N'123 Abc', N'Tỉnh An Giang', N'Xã Ô Long Vỹ', N'Huyện Châu Phú')
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2e059aab-fb37-43b4-e9ea-08db57abf37c', N'Admin', N'Admin', N'ADMIN', N'5ceed90b-7465-4c3c-ae51-f1f9d42de005')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'df15b4ed-caff-4bb2-e9ec-08db57abf37c', N'Shipper', N'Shipper', N'SHIPPER', N'99ca0844-b9cc-4f8a-8351-15301e9b9c32')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8e190713-7095-4057-e9ed-08db57abf37c', N'Customer', N'Customer', N'CUSTOMER', N'94f910c2-1fcd-43d1-8fad-2b63249b07b9')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'101e7afb-8ce3-472f-e6f3-08db715ad6e6', N'Staff', N'Staff', N'STAFF', N'a457bb5e-c844-4a8a-b5ba-95f18422fe8b')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7fe70ebb-997b-4abb-11dc-08db669696ea', N'8e190713-7095-4057-e9ed-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4', N'8e190713-7095-4057-e9ed-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9ede171e-2b26-4a41-7849-08db715b0a00', N'df15b4ed-caff-4bb2-e9ec-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'2e059aab-fb37-43b4-e9ea-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb68ba60-95c6-41bc-901c-cf5b68e09398', N'df15b4ed-caff-4bb2-e9ec-08db57abf37c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7fe70ebb-997b-4abb-11dc-08db669696ea', N'Nhã', N'Lê Minh', CAST(N'0001-01-15T00:00:00.0000000' AS DateTime2), NULL, N'mPZxY5uPxeSu5how8naI4iNtLb1WLzz8U2s8mbN8aFE=', CAST(N'2023-06-15T21:56:57.0250168' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'minhnha120', N'MINHNHA120', N'nguyenminhnhacmu@gmail.com', N'NGUYENMINHNHACMU@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJaPLAOYMpm5hrS/TTvJ6NAHqmELp11+ue6M55jssukwkjA5LrQQrAwCYjJaKlxk0A==', N'JDWGK75YVEVTIP2YIQM2Y5LJG23GCQOR', N'9cf7ef39-8ac9-4fac-a7aa-0b6d5c80775a', N'0122341544', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4', N'Nguyên', N'Nguyên Cao', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'https://localhost:5001/uploads/346151872_292678013094441_3387973172499028672_n.png', N'iOlI81J89sDrg3UpwCObv6ZRd8jIlSVnGvDIZgTgGS0=', CAST(N'2023-06-26T17:44:45.1538690' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'nguyennguyen', N'NGUYENNGUYEN', N'nguyencaonguyencmu@gmail.com', N'NGUYENCAONGUYENCMU@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBzCf8Kux4+z1L+zDv8VE1jRIMq6qeiddaWUy+1L6RMk6myCkrM11Om7mjgsS31UAQ==', N'YPXW2LGY5OOHKXL4RQHKOSXNYOHPOZIO', N'5548d65b-d5dd-46b6-b0f4-31f246945d24', N'0394073746', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9ede171e-2b26-4a41-7849-08db715b0a00', N'Shipper', N'Duy', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'HBx9+Ch/7HIJmY/ibqX+f1P9qQGT8DV+1sTAs39YaxY=', CAST(N'2023-06-27T13:54:01.8133797' AS DateTime2), CAST(N'2023-06-20T06:53:22.6348291' AS DateTime2), N'duy', N'DUY', N'duy@gmail.com', N'DUY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEVSlZwvUFHFi5lAunMuDLcEdhbVid0F9zeu8VMB8f0nMifp3jh2remKmHyB3L3I5Q==', N'YZD6UUOFJRUQERHU5V444ALHIB2NWVFF', N'e3b78c57-4915-4497-b9d0-526b6a10b9c0', N'0354654784', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'Viên', N'Quản trị', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'aGY3ERGdtQyEgd2KR19t1ZS9g0v94whjNUC8JBpRA2Y=', CAST(N'2023-06-27T16:00:20.7425187' AS DateTime2), CAST(N'2023-05-18T14:27:04.0354745' AS DateTime2), N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBP4iUiuv4zv2doPQ01/Da3DUqNSElz/r2xDgMAb/JJ4BV+KvgFytnofEueRZt3AZw==', N'7ESWI6CORW3ZOU3VADHHFXNLS5D3REDU', N'78ee6ad9-f622-43a8-822f-5799dbeb12b5', N'032132131', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eb68ba60-95c6-41bc-901c-cf5b68e09398', N'Shipper', N'Hoàng', CAST(N'1999-10-01T00:00:00.0000000' AS DateTime2), NULL, N'K421z5XCe9Xw1RqreAkpu9AVUPexLfboVVA3R2hKmww=', CAST(N'2023-06-27T11:28:43.4934904' AS DateTime2), CAST(N'2023-05-18T14:27:04.2148213' AS DateTime2), N'shipper', N'SHIPPER', N'shipper@gmail.com', N'SHIPPER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBG8NhjzJTHO7oeOJwmygen/xWyDnqiRuCzoT5FoHacBljaEQ7nnYPob6ACjbV0DFw==', N'YXTGL2NV5HMJI4MWNJXUBMVOA2SI77PD', N'fc7b0c7a-a0ab-4684-b7b9-7b7ff66b8662', N'032232151', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [SortOrder], [Status], [Name], [Url]) VALUES (5, 1, 1, N'Sách tài chính', N'a')
INSERT [dbo].[Categories] ([Id], [SortOrder], [Status], [Name], [Url]) VALUES (7, 2, 1, N'Sách kĩ năng', N'b')
INSERT [dbo].[Categories] ([Id], [SortOrder], [Status], [Name], [Url]) VALUES (8, 3, 1, N'Sách thiếu nhi', N'c')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Chats] ([Id], [Message], [IsRead], [data], [Created], [SenderId], [ReceiverId]) VALUES (N'389d45bc-a903-4121-a77c-08db57ad8b95', N'ưewewe', 1, NULL, CAST(N'2023-05-18T21:38:28.5640528' AS DateTime2), N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Chats] ([Id], [Message], [IsRead], [data], [Created], [SenderId], [ReceiverId]) VALUES (N'3f38c36d-4c12-452d-a77d-08db57ad8b95', N'sdsdsds', 1, NULL, CAST(N'2023-05-18T21:42:51.4901473' AS DateTime2), N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
GO
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'e9a9e482-5d8c-422b-e03a-08db57ada7a3', CAST(N'2023-05-18T21:39:15.6447610' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p00949078', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'a2d50a25-6fd5-4250-e03b-08db57ada7a3', CAST(N'2023-05-18T21:39:15.7069732' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p00949078 được đặt thành công', N'user/list-order', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'c40d1ada-72f7-4f6d-e03c-08db57ada7a3', CAST(N'2023-05-18T21:40:23.9134406' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p01083791', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'6f605cae-2ab5-42b4-e03d-08db57ada7a3', CAST(N'2023-05-18T21:40:23.9576303' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p01083791 được đặt thành công', N'user/list-order', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'8d8e5837-53c2-4a99-e03e-08db57ada7a3', CAST(N'2023-05-18T21:42:36.5886903' AS DateTime2), N'Đơn hàng ship mới', N'Bạn được bàn giao một đơn hàng mới', N'/shipper', NULL, 0, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'e5f55c73-2ae9-42db-590c-08db6696cef7', CAST(N'2023-06-06T21:03:30.6175688' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p04761793', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'c7be33f9-e5fc-4e83-590d-08db6696cef7', CAST(N'2023-06-06T21:03:30.6857057' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p04761793 được đặt thành công', N'user/list-order', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'06567191-7387-4e39-590e-08db6696cef7', CAST(N'2023-06-06T21:29:48.1812194' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p08663604', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'6d1c0dc6-93c5-4cde-590f-08db6696cef7', CAST(N'2023-06-06T21:29:48.2147052' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p08663604 được đặt thành công', N'user/list-order', NULL, 1, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'd13ab1db-bbcd-4161-6928-08db669c717d', CAST(N'2023-06-06T21:43:50.7661946' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p06835937', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'709841a9-074f-48a1-6929-08db669c717d', CAST(N'2023-06-06T21:43:50.8421743' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p06835937 được đặt thành công', N'user/list-order', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'b562836b-0b4f-4239-9713-08db682ceaf5', CAST(N'2023-06-08T21:30:33.2507951' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p06406619', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'cda03a0a-a9a0-4043-9714-08db682ceaf5', CAST(N'2023-06-08T21:30:33.3237162' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p06406619 được đặt thành công', N'user/list-order', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'3ba6b204-218e-4b10-8426-08db683032f4', CAST(N'2023-06-08T21:54:02.5247835' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p01186975', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'73f5b548-b5eb-4d47-8427-08db683032f4', CAST(N'2023-06-08T21:54:02.6065815' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p01186975 được đặt thành công', N'user/list-order', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'8aaf330b-a239-46cb-0af3-08db6830ab22', CAST(N'2023-06-08T21:57:24.1504765' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p01782057', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'9d3f8bef-2307-4e78-0af4-08db6830ab22', CAST(N'2023-06-08T21:57:24.2259138' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p01782057 được đặt thành công', N'user/list-order', NULL, 1, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'7499951b-97a7-422b-4989-08db6d7eb7ef', CAST(N'2023-06-15T15:58:42.1864601' AS DateTime2), N'Đơn hàng ship mới', N'Bạn được bàn giao một đơn hàng mới', N'/shipper', NULL, 0, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'e460c566-920a-4848-5fc9-08db6e1c8f2c', CAST(N'2023-06-16T10:48:34.2564811' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng đã được shipper Shipper tiếp nhận', N'/order/p01186975', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'26ccf184-f409-4ffa-5fca-08db6e1c8f2c', CAST(N'2023-06-16T10:48:34.3955754' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng của bạn đã được shipper Shipper tiếp nhận', N'/order/p01186975', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'9ad5ec1d-9bb7-4489-5fcb-08db6e1c8f2c', CAST(N'2023-06-16T10:48:41.9813521' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng p01186975 của bạn đã được giao thành công', N'/order/p01186975', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'a9a8a796-70bc-4a78-5fcc-08db6e1c8f2c', CAST(N'2023-06-16T10:48:42.0345151' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng p01186975 của bạn đã được giao thành công', N'/order/p01186975', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'0d385a8c-7eed-46c7-8907-08db70b40233', CAST(N'2023-06-19T17:57:43.5555492' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p06402028', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'10927f78-fdc9-4119-8908-08db70b40233', CAST(N'2023-06-19T17:57:43.7825795' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p06402028 được đặt thành công', N'user/list-order', NULL, 0, N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'345be1c6-8183-405d-e387-08db70b5d751', CAST(N'2023-06-19T18:10:50.5920200' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p04743119', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'f6ccbfba-7e8d-4683-e388-08db70b5d751', CAST(N'2023-06-19T18:10:50.8028414' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p04743119 được đặt thành công', N'user/list-order', NULL, 0, N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'b176fc4b-6c79-4934-e389-08db70b5d751', CAST(N'2023-06-19T18:41:43.4382195' AS DateTime2), N'Đơn hàng ship mới', N'Bạn được bàn giao một đơn hàng mới', N'/shipper', NULL, 0, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'b78e42e8-ebaa-4ac3-e38a-08db70b5d751', CAST(N'2023-06-19T18:44:10.5184321' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng đã được shipper Shipper tiếp nhận', N'/order/p04743119', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'6c98d640-b8a8-4e47-e38b-08db70b5d751', CAST(N'2023-06-19T18:44:10.5901884' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng của bạn đã được shipper Shipper tiếp nhận', N'/order/p04743119', NULL, 0, N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'0ab0ee49-84fd-495c-e38c-08db70b5d751', CAST(N'2023-06-19T18:44:18.6673735' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng p04743119 của bạn đã được giao thành công', N'/order/p04743119', NULL, 1, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'dfa71899-35f9-49c9-e38d-08db70b5d751', CAST(N'2023-06-19T18:44:18.7178993' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng p04743119 của bạn đã được giao thành công', N'/order/p04743119', NULL, 0, N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'e892087a-b650-4e8c-47e1-08db7157135b', CAST(N'2023-06-20T13:25:00.3519539' AS DateTime2), N'Đơn hàng ship mới', N'Bạn được bàn giao một đơn hàng mới', N'/shipper', NULL, 0, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'e4fd07e9-aca3-44d3-95d0-08db715b3588', CAST(N'2023-06-20T13:54:35.6768241' AS DateTime2), N'Đơn hàng ship mới', N'Bạn được bàn giao một đơn hàng mới', N'/shipper', NULL, 0, N'9ede171e-2b26-4a41-7849-08db715b0a00')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'3a68deec-bd9f-4a60-95d1-08db715b3588', CAST(N'2023-06-20T14:00:32.8442895' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng đã được shipper Shipper tiếp nhận', N'/order/p01782057', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'09ecb019-5cba-4b2c-95d2-08db715b3588', CAST(N'2023-06-20T14:00:33.2057296' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng của bạn đã được shipper Shipper tiếp nhận', N'/order/p01782057', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'4766e385-9e43-47f4-95d3-08db715b3588', CAST(N'2023-06-20T14:06:08.3157071' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng p01782057 của bạn đã được giao thành công', N'/order/p01782057', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'398563d0-8165-4dbf-95d4-08db715b3588', CAST(N'2023-06-20T14:06:08.4001497' AS DateTime2), N'Cập nhật trạng thái đơn hàng', N'Đơn hàng p01782057 của bạn đã được giao thành công', N'/order/p01782057', NULL, 0, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p02480010', 25, N'p01186975', 2, N'38', 0, CAST(12000 AS Decimal(18, 0)), 24000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p05513391', 26, N'p04743119', 3, N'38', 0, CAST(12000 AS Decimal(18, 0)), 36000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p06817182', 26, N'p01782057', 1, N'38', 0, CAST(12000 AS Decimal(18, 0)), 12000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p07079458', 26, N'p06406619', 1, N'38', 0, CAST(12000 AS Decimal(18, 0)), 12000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p08814281', 29, N'p01186975', 1, N'38', 0, CAST(12000 AS Decimal(18, 0)), 12000)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p01186975', N'7fe70ebb-997b-4abb-11dc-08db669696ea', 2, CAST(N'2023-06-08T21:54:02.3268446' AS DateTime2), CAST(236000 AS Decimal(18, 0)), N'PayPal', N'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-65783113KU4592516', 3, 1, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p01782057', N'7fe70ebb-997b-4abb-11dc-08db669696ea', 2, CAST(N'2023-06-08T21:57:24.0067117' AS DateTime2), CAST(112000 AS Decimal(18, 0)), N'PayPal', N'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-16S86357MR723645J', 3, 1, N'9ede171e-2b26-4a41-7849-08db715b0a00')
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p04743119', N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4', 3, CAST(N'2023-06-19T18:10:50.3414446' AS DateTime2), CAST(36000 AS Decimal(18, 0)), N'CashOnDelivery', NULL, 3, 1, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p06406619', N'7fe70ebb-997b-4abb-11dc-08db669696ea', 2, CAST(N'2023-06-08T21:30:33.0051103' AS DateTime2), CAST(112000 AS Decimal(18, 0)), N'PayPal', N'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-47210035V6120223Y', 1, 1, N'eb68ba60-95c6-41bc-901c-cf5b68e09398')
GO
SET IDENTITY_INSERT [dbo].[ProductColors] ON 

INSERT [dbo].[ProductColors] ([Id], [ColorName]) VALUES (4, N'default')
SET IDENTITY_INSERT [dbo].[ProductColors] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (9, 25, N'https://localhost:5001/uploads/daCC82CC80u-tuCC9B-taCC80i-chiCC81nh.jpg', NULL, 0, CAST(N'2023-06-19T17:35:44.7479217' AS DateTime2), 0, 151477)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (10, 26, N'https://localhost:5001/uploads/2.jpg', NULL, 0, CAST(N'2023-06-19T16:05:34.0233807' AS DateTime2), 0, 57045)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (11, 27, N'https://localhost:5001/uploads/3.jpg', NULL, 0, CAST(N'2023-06-19T17:07:24.3137232' AS DateTime2), 0, 64254)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (12, 28, N'https://localhost:5001/uploads/4.jpg', NULL, 0, CAST(N'2023-06-19T17:28:35.6186626' AS DateTime2), 0, 77246)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (13, 29, N'https://localhost:5001/uploads/5.jpg', NULL, 0, CAST(N'2023-06-19T17:30:53.3169189' AS DateTime2), 0, 62133)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (14, 30, N'https://localhost:5001/uploads/6-1.jpg', NULL, 0, CAST(N'2023-06-19T17:31:10.7370656' AS DateTime2), 0, 19142)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (15, 31, N'https://localhost:5001/uploads/6.jpg', NULL, 0, CAST(N'2023-06-19T17:31:22.5188533' AS DateTime2), 0, 116658)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (16, 32, N'https://localhost:5001/uploads/8.jpg', NULL, 0, CAST(N'2023-06-19T17:31:50.9361190' AS DateTime2), 0, 135257)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (17, 36, N'https://localhost:5001/uploads/9.jpg', NULL, 0, CAST(N'2023-06-19T17:32:03.8270524' AS DateTime2), 0, 138567)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (18, 37, N'https://localhost:5001/uploads/111.jpg', NULL, 0, CAST(N'2023-06-19T17:32:20.2181302' AS DateTime2), 0, 112321)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [ImagePath], [Caption], [IsDefault], [DateCreated], [SortOrder], [FileSize]) VALUES (20, 44, N'https://localhost:5001/uploads/tlcc.jpg', NULL, 0, CAST(N'2023-06-20T15:19:01.1606885' AS DateTime2), 0, 85734)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (25, 5)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (26, 5)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (27, 5)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (28, 5)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (29, 7)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (30, 7)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (31, 7)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (32, 7)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (36, 8)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (37, 8)
INSERT [dbo].[ProductInCategories] ([ProductId], [CategoryId]) VALUES (44, 8)
GO
SET IDENTITY_INSERT [dbo].[ProductQuantities] ON 

INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (60, 25, 1, 4, 100, CAST(24000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (61, 26, 1, 4, 300, CAST(22000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (62, 27, 1, 4, 100, CAST(32000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (63, 28, 1, 4, 100, CAST(40000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (64, 29, 1, 4, 70, CAST(66000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (65, 30, 1, 4, 90, CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (66, 31, 1, 4, 100, CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (67, 32, 1, 4, 100, CAST(58000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (68, 36, 1, 4, 100, CAST(62000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (69, 37, 1, 4, 100, CAST(34000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (71, 44, 1, 4, 200, CAST(45000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductQuantities] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (25, N'Đầu Tư Tài Chính', N'Quyển sách Đầu Tư Tài Chính được biên dịch từ tác phẩm “Investment”, là một tác phẩm kinh điển về đầu tư tài chính, được biên soạn dựa theo chương trình học cho các nhà đầu tư tài chính chuyên nghiệp trong các công ty quỹ đầu tư, định chế tài chính lớn đó là chứng chỉ uy tín CFA (Chartered Financial Analysis), nhưng với cách tiếp cận gần gũi cho mọi nhà đầu tư và mang tính thực chiến ngay từ đầu', CAST(2 AS Decimal(18, 0)), 0, 5, 19, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (26, N'Tâm Lý Học Về Tiền', N'Tiền bạc có ở khắp mọi nơi, nó ảnh hưởng đến tất cả chúng ta, và khiến phần lớn chúng ta bối rối. Mọi người nghĩ về nó theo những cách hơi khác nhau một chút. Nó mang lại những bài học có thể được áp dụng tới rất nhiều lĩnh vực trong cuộc sống, như rủi ro, sự tự tin, và hạnh phúc. Rất ít chủ đề cung cấp một lăng kính phóng to đầy quyền lực giúp giải thích vì sao mọi người lại hành xử theo cách họ làm hơn là về tiền bạc. Đó mới là một trong những chương trình hoành tráng nhất trên thế giới.', CAST(5 AS Decimal(18, 0)), 4, 5, 25, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (27, N'Thế Giới Phẳng', N'Trong xu thế toàn cầu hóa, việc tiếp cận và tham khảo những tri thức đương đại từ những nước đã phát triển về sự chuyển động của thế giới (đang ở bước ngoặt từ “tròn” sang “phẳng”, như cách nói của tác giả) có lẽ sẽ giúp chúng ta có thêm những thông tin bổ ích để có sự chủ động trong quá trình hội nhập.', CAST(2 AS Decimal(18, 0)), 0, 5, 1, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (28, N'Nghệ Thuật Quản Lý Tài Chính Cá Nhân', N'Trong cuốn sách “Nghệ thuật quản lý tài chính cá nhân”, Brian Tracy cùng cộng sự Dan Strutzel sẽ liên tục vén lên những bức màn bí ẩn về tiền bạc, mạnh mẽ xóa sạch mọi nhầm tưởng hoang đường, thẳng thắn điểm mặt chỉ tên từng hành vi và thái độ lố bịch của con người trong việc kiếm tiền, tiêu tiền và sản sinh dòng tiền; đồng thời trực tiếp phơi bày cho bạn thấy, trong bộ môn nghệ thuật quản lý tài chính cá nhân vĩ đại, bạn là tay mơ hay một nghệ sĩ đại tài.', CAST(2 AS Decimal(18, 0)), 0, 5, 5, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (29, N'Tư Duy Nhanh Và Chậm', N'
Nhưng sự thật là, dù bạn có cẩn trọng tới mức nào, thì trong cuộc sống hàng ngày hay trong vấn đề liên quan đến kinh tế, bạn vẫn có những quyết định dựa trên cảm tính chủ quan của mình. “Tư duy nhanh và chậm”, cuốn sách nổi tiếng tổng hợp tất cả nghiên cứu được tiến hành qua nhiều thập kỷ của nhà tâm lý học từng đạt giải Nobel Kinh tế Daniel Kahneman sẽ cho bạn thấy những sư hợp lý và phi lý trong tư duy của chính bạn.', CAST(2 AS Decimal(18, 0)), 2, 7, 6, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (30, N'Hội Chứng E', N'<div>Một bộ phim ngắn bí ẩn và độc hại khiến người xem đột ngột bị mù Vậy là đủ để đi tong toàn bộ kỳ nghỉ hè của trung úy cảnh sát Lucie Hennebelle.</div><div><br></div><div>Năm xác chết bị cắt xẻ tàn bạo được tìm thấy trong tình trạng mất não, mất mắt, và phân hủy đến khó lòng nhận dạ Chẳng cần gì hơn thế để mời gọi thanh tra trưởng Franck Sharko đang trong kỳ nghỉ cưỡng chế phải quay trở lại đội Hình sự.</div><div><br></div><div>Hai hướng điều tra cho cùng một vụ án duy nhấ sẽ kết hợp Hennebelle và Sharko, đưa họ đi từ những khu ổ chuột nhơ nhớp ở Cairo đến các trại trẻ mồ côi ở Canada, để rồi đối mặt với một tội ác có một không hai, một thực tế tàn bạo, hé lộ sự thật rằng tất cả chúng ta ai cũng đều có thể phạm phải điều tồi tệ nhất.</div>', CAST(2 AS Decimal(18, 0)), 0, 7, 2, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (31, N'Sức Mạnh Của Hiện Tại', N'Sức Mạnh Của Hiện Tại được viết một cách súc tích và thâm thuý nên nhiều khi ta chỉ cần đọc một cây hay một đoạn ngắn thì đã cảm thấy vừa đủ, vì quả thực chúng ta cần có không gian để chiêm nghiệm những điều sâu sắc mà tác giả đã đưa ra. Nhờ sử dụng ngôn ngữ đương đại nên “Sức Mạnh Của Hiện Tại” dễ dàng đi vào lòng độc giả. Cuốn sách này có năng lực rất lớn để giúp bạn chuyển hoá khổ đau và đưa bạn đến giải thoát.', CAST(2 AS Decimal(18, 0)), 0, 7, 3, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (32, N'Vĩ Đại Do Lựa Chọn', N'
Jim Collins là tác giả của hai đầu sách nổi tiếng – Từ tốt đến vĩ đại và Xây dựng để trường tồn. Cùng với phương pháp nghiên cứu như hai cuốn đầu tiên, trong quyển sách này, Jim Collins cùng với Morten T. Hansen đi tìm câu trả lời cho câu hỏi, tại sao các công ty vĩ đại vẫn trường tồn trong những lúc khó khăn, hỗn loạn. Qua rất nhiều năm nghiên cứu khoa học từ những công ty và các lãnh đạo hàng đầu, hai tác giả rút ra được kết luận rằng: Chúng tôi không tin cuộc sống sẽ trở nên tốt đẹp hơn hay có một phép nhiệm mầu và đoán định được tương lai, nhưng có thể nói nhữg tác động phức tạp, toàn cầu hóa và công nghệ đang thúc đẩy thay đổi và càng dễ bị thay đổi hơn bao giờ hết. Chúng tôi cảm thấy trấn tĩnh vì chúng tôi đã hiểu hơn phải có những gì để sống sót, lèo lái và chiến thắng. Theo chúng tôi, trường tồn và tiêu vong phụ thuộc vào những hành động của chúng ta hơn là những gì mà thế giới gây cho chúng ta, và sự vĩ đại không chỉ là một cuộc chinh phục về kinh doanh, nó là cuộc chinh phục của con người.', CAST(2 AS Decimal(18, 0)), 0, 7, 0, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (36, N'Ăn dặm không phải là cuộc chiến', N'
Sử dụng sức mạnh của truyền khẩu, trực tuyến hay ngoài đời, đòi hỏi ta phải hiểu về việc tại sao mọi người nói về những điều đó và tại sao một số thứ lại được nói và chia sẻ nhiều hơn những thứ khác. Trong một buổi tiệc, bạn có thể sẽ nói về một bộ phim hay về một đồng nghiệp. Bạn có thể trao đổi các câu chuyện về việc đi du lịch, nhắc đến con của một ai đó, hoặc phàn nàn về thời tiết đột nhiên ấm bất thường.', CAST(2 AS Decimal(18, 0)), 0, 8, 1, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (37, N'Ăn dặm kiểu nhật', N'Giai đoạn ăn dặm có vai trò là giai đoạn chuẩn bị để trẻ chuyển từ bú mẹ, uống sữa ngoài sang “nhai nát và nuốt”. Điều quan trọng của giai đoạn này không chỉ là cho trẻ ăn và theo dõi đảm bảo sự phát triển của trẻ mà còn phải theo dõi chức năng ăn và lôi kéo hợp lý sự ham thích ăn của trẻ, làm cho trẻ tự lập. Để làm được những việc đó, thống nhất quan điểm là rất quan trọng, phải thống nhất về việc lựa chọn thực phẩm, lượng ăn, cách ăn, những người lớn xung quanh giúp đỡ như thế nào. Tuy nhiên việc ăn dặm là việc hàng ngày. Bạn có đang băn khoăn trăn trở nên cho trẻ ăn gì, ăn bao nhiêu, ăn như thế nào không. Trong giai đoạn lần đầu tiên bé tiếp xúc với thức ăn, nếu mọi người xung quanh bé quá nhạy cảm, lo lắng về bữa ăn dặm của trẻ, lo lắng đó sẽ truyền sang bé và thường làm mất đi không khí của bữa ăn vốn dĩ là vui vẻ.', CAST(2 AS Decimal(18, 0)), 0, 8, 3, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (44, N'Những Tấm Lòng Cao Cả', N'<p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Những Tấm Lòng Cao Cả</p><p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Những tấm lòng cao cả (Cuore) ra đời từ những năm 80 của thế kỷ 19 đã làm cho tên tuổi nhà văn Edmondo De Amicis (1846 - 1908) trở nên nổi tiếng khắp thế giới.</p><p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Cho đến nay tác phẩm bất hủ này vẫn vang vọng và để lại dấu ấn đậm nét trong lòng người đọc đặc biệt là các em thiếu nhi ở các thời đại khác nhau.</p><p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Đó là một câu chuyện giản dị, với những con người bình thường nhất nhưng nhân cách của họ, mối quan hệ của họ, cùng những tấm lòng cao cả, thánh thiện của họ mãi là những bài học đạo đức sâu sắc và đáng quý.</p><p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Một cậu bé ngưòi Ý, Enrico, hằng ngày ghi lại những việc lớn nhỏ diễn ra trong đời học sinh của cậu, những cảm tưởng và suy nghĩ của cậu thành một cuốn nhật ký.</p><p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Sách được tái bản lần thứ 2.</p><p style="margin: 5px 0px 12px; line-height: 21px; word-break: break-word; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p>', CAST(0 AS Decimal(18, 0)), 0, 8, 4, CAST(N'2023-06-20T14:23:12.1135158' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSizes] ON 

INSERT [dbo].[ProductSizes] ([Id], [SizeName]) VALUES (1, N'38')
INSERT [dbo].[ProductSizes] ([Id], [SizeName]) VALUES (2, N'39')
INSERT [dbo].[ProductSizes] ([Id], [SizeName]) VALUES (3, N'40')
SET IDENTITY_INSERT [dbo].[ProductSizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [Title], [ReviewText], [CreateDate], [UpdateDate]) VALUES (1, 26, N'0ad1a303-7b2c-4b44-66a1-08db70b1e7a4', 5, N'Cực kỳ hài lòng', N'Sp ok', CAST(N'2023-06-19T18:47:33.1263071' AS DateTime2), CAST(N'2023-06-19T18:47:33.1263071' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Addresses_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Addresses_AddressId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products_ProductId]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_AspNetUsers_ReceiverId] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_AspNetUsers_ReceiverId]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_AspNetUsers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_AspNetUsers_SenderId]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderIdFromOrder] FOREIGN KEY([OrderIdFromOrder])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderIdFromOrder]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Addresses_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Addresses_AddressId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_ShipperId] FOREIGN KEY([ShipperId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_ShipperId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductInCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductInCategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[ProductInCategories] CHECK CONSTRAINT [FK_ProductInCategories_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ProductInCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductInCategories_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductInCategories] CHECK CONSTRAINT [FK_ProductInCategories_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_ProductColors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[ProductColors] ([Id])
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_ProductColors_ColorId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_ProductSizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[ProductSizes] ([Id])
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_ProductSizes_SizeId]
GO
ALTER TABLE [dbo].[Refunds]  WITH CHECK ADD  CONSTRAINT [FK_Refunds_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Refunds] CHECK CONSTRAINT [FK_Refunds_Orders_OrderId]
GO
USE [master]
GO
ALTER DATABASE [DBPoPoy] SET  READ_WRITE 
GO
