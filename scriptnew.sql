USE [DBPoPoy]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Addresses]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Carts]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Chats]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[ProductColors]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[ProductImages]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[ProductInCategories]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[ProductQuantities]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Refunds]    Script Date: 6/8/2023 10:01:40 PM ******/
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
/****** Object:  Table [dbo].[Reviews]    Script Date: 6/8/2023 10:01:40 PM ******/
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
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2e059aab-fb37-43b4-e9ea-08db57abf37c', N'Admin', N'Admin', N'ADMIN', N'5ceed90b-7465-4c3c-ae51-f1f9d42de005')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c6158c81-b6aa-4a2f-e9eb-08db57abf37c', N'Staff', N'Staff', N'STAFF', N'32ba85e5-4504-48a0-ada0-d318ded859af')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'df15b4ed-caff-4bb2-e9ec-08db57abf37c', N'Shipper', N'Shipper', N'SHIPPER', N'99ca0844-b9cc-4f8a-8351-15301e9b9c32')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8e190713-7095-4057-e9ed-08db57abf37c', N'Customer', N'Customer', N'CUSTOMER', N'94f910c2-1fcd-43d1-8fad-2b63249b07b9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'2e059aab-fb37-43b4-e9ea-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb68ba60-95c6-41bc-901c-cf5b68e09398', N'df15b4ed-caff-4bb2-e9ec-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee3fcca1-d264-425a-9019-06d92409a0af', N'8e190713-7095-4057-e9ed-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7fe70ebb-997b-4abb-11dc-08db669696ea', N'8e190713-7095-4057-e9ed-08db57abf37c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6ce0c6a8-f56e-413b-878a-780c54c895d0', N'8e190713-7095-4057-e9ed-08db57abf37c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee3fcca1-d264-425a-9019-06d92409a0af', N'Mr', N'Thành đẹp trai', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-18T14:27:04.1978196' AS DateTime2), N'thanhitc', N'THANHITC', N'thanhitc@gmail.com', N'THANHITC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELPazwrqtx8Tch5ENwmbSyuja+DUB15xWq2WnK2GBffIr9i1gyWxt2vHpRmDt0Rl1Q==', N'Z3DFJXEXJQ46HQ43Q36MXYHYQTOSZTEO', N'643fb574-3b55-444c-b8e5-0051fe8a273a', N'032232131', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7fe70ebb-997b-4abb-11dc-08db669696ea', N'ádasd', N'ád', CAST(N'0001-01-15T00:00:00.0000000' AS DateTime2), NULL, N'mPZxY5uPxeSu5how8naI4iNtLb1WLzz8U2s8mbN8aFE=', CAST(N'2023-06-15T21:56:57.0250168' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'minhnha120', N'MINHNHA120', N'nguyenminhnhacmu@gmail.com', N'NGUYENMINHNHACMU@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOA+pNwW+XB+Hn6/bxtkr5Z9hA2bKBR7OADR2ekWJt4LWxwBZXTmDU77kDKzAl3N9A==', N'JDWGK75YVEVTIP2YIQM2Y5LJG23GCQOR', N'b83f1d4b-c448-4a93-9cf1-0c7ab5727531', N'0122341544', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'365cb374-2c08-458f-bdb5-45a1c4d99aeb', N'Mr', N'A', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'YkAyBtS9LfrT6VDtxG7G0+dWRZNSKq5EnE3OAFrhDi0=', CAST(N'2023-05-25T21:37:48.7602280' AS DateTime2), CAST(N'2023-05-18T14:27:04.0354745' AS DateTime2), N'Admin', N'ADMIN', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO7uqB6oPkxGa32Msx0ooAyqNXdE0+ll464Ft+nCfAtrbWdNymJEtc9oe5UeMb8shA==', N'7ESWI6CORW3ZOU3VADHHFXNLS5D3REDU', N'dc6da71b-5315-495f-a58e-7f82b7adfc3e', N'032132131', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6ce0c6a8-f56e-413b-878a-780c54c895d0', N'Văn Thành', N'Hồ', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-18T14:27:04.2079569' AS DateTime2), N'thanhhv', N'THANHHV', N'hovanthanh12102002@gmail.com', N'HOVANTHANH12102002@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB7VHMKkHPaAkVfU/EJu8KdIT5ygEJLPjGaHVU67JPIZ0mxRboQrsJFTemIMh8mh7A==', N'RKFPGR2N5NF5GABHW7KMK76JO3WYU3H7', N'99030d77-3d20-47a7-9dcd-696db6c2f6bf', N'032232131', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [AvatarPath], [RefreshToken], [RefreshTokenExpiryTime], [CreatedDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eb68ba60-95c6-41bc-901c-cf5b68e09398', N'Hoàng', N'ne', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-18T14:27:04.2148213' AS DateTime2), N'shipper', N'SHIPPER', N'shipper@gmail.com', N'SHIPPER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKwkPw8ziccRxUm9J5LGnNOthwDqjr+Ykh2k8JIWF0IUBGo6zGErCCMoKoOsAhVFjg==', N'YXTGL2NV5HMJI4MWNJXUBMVOA2SI77PD', N'16f51c5f-db41-4f55-be0c-e5a6525899db', N'032232151', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [SortOrder], [Status], [Name], [Url]) VALUES (5, 1, 1, N'Sách chứng khoán', N'a')
INSERT [dbo].[Categories] ([Id], [SortOrder], [Status], [Name], [Url]) VALUES (7, 2, 1, N'Sách tài chính', N'b')
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
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'8aaf330b-a239-46cb-0af3-08db6830ab22', CAST(N'2023-06-08T21:57:24.1504765' AS DateTime2), N'Có đơn hàng mới', N'Có một đơn hàng mới được đặt', N'https://localhost:5003/listOrderDetails/p01782057', NULL, 0, N'365cb374-2c08-458f-bdb5-45a1c4d99aeb')
INSERT [dbo].[Notification] ([Id], [Created], [Title], [Message], [DataUrl], [Data], [IsRead], [UserId]) VALUES (N'9d3f8bef-2307-4e78-0af4-08db6830ab22', CAST(N'2023-06-08T21:57:24.2259138' AS DateTime2), N'Đặt hàng thành công', N'Đơn hàng p01782057 được đặt thành công', N'user/list-order', NULL, 1, N'7fe70ebb-997b-4abb-11dc-08db669696ea')
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p02480010', 25, N'p01186975', 2, N'38', 0, CAST(12000 AS Decimal(18, 0)), 24000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p06817182', 26, N'p01782057', 1, N'38', 0, CAST(12000 AS Decimal(18, 0)), 12000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p07079458', 26, N'p06406619', 1, N'38', 0, CAST(12000 AS Decimal(18, 0)), 12000)
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [OrderIdFromOrder], [Quantity], [SizeName], [ColorName], [Price], [TotalPrice]) VALUES (N'p08814281', 29, N'p01186975', 1, N'38', 0, CAST(12000 AS Decimal(18, 0)), 12000)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p01186975', N'7fe70ebb-997b-4abb-11dc-08db669696ea', 2, CAST(N'2023-06-08T21:54:02.3268446' AS DateTime2), CAST(236000 AS Decimal(18, 0)), N'PayPal', N'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-65783113KU4592516', 0, 1, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p01782057', N'7fe70ebb-997b-4abb-11dc-08db669696ea', 2, CAST(N'2023-06-08T21:57:24.0067117' AS DateTime2), CAST(112000 AS Decimal(18, 0)), N'PayPal', N'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-16S86357MR723645J', 0, 1, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [AddressId], [OrderDate], [TotalPrice], [PaymentMode], [PaymentGateUrl], [OrderStatus], [PaymentStatus], [ShipperId]) VALUES (N'p06406619', N'7fe70ebb-997b-4abb-11dc-08db669696ea', 2, CAST(N'2023-06-08T21:30:33.0051103' AS DateTime2), CAST(112000 AS Decimal(18, 0)), N'PayPal', N'https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-47210035V6120223Y', 0, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductColors] ON 

INSERT [dbo].[ProductColors] ([Id], [ColorName]) VALUES (4, N'default')
SET IDENTITY_INSERT [dbo].[ProductColors] OFF
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
GO
SET IDENTITY_INSERT [dbo].[ProductQuantities] ON 

INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (60, 25, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (61, 26, 1, 4, 8, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (62, 27, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (63, 28, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (64, 29, 1, 4, 7, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (65, 30, 1, 4, 9, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (66, 31, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (67, 32, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (68, 36, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [ColorId], [Quantity], [Price]) VALUES (69, 37, 1, 4, 10, CAST(12000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductQuantities] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (25, N'Hướng dẫn thực hành Canslim – William O’Neil - Bản in màu', N'Hướng dẫn thực hành Canslim – William O’Neil - Bản in màu', CAST(2 AS Decimal(18, 0)), 0, 5, 14, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (26, N'Phương Pháp Thực Chiến Hiệu Suất Cao Đến Từ Nhà Quán Quân Giao Dịch Tài Chính', N'Phương Pháp Thực Chiến Hiệu Suất Cao Đến Từ Nhà Quán Quân Giao Dịch Tài Chính', CAST(2 AS Decimal(18, 0)), 2, 5, 13, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (27, N'Làm giàu từ chứng khoán bằng phương pháp VSA chính gốc: Nghiên cứu chuyên sâu về cách giao dịch của Wyckoff', N'Làm giàu từ chứng khoán bằng phương pháp VSA chính gốc: Nghiên cứu chuyên sâu về cách giao dịch của Wyckoff', CAST(2 AS Decimal(18, 0)), 0, 5, 1, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (28, N'Làm giàu từ chứng khoán – William O’Neil - Bản in màu', N'Làm giàu từ chứng khoán – William O’Neil - Bản in màu', CAST(2 AS Decimal(18, 0)), 0, 5, 4, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (29, N'
Báo cáo tài chính dưới góc nhìn của Warren Buffett', N'
Báo cáo tài chính dưới góc nhìn của Warren Buffett', CAST(2 AS Decimal(18, 0)), 2, 7, 5, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (30, N'Cách nền kinh tế vận hành', N'Cách nền kinh tế vận hành', CAST(2 AS Decimal(18, 0)), 0, 7, 1, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (31, N'Tài Chính Cá Nhân Cho Người Việt Nam', N'Tài Chính Cá Nhân Cho Người Việt Nam', CAST(2 AS Decimal(18, 0)), 0, 7, 0, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (32, N'
Khủng Hoảng Tài Chính: Những Điềm Báo Trước Giờ G – Zero Hour', N'
Khủng Hoảng Tài Chính: Những Điềm Báo Trước Giờ G – Zero Hour', CAST(2 AS Decimal(18, 0)), 0, 7, 0, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (36, N'
Sách: Hai Vạn Dặm Dưới Đáy Biển (Tái Bản)', N'
Sách: Hai Vạn Dặm Dưới Đáy Biển (Tái Bản)', CAST(2 AS Decimal(18, 0)), 0, 8, 0, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Title], [Description], [ReviewAverage], [CheckoutCount], [CategoryId], [Views], [DateCreated]) VALUES (37, N'Những câu chuyện phiêu lưu kỳ thú (combo 2)', N'Những câu chuyện phiêu lưu kỳ thú (combo 2)', CAST(2 AS Decimal(18, 0)), 0, 8, 0, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSizes] ON 

INSERT [dbo].[ProductSizes] ([Id], [SizeName]) VALUES (1, N'38')
INSERT [dbo].[ProductSizes] ([Id], [SizeName]) VALUES (2, N'39')
INSERT [dbo].[ProductSizes] ([Id], [SizeName]) VALUES (3, N'40')
SET IDENTITY_INSERT [dbo].[ProductSizes] OFF
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
