USE [master]
GO
/****** Object:  Database [webbanmypham]    Script Date: 11/19/2021 12:14:50 AM ******/
CREATE DATABASE [webbanmypham]
 GO
ALTER DATABASE [webbanmypham] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webbanmypham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webbanmypham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webbanmypham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webbanmypham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webbanmypham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webbanmypham] SET ARITHABORT OFF 
GO
ALTER DATABASE [webbanmypham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [webbanmypham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webbanmypham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webbanmypham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webbanmypham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webbanmypham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webbanmypham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webbanmypham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webbanmypham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webbanmypham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webbanmypham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webbanmypham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webbanmypham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webbanmypham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webbanmypham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webbanmypham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webbanmypham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webbanmypham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webbanmypham] SET  MULTI_USER 
GO
ALTER DATABASE [webbanmypham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webbanmypham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webbanmypham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webbanmypham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webbanmypham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webbanmypham] SET QUERY_STORE = OFF
GO
USE [webbanmypham]
GO
/****** Object:  Table [dbo].[About]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Phone] [nvarchar](100) NULL,
	[OpenningTime] [nvarchar](40) NULL,
	[OpenningDay] [nvarchar](40) NULL,
	[Messages] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Messages] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](200) NOT NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterDetail]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[FooterID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyFeedback]    Script Date: 11/19/2021 12:14:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyFeedback](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](200) NOT NULL,
	[FeedBackID] [bigint] NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'linhhuong.com.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (2, N'ab1b645f2fca06976b3950c1224ffc7a.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [DateImport], [Title], [ShortTitle], [Picture], [Describe]) VALUES (1, CAST(N'2019-04-05T00:00:00.000' AS DateTime), N'Travel Blogger', N'What does it take to become a Travel Blogger?', N'inf9.jpg', N'1: Train your writing skills. Travel blogger requires sharing journeys, stories on social networks. In addition to images and videos, the word is an indispensable means of transmission.')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (1, N'Nước Ngoài', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (2, N'Việt Nam', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (1, N'khachhang', N'khachhang', N'Khách Hàng', N'Hà Nội Từ Liêm', N'khachhang@gmail.com                                                                                 ', N'0394073759', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (2, N'levana', N'levana', N'Lê Văn A', N'Hà Nội ', N'levana@gmail.com                                                                                    ', N'0369037484', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (3, N'test', N'test', N'test', N'test', N'tesst@gmail.com                                                                                     ', N'0123456789', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (4, N'nguyencao', N'nguyencao', N'Nguyen', N'Hà Nội', N'nguyencao@gmail.com                                                                                 ', N'0394073758', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (5, N'huynhhuutan', N'huynhtan', N'Huỳnh Hữu Tân', N'Đồng Tháp', N'huynhuutan@gmail.com                                                                                ', N'0394073758', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (6, N'buivana', N'buivana', N'buivana', N'Hà Nội', N'buivana@gmail.com                                                                                   ', N'0394050632', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Mặt Nạ Lột Mụn Đầu Đen ', CAST(200000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), CAST(N'2019-04-05T00:00:00.000' AS DateTime), 40, 3, 1, N'mat-na-lot-mun-dau-den-princess-mask-nga-chinh-67776.jpg', 1, N'Princess Mask Nga là sản phẩm mặt nạ lột mụn đã và đang được đông đảo người tiêu dùng trên toàn thế giới tin dùng', N'<div style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; font-size: 14px; color: #333333;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Mặt Nạ Lột Mụn Đầu Đen Princess Mask Nga Ch&iacute;nh H&atilde;ng</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: Nga.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Dung t&iacute;ch</span>: 50ml.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Th&agrave;nh Phần Ch&iacute;nh Của Princess Mask</span>&nbsp;l&agrave; than hoạt t&iacute;nh v&agrave; chiết xuất từ c&aacute;c loại thảo dược trong tự nhi&ecirc;n l&agrave; :</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Bột than v&agrave; Panthenol.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Kiểm so&aacute;t nhờn một c&aacute;ch hiệu quả, l&agrave;m th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Loại bỏ bụi bẩn</span>&nbsp;v&agrave; b&atilde; nhờn g&acirc;y ra mụn đầu đen,<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;tẩy tế b&agrave;o chết</span>&nbsp;nhẹ nh&agrave;ng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Hấp thụ v&agrave; giữ bụi bẩn v&agrave; độc tố nặng hơn 100-200 lần.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Đ&aacute;nh bay mụn trứng c&aacute;, mụn c&aacute;m, mụn đầu đen cho l&agrave;n da khỏe mạnh mịn m&agrave;ng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Bảo vệ l&agrave;n da của bạn khỏi c&aacute;c t&aacute;c nh&acirc;n xấu từ m&ocirc;i trường.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/mat-na-lot-mun-dau-den-princess-mask-nga-chinh-hang-20200909113811915.jpg" alt="mat-na-mat-na-lot-mun-dau-den-princess-mask-nga-chinh-hang-289" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Mặt Nạ Lột Mụn Đầu Đen Princess Mask Nga Ch&iacute;nh H&atilde;ng</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&aacute;ch Sử Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Thoa một lớp mỏng tr&ecirc;n da mặt đ&atilde; rửa sạch nhưng tr&aacute;nh v&ugrave;ng mắt v&agrave; m&ocirc;i. Để khoảng 20-25 ph&uacute;t cho mặt nạ kh&ocirc; ho&agrave;n to&agrave;n.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sau khi lớp mặt nạ kh&ocirc; ho&agrave;n to&agrave;n, h&atilde;y nhẹ nh&agrave;ng th&aacute;o lớp mặt nạ ra khỏi da. Sử dụng 1-2 lần/ tuần. Kh&ocirc;ng d&ugrave;ng mặt nạ tr&ecirc;n v&ugrave;ng da trầy xước.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/cong-dung-mat-na-lot-mun-dau-den-princess-mask-nga-chinh-hang-20200909113811931.jpg" alt="mat-na-mat-na-lot-mun-dau-den-princess-mask-nga-chinh-hang-289" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">C&ocirc;ng Dụng Mặt Nạ Lột Mụn Đầu Đen Princess Mask Nga Ch&iacute;nh H&atilde;ng</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Serum 4K Plus 5X Whitening ', CAST(200000 AS Decimal(18, 0)), CAST(299000 AS Decimal(18, 0)), CAST(N'2019-04-05T00:00:00.000' AS DateTime), 40, 2, 2, N'serum-4k-plus-5x-whitening-thai-lan-duong-am-cho-da-chong-nep-nhan-giam-tan-nhang-20211006120212377.jpg', 1, N'Serum 4K Plus 5X Whitening Thái Lan được chiết xuất từ ​​muối hồng Himalaya có tác dụng dưỡng da tưới trẻ, giảm mụn và các vết thâm trên da.', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">L&agrave;m trắng da gấp 5 lần sẽ hoạt động.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Điều n&agrave;y sẽ gi&uacute;p da trắng s&aacute;ng hơn trước.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Ngăn chặn sự h&igrave;nh th&agrave;nh hắc tố tr&ecirc;n da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Loại bỏ t&igrave;nh trạng kh&ocirc; da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Dưỡng ẩm cho da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Sẽ l&agrave;m s&aacute;ng c&aacute;c vết th&acirc;m tr&ecirc;n da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Sẽ loại bỏ c&aacute;c đốm n&acirc;u.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Chống nếp nhăn sẽ hoạt động.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Sẽ gi&uacute;p giảm t&agrave;n nhang.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Tăng độ đ&agrave;n hồi cho da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">&nbsp;</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_tieudemota_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<h2 style="box-sizing: border-box; padding: 0px; font-size: medium; font-family: Arial; line-height: 1.1; color: inherit; margin: 0px !important;">C&aacute;ch d&ugrave;ng</h2>
</div>
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">N&ecirc;n rửa mặt bằng sữa rửa mặt / x&agrave; ph&ograve;ng rửa mặt</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Sau khi rửa v&agrave; l&agrave;m da mặt kh&ocirc;, thoa một lượng vừa đủ serum 4K Plus 5X l&ecirc;n da</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/20211006121122198.jpg" alt="duong-da-mat-serum-4k-plus-5x-whitening-thai-lan-duong-am-cho-da-chong-nep-nhan-giam-tan-nhang-429" /></div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Son Lì Ecosy Nature', CAST(400000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(N'2019-04-05T00:00:00.000' AS DateTime), 40, 4, 2, N'son-li-ecosy-nature-lipstick-the-collagen-20210405214629663.jpg', 1, N'Son lì không chì Ecosy Nature Lipstick The Collagen là loại son có chứa các thành phần từ thiên nhiên ', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Son L&igrave; Ecosy Nature Lipstick The Collagen</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Xuất xứ: H&agrave;n Quốc.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Thương hiệu: Ecosy</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Khối lượng:3.5g</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Son Ecosy Nature Lipstick The Collagen</span>&nbsp;được thiết kế cao cấp, tinh xảo,m&agrave;u sắc độc đ&aacute;o,với hiệu ứng l&ecirc;n m&agrave;u tươi.Ecosy Nature Lipstick The Collagen đ&acirc;y l&agrave; d&ograve;ng son l&igrave; với chất son mềm mướt m&agrave; bạn sẽ cảm nhận được ngay khi thoa l&ecirc;n m&ocirc;i c&ugrave;ng độ phủ đều đồng nhất.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Đặc điểm của son Ecosy Nature Lipstick The Collagen &nbsp;l&agrave; c&oacute; chất dưỡng nhưng kh&ocirc;ng bong m&agrave; giữ ẩm tốt cho m&ocirc;i. Kh&ocirc;ng kh&ocirc; m&ocirc;i, son cũng kh&ocirc;ng hề bị len v&agrave;o c&aacute;c r&atilde;nh m&ocirc;i khiến cho bạn cảm thấy m&ocirc;i m&igrave;nh đầy khuyết điểm, m&agrave; ngược lại, c&aacute;i cảm gi&aacute;c em &yacute; để lại tr&ecirc;n m&ocirc;i bạn l&agrave; m&ocirc;i mềm, mịn, matte, c&ugrave;ng với m&agrave;u sắc tinh tế khiến ai nh&igrave;n v&agrave;o cũng bị đắm ch&igrave;m sự quyến rũ.&nbsp;<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />Độ bền m&agrave;u cực tốt,l&acirc;u tr&ocirc;i,m&agrave;u l&ecirc;n rất sống động. Đặc biệt son Ecosy Nature Lipstick The Collagen c&oacute; bổ sung th&ecirc;m collagen l&agrave; th&agrave;nh phần chống l&atilde;o h&oacute;a n&ecirc;n gi&uacute;p m&ocirc;i bạn cải thiện dần sau thời gian,l&agrave;m m&ocirc;i của bạn trở lại hồng h&agrave;o.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Kh&ocirc;ng chỉ nằm ở chất son m&agrave; m&agrave;u sắc cũng được coi l&agrave; thế mạnh của d&ograve;ng sản phẩm n&agrave;y .</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">Son Ecosy Nature Lipstick The Collagen mang hương thơm đặc trưng của tinh chất chiết xuất từ thi&ecirc;n nhi&ecirc;n.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/son-li-ecosy-nature-lipstick-the-collagen-20210405214759424.jpg" alt="trang-diem-doi-moi-son-li-ecosy-nature-lipstick-the-collagen-426" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">&nbsp;</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">M&agrave;u Cam</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/son-li-ecosy-nature-lipstick-the-collagen-20210405214843662.jpg" alt="trang-diem-doi-moi-son-li-ecosy-nature-lipstick-the-collagen-426" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">&nbsp;</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_2" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Đỏ cam</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/son-li-ecosy-nature-lipstick-the-collagen-20210405214909106.jpg" alt="trang-diem-doi-moi-son-li-ecosy-nature-lipstick-the-collagen-426" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">&nbsp;</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_3" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Đỏ san H&ocirc;</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/son-li-ecosy-nature-lipstick-the-collagen-20210405214955546.jpg" alt="trang-diem-doi-moi-son-li-ecosy-nature-lipstick-the-collagen-426" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">&nbsp;</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_4" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Hồng San H&ocirc;</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/son-li-ecosy-nature-lipstick-the-collagen-20210405215013318.jpg" alt="trang-diem-doi-moi-son-li-ecosy-nature-lipstick-the-collagen-426" /></div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Sữa Dưỡng Trắng Body', CAST(2000000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), CAST(N'2019-04-05T00:00:00.000' AS DateTime), 37, 5, 2, N'sua-duong-trang-body-ready-2-white-cathy-doll-150ml-20200909160401744.jpg', 1, N'Đối với chị em phụ nữ, kem dưỡng da toàn thân là sản phẩm không thể thiếu giúp cung cấp độ ẩm cùng các dưỡng chất thiết yếu để nuôi dưỡng làn da', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sữa Dưỡng Trắng Body Ready 2 White Cathy Doll 150ml</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>:&nbsp;<a style="box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; color: #626360; text-decoration-line: none;" href="https://myphamxinhdep.com/seach/Thai%20Lan"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Th&aacute;i Lan</span></a>.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Dạng</span>: tu&yacute;p.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Dung t&iacute;ch</span>: 150ml.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/sua-duong-trang-body-ready-2-white-cathy-doll-150ml-20200909160959269.jpg" alt="duong-the-sua-duong-trang-body-ready-2-white-cathy-doll-150ml-106" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Sữa Dưỡng Trắng Body Ready 2 White Cathy Doll 150ml</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Được kết hợp từ 3 th&agrave;nh phần dưỡng trắng vượt trội: Glutathione, Arbutin v&agrave; nhớt ốc s&ecirc;n, sản phẩm sẽ nu&ocirc;i dưỡng, gi&uacute;p cho l&agrave;n da của bạn trở n&ecirc;n trắng hồng mịn m&agrave;ng chỉ sau 3-4 tuần sử dụng.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">+ Glutathione: Hoạt chất&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">chống Oxy h&oacute;a mạnh</span>, ti&ecirc;u diệt c&aacute;c gốc tự do gi&uacute;p t&aacute;i tạo v&agrave; trẻ h&oacute;a l&agrave;n da, khắc phục l&agrave;n da đen, nu&ocirc;i dưỡng l&agrave;n da trắng s&aacute;ng từ b&ecirc;n trong,&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">ngăn ngừa l&atilde;o h&oacute;a sớm</span>.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">+ Arbutin:&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Chiết xuất từ quả Bearberry</span>&nbsp;gi&uacute;p ức chế qu&aacute; tr&igrave;nh sản sinh Melanin &ndash; Nguy&ecirc;n nh&acirc;n g&acirc;y n&aacute;m, sạm da, gi&uacute;p da s&aacute;ng hồng tự nhi&ecirc;n.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">+ Nhớt ốc s&ecirc;n: Gi&agrave;u Protein c&oacute; t&aacute;c dụng t&aacute;i tạo v&agrave; l&agrave;m trắng c&aacute;c tế b&agrave;o da, gi&uacute;p da căng mịn, tăng độ đ&agrave;n hồi, săn chắc cho da, x&oacute;a mờ c&aacute;c vết n&aacute;m, t&agrave;n nhang.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&aacute;ch Sử Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- L&agrave;m sạch da trước khi thoa.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Lấy 1 lượng sữa vừa đủ thoa nhanh v&agrave; đều khắp cơ thể.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Vỗ nhẹ cho kem thẩm thấu nhanh v&agrave; s&acirc;u hơn.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/cong-dung-sua-duong-trang-body-ready-2-white-cathy-doll-150ml-20200909160959284.jpg" alt="duong-the-sua-duong-trang-body-ready-2-white-cathy-doll-150ml-106" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">C&ocirc;ng Dụng Sữa Dưỡng Trắng Body Ready 2 White Cathy Doll 150ml</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'Sữa Witch Hazel Cleanser', CAST(200000 AS Decimal(18, 0)), CAST(249000 AS Decimal(18, 0)), CAST(N'2019-04-05T00:00:00.000' AS DateTime), 37, 1, 2, N'sua-rua-mat-diu-nhe-witch-hazel-cleanser-54795.png', 1, N'Sữa Rửa Mặt Dịu Nhẹ Witch Hazel Cleanser với công thức ít bọt đảm bảo không phá vỡ lớp cân bằng pH và cân bằng ẩm của da, an toàn nhất cho làn da.', N'<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px; color: #333333;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sữa Rửa Mặt Dịu Nhẹ Witch Hazel Cleanser</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Dung t&iacute;ch</span>: 90ml.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Th&agrave;nh Phần :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Aqua,Viscolam Mac-10, Cocoglucoside, PG, Witch Hazel extract (chiết xuất c&acirc;y phỉ), Aloe Vera extract (Chiết xuất l&ocirc; hội), Tocophenol (VTM E), Salycilic accid, Green tea essential oil (Tinh dầu tr&agrave; xanh), Sorbilen L, Allantoin.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/-sua-rua-mat-diu-nhe-witch-hazel-cleanser-20200904115548526.jpg" alt="sua-rua-mat-sua-rua-mat-diu-nhe-witch-hazel-cleanser-241" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Sữa Rửa Mặt Dịu Nhẹ Witch Hazel Cleanser</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Hamamelis Rain (Chiết xuất phỉ)</span>: Được chưng cất từ l&aacute; c&acirc;y phỉ Hamamelis Virginiana. Chiết xuất c&acirc;y phỉ c&oacute; t&aacute;c dụng kh&aacute;ng khuẩn, l&agrave;m se da tự nhi&ecirc;n, chống vi&ecirc;m, bổ sung ẩm cho da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Trikenol Plus</span>: l&agrave; hỗn hợp tổng hợp của hai th&agrave;nh phần gốc thực vật. Hỗn hợp được ph&aacute;t triển để cung cấp một th&agrave;nh phần hoạt t&iacute;nh chống mụn trứng c&aacute; hiệu quả, với hoạt t&iacute;nh kh&aacute;ng khuẩn v&agrave; chống vi&ecirc;m.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Terpinen-4-ol from tea tree oil</span>:&nbsp;Terpinen-4-ol thu được bằng c&aacute;ch chưng cất ph&acirc;n đoạn dầu c&acirc;y tr&agrave; (Melaleuca alternifolia). Đặc t&iacute;nh kh&aacute;ng khuẩn v&agrave; kh&aacute;ng vi&ecirc;m.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Willow extract (Chiết xuất liễu)</span>:&nbsp;Được chiết từ l&aacute; v&agrave; vỏ c&acirc;y Liễu với th&agrave;nh phần ch&iacute;nh l&agrave; polyphenol, flavonoid v&agrave; c&aacute;c dẫn xuất salicylic. Ch&uacute;ng c&oacute; t&aacute;c dụng chống k&iacute;ch ứng, giảm tiết b&atilde; nhờn v&agrave; l&agrave;m bong c&aacute;c lớp sừng da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Salicylic derivatives (C&aacute;c dẫn xuất Salicylic)</span>: Gi&uacute;p lấy đi lớp sừng,&nbsp;<a style="box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; color: #626360; text-decoration-line: none;" href="https://myphamxinhdep.com/lam-dep/cham-soc-body/tay-bao-chet-33"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">tế b&agrave;o chết</span></a>&nbsp;tr&ecirc;n da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Hạt Vitamin E tự vỡ</span>: L&agrave;m mềm da, cung cấp độ ẩm, s&aacute;ng mịn da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/-sua-rua-mat-diu-nhe-witch-hazel-cleanser-chinh-hang-20200904115548542.jpg" alt="sua-rua-mat-sua-rua-mat-diu-nhe-witch-hazel-cleanser-241" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Sữa Rửa Mặt Dịu Nhẹ Witch Hazel Cleanser Ch&iacute;nh H&atilde;ng</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'Tắm Trắng Livy''s Thái Lan', CAST(400000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(N'2021-03-20T15:34:02.000' AS DateTime), 35, 6, 1, N'tam-trang-livys-thai-lan-49586.png', 1, N'Tắm Trắng Livy''s loại bỏ sắc tố gây xạm da, ung thư xa loại bỏ bụi bẩn trên cơ thể sau 1 ngày dài tiếp xúc trực tiếp với bụi bẩn và ánh nắng', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Tắm Trắng Livy''s Th&aacute;i Lan</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: Th&aacute;i Lan.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Ủ trắng da</span>, bật tone,&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">dưỡng da s&aacute;ng</span>&nbsp;mịn hồng h&agrave;o chỉ sau v&agrave;i lần sử dụng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Thu nhỏ lỗ ch&acirc;n l&ocirc;ng, chống nẻ, giảm t&igrave;nh trạng vi&ecirc;m lỗ ch&acirc;n l&ocirc;ng tr&ecirc;n da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- L&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da, gi&uacute;p da lu&ocirc;n căng mịn, săn chắc.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sản phẩm ho&agrave;n to&agrave;n tự nhi&ecirc;n,<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;ủ trắng</span>&nbsp;kh&ocirc;ng b&agrave;o m&ograve;n da, kh&ocirc;ng v&agrave;ng l&ocirc;ng, kh&ocirc;ng mất đi lớp sừng tr&ecirc;n da v&agrave; kh&ocirc;ng hồi lại tone, kh&ocirc;ng d&ugrave;ng vẫn trắng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sau khi tắm xong, da trắng mịn bạn sẽ thấy m&igrave;nh trẻ hơn nhiều so với tuổi.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/tam-trang-livy-s-thai-lan-20200828114330888.jpg" alt="tam-trang-tam-trang-livys-thai-lan-415" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Tắm Trắng Livy''s Th&aacute;i Lan</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;C&aacute;ch D&ugrave;ng&nbsp;:</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Bước 1: Rửa sạch da cần&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">tắm trắng</span>&nbsp;v&agrave; l&acirc;u kh&ocirc;.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Bước 2: Lấy 3 g&oacute;i số 1, 2, 3 trộn lại th&agrave;nh hỗn hợp đều h&ograve;a tan với nhau.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Bước 3: B&ocirc;i hỗn hợp l&ecirc;n to&agrave;n th&acirc;n nhẹ nh&agrave;ng massage trong v&ograve;ng 30 - 45 ph&uacute;t sau đ&oacute; rửa sạch bằng nước sạch.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Bước 4: Sau khi tắm xong l&acirc;u kh&ocirc; người, d&ugrave;ng g&oacute;i kem dưỡng số 4 để dưỡng da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Bảo Quản</span>: Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/tam-trang-livy-s-thai-lan-chinh-hang-20200828114330920.jpg" alt="tam-trang-tam-trang-livys-thai-lan-415" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Tắm Trắng Livy''s Th&aacute;i Lan Ch&iacute;nh H&atilde;ng</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Chống Nắng Cell Fusion C', CAST(200000 AS Decimal(18, 0)), CAST(415000 AS Decimal(18, 0)), CAST(N'2021-03-20T15:35:22.000' AS DateTime), 12, 7, 2, N'kem-chong-nang-cell-fusion-c-20200910144211683.jpg', 1, N'Kem Chống Nắng Cell Fusion C Laser Sunscreen 100 SPF50+/PA+++ được các bác sỹ da liễu Hàn Quốc khuyên dùng bởi độ lành tính', N'<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px; color: #333333;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Kem Chống Nắng Cell Fusion C</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Trọng lượng</span>: 10ml.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Thương hiệu</span>: CellfushionC.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: H&agrave;n Quốc.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Kem Chống Nắng Cell Fusion C Laser Sunscreen 100 SPF</span>&nbsp;được c&aacute;c b&aacute;c sỹ da liễu H&agrave;n Quốc khuy&ecirc;n d&ugrave;ng bởi độ l&agrave;nh t&iacute;nh, gi&uacute;p bảo vệ tối ưu cho l&agrave;n da khỏi t&aacute;c động của tia UV, đặc biệt l&agrave; đối với những l&agrave;n da nhạy cảm sau khi điều trị laser v&agrave; IPL.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sản phẩm c&ograve;n c&oacute; c&ocirc;ng dụng<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;bổ sung độ ẩm</span>&nbsp;v&agrave; dưỡng chất cho da nhanh ch&oacute;ng được t&aacute;i tạo sau khi điều trị y tế, nhờ c&oacute; chứa th&agrave;nh phần Peptide v&agrave; collagen.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Ngo&agrave;i ra, sản phẩm c&ograve;n chứa Coenzyme Q10, Acetyl Hexapeptide 8,<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;Vitamin E chống oxy h&oacute;a&nbsp;</span>đồng thời hỗ trợ t&aacute;i tạo da hạn chế nếp nhăn v&agrave; tăng độ đ&agrave;n hồi cho da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Chất kem si&ecirc;u mịn, thấm nhanh v&agrave;o da m&agrave; kh&ocirc;ng g&acirc;y nhờn r&iacute;t hay bết d&iacute;nh.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/kem-chong-nang-cell-fusion-c-20200910144537557.jpg" alt="kem-chong-nang-kem-chong-nang-cell-fusion-c-339" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Kem Chống Nắng Cell Fusion C</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;Hướng Dẫn Sử Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Lấy một lượng kem vừa đủ thoa đều l&ecirc;n da 30 ph&uacute;t trước khi tiếp x&uacute;c với &aacute;nh nắng mặt trời.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/huong-dan-su-dung-kem-chong-nang-cell-fusion-c-20200910144537573.jpg" alt="kem-chong-nang-kem-chong-nang-cell-fusion-c-339" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Hướng Dẫn Sử Dụng Kem Chống Nắng Cell Fusion C</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (8, N'Whitening Oil Control Trái Bơ', CAST(600000 AS Decimal(18, 0)), CAST(799000 AS Decimal(18, 0)), CAST(N'2021-05-02T11:35:54.000' AS DateTime), 10, 1, 1, N'sua-rua-mat-whitening-oil-control-trai-bo-72494.jpg', 1, N'Sửa Rửa Mặt Whitening Oil Control Trái Bơ giúp dưỡng trắng da với tinh chất quả bơ thiên nhiên được bổ sung dưỡng chất có tác dụng dưỡng ẩm và làm trắng da', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sữa Rửa Mặt Whitening Oil Control Tr&aacute;i Bơ</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: Th&aacute;i Lan.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng&nbsp;</span>:</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<a style="box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; color: #626360; text-decoration-line: none;" href="https://myphamxinhdep.com/lam-dep/cham-soc-mat/sua-rua-mat-35"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sữa rửa mặt&nbsp;</span></a>chiếc xuất từ bơ tươi ho&agrave;n to&agrave;n tự nhi&ecirc;n v&igrave; trong bơ rất gi&agrave;u vitamin E, A, D nhất l&agrave; vitamin E n&ecirc;n bơ l&agrave; loại quả lu&ocirc;n được ưu &aacute;i d&ugrave;ng cho c&aacute;c sản phẩm v&agrave; c&ocirc;ng thức l&agrave;m đẹp. Hầu hết c&aacute;c kết quả nghi&ecirc;n cứu đều cho thấy, vitamin E c&oacute; t&aacute;c dụng bảo vệ c&aacute;c axit chống lại sự oxy h&oacute;a, nhờ đ&oacute; l&agrave;m chậm&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a</span>&nbsp;của tế b&agrave;o gi&uacute;p l&agrave;n da tươi s&aacute;ng v&agrave; căng hơn.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sữa rửa mặt</span>&nbsp;chiết xuất từ bơ bổ sung dưỡng chất c&oacute; t&aacute;c dụng dưỡng ẩm v&agrave;&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">l&agrave;m trắng da</span>, phối hợp c&aacute;c th&agrave;nh phần được chiết xuất từ thi&ecirc;n nhi&ecirc;n, nhẹ nh&agrave;ng l&agrave;m sạch v&agrave;&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng</span>&nbsp;bảo vệ l&agrave;n da bạn khi sử dụng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Với hương thơm tự nhi&ecirc;n mang lại cho bạn l&agrave;n da đầy quyến rũ.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sửa rửa mặt bơ</span>&nbsp;ph&ugrave; hợp cho mọi loại da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/sua-rua-mat-whitening-oil-control-trai-bo-20200904104738634.jpg" alt="sua-rua-mat-sua-rua-mat-whitening-oil-control-trai-bo-77" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Sữa Rửa Mặt Whitening Oil Control Tr&aacute;i Bơ</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Hướng Dẫn Sử Dụng&nbsp;</span>:</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sau khi l&agrave;m ướt mặt cho một lượng sữa vừa đủ v&agrave;o l&ograve;ng b&agrave;n tay đ&aacute;nh tạo bọt rồi massage nhẹ nh&agrave;ng l&ecirc;n da sau đ&oacute; rửa sạch mặt lại với nước.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- D&ugrave;ng hai lần, mỗi ng&agrave;y v&agrave;o buổi s&aacute;ng v&agrave; tối.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/sua-rua-mat-trai-bo-20200904104738649.jpg" alt="sua-rua-mat-sua-rua-mat-whitening-oil-control-trai-bo-77" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Sữa Rửa Mặt Tr&aacute;i Bơ</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (9, N'Collagen Serum Và Vitamin C', CAST(600000 AS Decimal(18, 0)), CAST(799000 AS Decimal(18, 0)), CAST(N'2021-05-02T11:59:03.000' AS DateTime), 32, 2, 2, N'collagen-serum-va-vitamin-c-2-in-1-thai-lan-20200909095841551.jpg', 1, N'Collangen Serum Và Vitamin C của hãng Royal Beauty, sản phẩm đạt cúp vàng về dưỡng da, được người dân Thái rất tin dùng', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Collagen Serum + Vitamin C 2 In 1 Th&aacute;i Lan</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: Th&aacute;i Lan.<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Dung t&iacute;ch</span>: 8 ml.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/collagen-serum-va-vitamin-c-2-in-1-thai-lan-20200909100131128.jpg" alt="duong-da-mat-collagen-serum-va-vitamin-c-2-in-1-thai-lan-259" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Collagen Serum V&agrave; Vitamin C 2 In 1 Th&aacute;i Lan</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-transform: none; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng :</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sản phẩm gi&uacute;p k&iacute;ch th&iacute;ch&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">sản xuất Collagen</span>&nbsp;l&agrave;m mờ vết nhăn, điều trị th&acirc;m, sẹo, mụn...</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Vitamin C sẽ k&iacute;ch th&iacute;ch sản xuất Collagen mới thế chỗ v&agrave;o lượng Collagen đ&atilde; bị mất, gi&uacute;p cải thiện tổn thương da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Gi&uacute;p da căng mượt, s&aacute;ng b&oacute;ng. Gi&uacute;p&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">l&agrave;n da trắng s&aacute;ng</span>&nbsp;v&agrave; đều m&agrave;u hơn. Khu&ocirc;n mặt trở n&ecirc;n tươi s&aacute;ng, rạng rỡ suốt cả ng&agrave;y.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- T&aacute;c dụng l&agrave;m tăng sức mạnh của tế b&agrave;o, gi&uacute;p m&aacute;u lưu th&ocirc;ng dễ d&agrave;ng, cung cấp Oxy cho c&aacute;c tế b&agrave;o th&ecirc;m hồng h&agrave;o căng b&oacute;ng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Thiếu ni&ecirc;n c&oacute; thể d&ugrave;ng&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Serum Collagen Vit C</span>&nbsp;để ngăn chặn c&aacute;c dấu hiệu của da do dậy th&igrave; nhu nổi mụn, vi&ecirc;m đa.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/collagen-serum-va-vitamin-c-2-in-1-thai-lan-chinh-hang-20200909100131144.jpg" alt="duong-da-mat-collagen-serum-va-vitamin-c-2-in-1-thai-lan-259" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Collagen Serum V&agrave; Vitamin C 2 In 1 Th&aacute;i Lan Ch&iacute;nh H&atilde;ng</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (10, N'Vita Genic Banobagi Hàn Quốc', CAST(200000 AS Decimal(18, 0)), CAST(259000 AS Decimal(18, 0)), CAST(N'2021-05-02T12:04:17.000' AS DateTime), 15, 3, 1, N'mat-na-vita-genic-banobagi-han-quoc-38468.jpg', 1, N'Banobagi Vita Genic Jelly Mask chứa dưỡng chất Vitamin dạng gel đậm đặc, hàm lượng lên đến 20.000ppm được chiết xuất từ các trái cây tươi ở hòn đảo Jeju xinh đẹp.', N'<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-align: left; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Mặt Nạ Vita Genic Banobagi H&agrave;n Quốc</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: H&agrave;n Quốc.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;Dung lượng</span>: 1 hộp - 10 miếng - 30ml/ miếng.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><a style="box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; color: #626360; text-decoration-line: none;" href="https://myphamxinhdep.com/mat-na-vita-genic-banobagi-han-quoc-55"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Banobagi Vita Genic Jelly Mask</span></a>&nbsp;được thiết kế rất bắt mắt v&agrave; dễ thương. Nhiều bạn c&ograve;n lầm tưởng mặt nạ n&agrave;y c&oacute; dạng bột hay h&igrave;nh vi&ecirc;n thuốc nữa, nhưng thật ra kh&ocirc;ng phải nh&eacute;,<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;Mặt Nạ Banobagi Vita Genic Jelly Mask</span>&nbsp;c&oacute; dạng miếng giấy cotton v&agrave; k&egrave;m theo c&aacute;c loại vitamins A, B3, B5, C, E, F, H, Q... cho da với h&agrave;m lượng cao l&ecirc;n đến 20000ppm được chiết xuất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Đ&acirc;y đa phần l&agrave; c&aacute;c vitamin rất hiếm, tốt cho da. C&aacute;c tinh chất từ c&acirc;y, quả thi&ecirc;n nhi&ecirc;n như tinh chất tr&aacute;i cam, l&ocirc; hội, việt quất... gi&uacute;p&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">tăng sức đề kh&aacute;ng</span>&nbsp;v&agrave; trẻ h&oacute;a l&agrave;n da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Ngo&agrave;i ra sản phẩm c&ograve;n chứa một lượng lớn vi kho&aacute;ng &ndash; được t&aacute;ch chế từ nước biển vừa gi&uacute;p tăng sức đề kh&aacute;ng, vừa bổ sung kho&aacute;ng chất đặc biệt khiến da lu&ocirc;n căng mịn.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Banobagi Vita Genic Jelly Mask Gồm 4 Loại:&nbsp;</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/mat-na-vita-genic-banobagi-han-quoc-20200909111314563.jpg" alt="mat-na-mat-na-vita-genic-banobagi-han-quoc-55" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Mặt Nạ Vita Genic Banobagi H&agrave;n Quốc</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-align: left; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vita Genic Relaxing Mask (M&agrave;u xanh l&aacute;):&nbsp;</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Đ&uacute;ng như t&ecirc;n gọi, loại mặt nạ n&agrave;y c&oacute; c&ocirc;ng dụng thư gi&atilde;n v&agrave; l&agrave;m giảm stress cho cơ thể.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Bổ sung Vitamin A</span>&nbsp;h&agrave;m lượng 20.000ppm được&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">chiết xuất c&acirc;y l&ocirc; hội</span>&nbsp;tại đảo Jeju H&agrave;n Quốc, c&oacute; t&aacute;c dụng thư gi&atilde;n, phục hồi l&agrave;n da mệt mỏi.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Đồng thời c&ograve;n c&oacute; c&ocirc;ng dụng&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">l&agrave;m trẻ h&oacute;a da</span>, gi&uacute;p da lu&ocirc;n trong trạng th&aacute;i khỏe mạnh v&agrave; căng tr&agrave;n sức sống.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/vita-genic-relaxing-mask-mau-xanh-la-20200909111314578.jpg" alt="mat-na-mat-na-vita-genic-banobagi-han-quoc-55" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Vita Genic Relaxing Mask (M&agrave;u xanh l&aacute;)</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-align: left; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_2" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vita Genic Lifting Jelly Mask (M&agrave;u đỏ):</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Bổ sung Vitamin A</span>&nbsp;h&agrave;m lượng 20.000ppm được&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">chiết xuất c&acirc;y xương rồng</span>&nbsp;tại đảo Jeju H&agrave;n Quốc, gi&uacute;p n&acirc;ng cơ, chống chảy xệ, l&agrave;m da s&aacute;ng hồng tự nhi&ecirc;n từ b&ecirc;n trong.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Ngo&agrave;i ra, sản phẩm c&ograve;n bổ sung h&agrave;m lượng ẩm, cho l&agrave;n da lu&ocirc;n căng mịn v&agrave; kh&ocirc;ng bị kh&ocirc; r&aacute;p do thiếu nước v&agrave; kho&aacute;ng chất.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Sản phẩm cực ph&ugrave; hợp với c&aacute;c bạn g&aacute;i từ 25 tuổi bởi ngo&agrave;i việc dưỡng trắng v&agrave; dưỡng ẩm,&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Mặt Nạ Vita Genic Lifting Jelly Mask</span>&nbsp;c&ograve;n gi&uacute;p n&acirc;ng cơ v&agrave; săn chắc da. Khiến da lu&ocirc;n trong trạng th&aacute;i đ&agrave;n hồi tốt, kh&ocirc;ng bị l&atilde;o h&oacute;a v&agrave; chảy xệ.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/vita-genic-lifting-jelly-mask-mau-do-20200909111314594.jpg" alt="mat-na-mat-na-vita-genic-banobagi-han-quoc-55" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Vita Genic Lifting Jelly Mask (M&agrave;u đỏ)</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-align: left; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_3" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vita Genic Hydrating Mask (M&agrave;u xanh dương):&nbsp;</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Đ&acirc;y l&agrave; loại mặt nạ d&agrave;nh ri&ecirc;ng cho c&aacute;c c&ocirc; n&agrave;ng da kh&ocirc; hoặc thường xuy&ecirc;n phải tiếp x&uacute;c với điều h&ograve;a g&acirc;y n&ecirc;n t&igrave;nh trạng da mất nước, bong tr&oacute;c.&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Bổ sung Vitamin E&nbsp;</span>h&agrave;m lượng 20.000ppm được&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">chiết xuất từ nguồn nước kho&aacute;ng</span>&nbsp;tại đảo Jeju H&agrave;n Quốc, c&oacute; t&aacute;c dụng cấp ẩm tức th&igrave; cho l&agrave;n da thiếu nước, da căng mọng trở n&ecirc;n rạng rỡ hơn v&agrave;&nbsp;<a style="box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; color: #626360; text-decoration-line: none;" href="https://myphamxinhdep.com/seach/chong%20lao%20hoa"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">chống l&atilde;o h&oacute;a da</span></a>.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Ngo&agrave;i c&aacute;c c&ocirc;ng dụng tr&ecirc;n, loại mặt nạ n&agrave;y c&ograve;n rất ph&ugrave; hợp khi sử dụng cho c&aacute;c l&agrave;n da c&oacute; dấu hiệu bị n&aacute;m, t&agrave;n nhang. Vitamin E sẽ nu&ocirc;i dưỡng s&acirc;u trong l&agrave;n da gi&uacute;p đ&aacute;nh bay c&aacute;c sắc tố sẫm m&agrave;u, cản trở qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh n&aacute;m da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/vita-genic-hydrating-mask-mau-xanh-duong-20200909111314610.jpg" alt="mat-na-mat-na-vita-genic-banobagi-han-quoc-55" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Vita Genic Hydrating Mask (M&agrave;u xanh dương)</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; background-color: #ffffff; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400; text-align: left; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_4" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vita Genic Whitening Mask (M&agrave;u v&agrave;ng):&nbsp;</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vita Genic Banobagi Whitening Mask</span>&nbsp;l&agrave; loại mặt nạ c&oacute; c&ocirc;ng dụng<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;l&agrave;m trắng da</span>&nbsp;đặc biệt, khi dưỡng chất thấm s&acirc;u v&agrave;o da, n&oacute; sẽ nhanh ch&oacute;ng lấy đi c&aacute;c hắc tố sậm m&agrave;u dưới da, l&agrave;m đẹp da mặt, th&uacute;c đẩy da non ph&aacute;t triển trắng mịn tự nhi&ecirc;n.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Vitamin C c&oacute; trong dung dịch c&ograve;n c&oacute; t&aacute;c dụng tăng sức đề kh&aacute;ng, l&agrave;m giảm mụn v&agrave; l&agrave;m giảm những tổn thương do t&aacute;c động của thời tiết hay của nội tiết l&ecirc;n bề mặt da.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/vita-genic-whitening-mask-mau-vang-20200909111314625.jpg" alt="mat-na-mat-na-vita-genic-banobagi-han-quoc-55" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Vita Genic Whitening Mask (M&agrave;u v&agrave;ng)</div>
</div>
</td>
</tr>
</tbody>
</table>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (11, N'Tàu chiến điều khiển từ xa', CAST(600000 AS Decimal(18, 0)), CAST(899000 AS Decimal(18, 0)), CAST(N'2021-05-02T22:34:43.367' AS DateTime), 20, 4, 2, N'tau-chien-dieu-khien-tu-xa-50cm-2877a-1-1.jpg', 0, N'Đồ chơi chất lượng cao được sản xuất theo Tiêu chuẩn Châu Âu,có chứng nhận của Tổng cục TCĐL Chất lượng, NK và PP bởi cty BBT Việt Nam', N'<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px; color: #333333;">M&Ocirc; TẢ SẢN PHẨM</div>
<div class="detail_cate css-content" style="margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: Montserrat, HelveticaNeue, ''Helvetica Neue'', sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 772.188px; overflow: hidden; height: auto; color: #333333;">
<h3 id="mcetoc_1ecovi3e60" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;T&agrave;u chiến điều khiển từ xa 50cm 2877A</h3>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;">- H&atilde;ng sản xuất: BBT GLOBAL<br style="margin: 0px; padding: 0px;" />- C&oacute; 4 k&ecirc;nh: trước, l&ugrave;i, rẽ tr&aacute;i, rẽ phải<br style="margin: 0px; padding: 0px;" />- K&iacute;ch thước: 50*12*16 cm<br style="margin: 0px; padding: 0px;" />- Nguồn: &aacute;c quy 6V,500Mah<br style="margin: 0px; padding: 0px;" />- Khoảng c&aacute;ch kiểm so&aacute;t 100 m&eacute;t</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/07/tau-chien-dieu-khien-tu-xa-50cm-2877a-1.jpg" alt="" /><br style="margin: 0px; padding: 0px;" /><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/07/tau-chien-dieu-khien-tu-xa-50cm-2877a-2.jpg" alt="" /></p>
<h3 id="mcetoc_1ecovl87ia" class="sudo-media-item" style="margin: 0.3em 0px 0em; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 21px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/07/tau-chien-dieu-khien-tu-xa-50cm-2877a-1-1.jpg" alt="" /></h3>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/07/tau-chien-dieu-khien-tu-xa-50cm-2877a-3.jpg" alt="" /></p>
<div style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: Arial, serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 18px; text-align: center;">
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;">Đồ chơi của b&eacute; tại babycuatoi.vn đ&atilde; qua kiểm định chất lượng đảm bảo an to&agrave;n cho b&eacute; n&ecirc;n được nhiều Ba Mẹ tin tưởng v&agrave; lựa chọn cho con</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px; padding: 0px; border: 1px solid; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto;" src="https://sudospaces.com/babycuatoi/uploads/29082016/do-choi-cac-loai.jpg" alt="do-choi-cac-loai" /></p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (12, N'Ô tô điện trẻ em địa hình', CAST(2000000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)), CAST(N'2021-05-02T22:42:32.370' AS DateTime), 12, 5, 2, N'bbt-3356-o-to-dien-tre-em-1.jpg', 0, N'Xe ô tô điện trẻ em là món đồ chơi mà bất kỳ bé trai nào cũng muốn được sở hữu. Đặc biệt là các mẫu xe địa hình hầm hố, nổi bật trong số đó là mẫu xe địa hình BBT-3356.', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">TH&Ocirc;NG SỐ KỸ THUẬT</div>
<div class="specs-table" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
<table style="margin: 0px; padding: 0px; border-spacing: 0px; border: 1px solid #dddddd; width: 772px;" border="1" cellspacing="0" cellpadding="0">
<tbody style="margin: 0px; padding: 0px;">
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;M&atilde; sản phẩm</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;" data-sheets-value="{" data-sheets-userformat="{">&nbsp;BBT-3356</span></p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Thương hiệu</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;<strong style="margin: 0px; padding: 0px;">BBT GLOBAL</strong></p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Ắc quy</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;6V/4.5AH</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Động cơ</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #0000ff;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #0000ff; text-decoration-line: none;" href="https://babycuatoi.vn/o-to-dien-tre-em/2-dong-co" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">2 động cơ</strong></a></span></p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;B&aacute;nh xe</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;4 b&aacute;nh nhựa, thiết kế kiểu d&aacute;ng địa h&igrave;nh</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Vận tốc</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;~3 - 6 km/h</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Xuất xứ</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;Trung Quốc (h&agrave;ng xuất khẩu Ch&acirc;u &Acirc;u)</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;K&iacute;ch thước xe</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;112 x 69 x 72 cm</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;K&iacute;ch thước hộp</em></strong></td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;" data-sheets-value="{" data-sheets-userformat="{">&nbsp;104 x 62 x 50 cm</span></p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Trọng lượng</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;" data-sheets-value="{" data-sheets-userformat="{">&nbsp;18 kg</span></p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Trọng tải</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;40 kg</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Chất liệu</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; text-decoration-line: none;" href="https://babycuatoi.vn/tin-tuc/nhua-nguyen-sinh.html" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">Nhựa nguy&ecirc;n sinh</strong></a>&nbsp;bền bỉ, an to&agrave;n tuyệt đối; Linh kiện chất lượng cao</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Ti&ecirc;u chuẩn</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Ti&ecirc;u chuẩn ch&acirc;u &Acirc;u (CE), hợp quy nhập khẩu (CR), chứng nhận chất lượng (CQ)</p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;Phụ kiện k&egrave;m</em></strong></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;1 sạc, 1 khiển từ xa v&agrave; 1 s&aacute;ch hướng dẫn&nbsp;<em style="margin: 0px; padding: 0px;">(c&aacute;ch nhận biết h&agrave;ng xuất khẩu Ch&acirc;u &Acirc;u)</em></p>
</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><strong style="margin: 0px; padding: 0px;"><em style="margin: 0px; padding: 0px;">&nbsp;</em></strong><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;">Bảo h&agrave;nh</strong></em></p>
</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">
<p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;24 th&aacute;ng; Bảo tr&igrave; vĩnh viễn</p>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px; color: #333333;">M&Ocirc; TẢ SẢN PHẨM</div>
<div class="detail_cate css-content" style="margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: Montserrat, HelveticaNeue, ''Helvetica Neue'', sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 772.188px; overflow: hidden; height: auto; color: #333333;">
<blockquote style="margin: 0px 0px 0px 20px; padding: 0px; font-style: italic;">
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #ff0000;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">L&yacute; do 31.000+ kh&aacute;ch h&agrave;ng tin tưởng chọn &ocirc; t&ocirc;, xe m&aacute;y điện trẻ em tại Baby Của T&ocirc;i</strong></span><br style="margin: 0px; padding: 0px;" /></em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;">Babycuatoi.vn l&agrave; website của C&ocirc;ng ty BBT Việt Nam - Số 1 về ph&acirc;n phối đồ&nbsp;chơi trẻ em an to&agrave;n. Tại đ&acirc;y:</em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">1. 100% sản phẩm</strong>&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/o-to-dien-tre-em" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px; font-style: oblique;">&ocirc; t&ocirc;</strong></a>,&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/xe-may-dien-tre-em" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px; font-style: oblique;">xe m&aacute;y điện trẻ em</strong></a>&nbsp;BBT Global&nbsp;<strong style="margin: 0px; padding: 0px; font-style: oblique;">sản xuất theo T/C xuất khẩu ch&acirc;u &Acirc;u</strong>, từ chất liệu&nbsp;<strong style="margin: 0px; padding: 0px; font-style: oblique;">nhựa nguy&ecirc;n sinh an to&agrave;n, kh&ocirc;ng độc tố</strong>. Linh kiện điện tử chất lượng cao, chống ch&aacute;y nổ, k&eacute;o d&agrave;i tuổi thọ của sản phẩm vượt trội so với sản phẩm kh&aacute;c tr&ecirc;n thị trường (được&nbsp;<strong style="margin: 0px; padding: 0px; font-style: oblique;">kiểm định chất lượng</strong>&nbsp;đầy đủ).</em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">2. 100% sản phẩm mới, nhập khẩu ch&iacute;nh ngạch</strong>&nbsp;(c&oacute; chứng nhận v&agrave; kiểm tra từ Hải quan; c&oacute; VAT), 100%&nbsp;<strong style="margin: 0px; padding: 0px; font-style: oblique;">vỏ hộp v&agrave; chức năng bằng tiếng Anh</strong>, ch&iacute;nh h&atilde;ng BBT Global. Với d&ograve;ng xe bản quyền 100% l&agrave; h&agrave;ng chuẩn bản quyền được c&aacute;c h&atilde;ng xe ph&ecirc; duyệt v&agrave; cấp ph&eacute;p cho phi&ecirc;n bản thu nhỏ (<strong style="margin: 0px; padding: 0px; font-style: oblique;">Lưu &yacute;</strong>&nbsp;tr&ecirc;n thị trường, nhiều nơi b&aacute;n sản phẩm xe nội địa nhập lậu, c&ugrave;ng khu&ocirc;n mẫu, kh&ocirc;ng c&oacute; bản quyền rồi d&aacute;n tem m&aacute;c để b&aacute;n th&agrave;nh h&agrave;ng bản quyền để thu lợi).</em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">3. Bảo h&agrave;nh điện tử 24 th&aacute;ng</strong>&nbsp;tr&ecirc;n to&agrave;n quốc, bảo tr&igrave; vĩnh viễn. C&oacute; đầy đủ phụ kiện, đội ngũ kỹ thuật lu&ocirc;n sẵn s&agrave;ng phục vụ, ngay cả khi hết thời hạn bảo h&agrave;nh.</em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">4. Cam kết gi&aacute; thấp nhất thị trường</strong>&nbsp;cho sản phẩm ch&iacute;nh h&atilde;ng c&ugrave;ng chất lượng,&nbsp;do số lượng đặt h&agrave;ng lớn trực tiếp từ nh&agrave; m&aacute;y v&agrave; b&aacute;n tận tay người ti&ecirc;u d&ugrave;ng kh&ocirc;ng qua trung gian.&nbsp;Tặng ngay 10 lần gi&aacute; trị sản phẩm cho kh&aacute;ch h&agrave;ng t&igrave;m được nơi kh&aacute;c b&aacute;n sản phầm c&ugrave;ng chất lượng gi&aacute; rẻ hơn gi&aacute; b&aacute;n tại BABYCUATOI.</em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><strong style="margin: 0px; padding: 0px;">5. Giao h&agrave;ng - lắp đặt trong ng&agrave;y&nbsp;</strong>với hệ thống cửa h&agrave;ng tr&ecirc;n to&agrave;n quốc.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: center;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #ff0000;"><strong style="margin: 0px; padding: 0px;">BABYCUATOI.VN - CHẤT LƯỢNG + &nbsp;UY T&Iacute;N + GI&Aacute; CẢ TẠO N&Ecirc;N THƯƠNG HIỆU</strong></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><strong style="margin: 0px; padding: 0px;">&gt;&gt;N&ecirc;n xem:&nbsp;<u style="margin: 0px; padding: 0px;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/tin-tuc/phan-biet-o-to-xe-may-dien-nhap-khau-va-noi-dia.html" target="_blank" rel="noopener noreferrer">C&aacute;ch ph&acirc;n biệt&nbsp;&ocirc; t&ocirc; xe m&aacute;y&nbsp;điện trẻ em nội&nbsp;địa v&agrave; xuất khẩu</a></u></strong></p>
</blockquote>
<h2 id="mcetoc_1e60kq8nc0" style="margin: 0.3em 0px 0em; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 24px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14pt;">Xe &ocirc; t&ocirc; điện trẻ em địa h&igrave;nh si&ecirc;u hầm hố gi&aacute; rẻ BBT-3356</span></h2>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">-&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/o-to-dien-tre-em" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">Xe &ocirc; t&ocirc; điện trẻ em</strong></a>&nbsp;l&agrave; m&oacute;n đồ chơi m&agrave; bất kỳ b&eacute; trai n&agrave;o cũng muốn được sở hữu. Đặc biệt l&agrave; c&aacute;c mẫu xe địa h&igrave;nh hầm hố, nổi bật trong số đ&oacute; l&agrave; mẫu&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/o-to-dien-tre-em-dia-hinh-gia-re-bbt-3356.html" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">xe địa h&igrave;nh BBT-3356</strong></a>.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2021/03/bbt-3356-o-to-dien-tre-em-5.jpg" alt="Xe &ocirc; t&ocirc; trẻ em địa h&igrave;nh BBT-3356 | M&agrave;u đỏ" width="600" height="600" /></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Xe &ocirc; t&ocirc; cho b&eacute; BBT-3356 c&oacute; 2 m&agrave;u: đỏ v&agrave; trắng để bố mẹ c&oacute; thể lựa chọn 1 m&agrave;u ph&ugrave; hợp với sở th&iacute;ch v&agrave; t&iacute;nh c&aacute;ch của con.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2021/03/bbt-3356-o-to-dien-tre-em-4.jpg" alt="Xe &ocirc; t&ocirc; trẻ em địa h&igrave;nh BBT-3356 | M&agrave;u trắng" width="600" height="600" /></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Xe cũng c&oacute; 2 chế độ l&aacute;i tiện lợi:</p>
<ul style="margin: 0.5em 0px 0.5em 10px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;">
<li style="margin: 0.5em 0px 0.5em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-type: disc; line-height: 1.4em;">Chế độ điều khiển từ xa d&agrave;nh cho bố mẹ nếu b&eacute; c&ograve;n nhỏ, chưa thể tự chơi được</li>
<li style="margin: 0.5em 0px 0.5em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-type: disc; line-height: 1.4em;">Chế độ b&eacute; tự l&aacute;i bằng v&ocirc; lăng v&agrave; ch&acirc;n ga d&agrave;nh cho b&eacute; lớn hơn</li>
</ul>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- L&agrave; một mẫu xe địa h&igrave;nh n&ecirc;n kiểu d&aacute;ng v&agrave; thiết kế của BBT-3356 cũng mang n&eacute;t đặc trưng của d&ograve;ng&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="xe điện cho b&eacute; gi&aacute; rẻ" href="https://babycuatoi.vn/o-to-dien-tre-em" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">xe điện cho b&eacute; gi&aacute; rẻ</strong></a>&nbsp;n&agrave;y.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Thiết kế tổng thể của xe được tạo n&ecirc;n bởi c&aacute;c đường v&acirc;n tạo n&ecirc;n sự mạnh mẽ, c&aacute; t&iacute;nh. Kết hợp với đ&oacute; l&agrave; 4 b&aacute;nh xe lớn mang đặc trưng của d&ograve;ng xe địa h&igrave;nh. Th&acirc;n xe được l&agrave;m từ chất liệu nhựa cao cấp, d&agrave;y dặn v&agrave; được gắn với 4 b&aacute;nh xe bằng trục kim loại cực kỳ chắc chắn.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2021/03/bbt-3356-o-to-dien-tre-em-6.jpg" alt="Xe &ocirc; t&ocirc; trẻ em địa h&igrave;nh BBT-3356" width="600" height="497" /></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: center;"><em style="margin: 0px; padding: 0px;">Gầm cao, b&aacute;nh xe b&aacute;m đường, chống trơn trượt</em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- B&ecirc;n trong khoang xe cũng được trang bị đầy đủ những chức năng của 1 chiếc&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/o-to-dien-tre-em" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">&ocirc; t&ocirc; điện trẻ em</strong></a>&nbsp;với hệ thống &acirc;m thanh nghe nhạc vui nhộn, c&ugrave;ng với đ&oacute; l&agrave; gạt chuyển số tiến, số l&ugrave;i, chế độ nh&uacute;n cực kỳ th&uacute; vụ.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Xe được thiết kế ghế đ&ocirc;i&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" href="https://babycuatoi.vn/o-to-dien-tre-em/2-cho-ngoi" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">2 chỗ ngồi</strong></a>. Tuy nhi&ecirc;n v&igrave; k&iacute;ch thước xe kh&ocirc;ng qu&aacute; lớn v&agrave; 2 b&eacute; c&ugrave;ng chơi sẽ hơi chật n&ecirc;n khi chọn mua cho b&eacute; bố mẹ cũng n&ecirc;n lưu &yacute; đến điểm n&agrave;y.</p>
<figure class="sudo-media-item" style="margin: 0px; padding: 0px 0px 10px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2021/03/bbt-3356-o-to-dien-tre-em.jpg" alt="Xe &ocirc; t&ocirc; trẻ em địa h&igrave;nh BBT-3356" width="600" height="600" /></figure>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;">-&nbsp;</em>Để đảm bảo xe lu&ocirc;n vận h&agrave;nh trơn tru th&igrave; hệ thống điện, động cơ cũng rất quan trọng.&nbsp;<strong style="margin: 0px; padding: 0px;">Xe &ocirc; t&ocirc; trẻ em địa h&igrave;nh&nbsp;</strong>BBT-3356 được trang bị&nbsp;<strong style="margin: 0px; padding: 0px;">2 động cơ</strong>&nbsp;mạnh mẽ v&agrave; nguồn điện cung cấp cho to&agrave;n bộ xe l&agrave; 2 ắc quy 6V/4.5AH.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><strong style="margin: 0px; padding: 0px;">Một số h&igrave;nh ảnh feedback:</strong></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2021/03/bbt-3356-o-to-dien-tre-em-7.jpg" alt="" /></p>
<h3 id="mcetoc_1f0rbkrb80" style="margin: 0.3em 0px 0em; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 21px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;">Video Review v&agrave; hướng dẫn lắp đặt &ocirc; t&ocirc; điện trẻ em địa h&igrave;nh BBT Global</h3>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: center;"><strong style="margin: 0px; padding: 0px;"><iframe style="margin: 0px; padding: 0px;" src="https://www.youtube.com/embed/JBim7_aIb0s" width="560" height="314" allowfullscreen="allowfullscreen" data-mce-fragment="1"></iframe></strong></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><strong style="margin: 0px; padding: 0px;">-&nbsp;Xe &ocirc; t&ocirc; điện trẻ em BBT-3356</strong>&nbsp;được Babycuatoi nhập khẩu trực tiếp theo ti&ecirc;u chuẩn xuất khẩu sang thị trường ch&acirc;u &Acirc;u với những ti&ecirc;u chuẩn khắt khe về chất lượng. N&ecirc;n ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết &ocirc; t&ocirc; trẻ em tại Babycuatoi c&oacute; chất lượng tốt nhất, gi&aacute; b&aacute;n rẻ nhất thị trường.</p>
<blockquote style="margin: 0px 0px 0px 20px; padding: 0px; font-style: italic;">
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">Hướng dẫn mua h&agrave;ng:</strong></em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">Bạn c&oacute; thể đặt mua h&agrave;ng tại Babycuatoi bằng 1 trong những c&aacute;ch dưới đ&acirc;y:</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Mua h&agrave;ng trực tiếp tại&nbsp;<strong style="margin: 0px; padding: 0px;">hệ thống cửa h&agrave;ng Babycuatoi tr&ecirc;n to&agrave;n quốc.</strong></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Đặt h&agrave;ng trực tiếp tr&ecirc;n website.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Li&ecirc;n hệ đặt h&agrave;ng qua Hotline miễn ph&iacute;:&nbsp;<strong style="margin: 0px; padding: 0px;">1800.6598</strong></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">-<strong style="margin: 0px; padding: 0px;">&nbsp;</strong>Nhắn tin với ch&uacute;ng t&ocirc;i qua facebook hoặc zalo tại Biểu tượng chat ở g&oacute;c m&agrave;n h&igrave;nh.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Bạn c&oacute; thể xem th&ecirc;m&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="hướng dẫn lắp r&aacute;p xe &ocirc; t&ocirc; điện trẻ em" href="https://babycuatoi.vn/tin-tuc/huong-dan-cach-lap-rap-xe-o-to-dien-tre-em.html" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">hướng dẫn lắp r&aacute;p xe &ocirc; t&ocirc; điện trẻ em</strong></a>.</p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;">- Xem th&ecirc;m&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="hướng dẫn sử dụng xe &ocirc; t&ocirc; điện cho b&eacute;" href="https://babycuatoi.vn/tin-tuc/huong-dan-su-dung-xe-o-to-dien-tre-em.html" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">hướng dẫn sử dụng xe &ocirc; t&ocirc; điện cho b&eacute;</strong></a>&nbsp;l&acirc;u bền.</p>
</blockquote>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: center;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;">Xe &ocirc; t&ocirc; cho b&eacute; tại babycuatoi.vn đều đ&atilde; qua kiểm định chất lượng nghi&ecirc;m ngặt, đảm bảo an to&agrave;n cho b&eacute;</strong></em></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/10/t7-2020-kdcl-o-to-dien-tre-em-hebei.jpg" width="600" /></p>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (13, N'Xe trượt Scooter cho bé ', CAST(600000 AS Decimal(18, 0)), CAST(999000 AS Decimal(18, 0)), CAST(N'2021-05-02T22:50:48.650' AS DateTime), 15, 6, 2, N'sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh.jpg', 0, N'Xe trượt scooter 3 trong 1 giúp bé có thể chơi nhiều chức năng như: xe scooter, xe chòi chân, giỏ đựng đồ tiện dụng, để bé không bị nhàm chán khi chơi.', N'<div class="specs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-size: 14px;">
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px;">TH&Ocirc;NG SỐ KỸ THUẬT</div>
<div class="specs-table" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
<table style="margin: 0px; padding: 0px; border-spacing: 0px; border: 1px solid #dddddd; width: 772px;">
<tbody style="margin: 0px; padding: 0px;">
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;M&atilde; sản phẩm</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">SK1305</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;Thương hiệu</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;BBT Global</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;Độ Tuổi</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;3-10 tuổi</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;Tải trọng</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;40kg</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;K&iacute;ch thước</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;D&agrave;i*Rộng*Cao=&nbsp;56*25*52-73 cm<br style="margin: 0px; padding: 0px;" />&nbsp;K&iacute;ch thước b&aacute;nh xe trước 135*38mm, b&aacute;nh sau: 80mm</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;Chất liệu</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;- Khung hợp kim chịu lực<br style="margin: 0px; padding: 0px;" />&nbsp;- B&aacute;nh xe PU si&ecirc;u bền, c&oacute; đ&egrave;n ph&aacute;t s&aacute;ng</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;Điểm nổi bật</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;- Chiều cao của xe n&acirc;ng hạ được từ 52-73 cm cho b&eacute; sử dụng l&acirc;u d&agrave;i<br style="margin: 0px; padding: 0px;" />&nbsp;- B&aacute;nh xe c&oacute; đ&egrave;n LED ph&aacute;t s&aacute;ng khi di chuyển, b&eacute; cực th&iacute;ch<br style="margin: 0px; padding: 0px;" />&nbsp;- C&oacute; thể gập lại nhỏ gọn, dễ d&agrave;ng di chuyển<br style="margin: 0px; padding: 0px;" />&nbsp;- C&oacute; y&ecirc;n ngồi cho b&eacute; ch&ograve;i ch&acirc;n hoặc ngồi nghỉ<br style="margin: 0px; padding: 0px;" />&nbsp;- T&iacute;ch hợp th&ecirc;m chiếc giỏ đựng đồ xinh xắn&nbsp;</td>
</tr>
<tr style="margin: 0px; padding: 0px;">
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; background: #efefef; border-right-color: #d5d5d5; width: 249px;">&nbsp;Khối lượng hộp</td>
<td style="margin: 0px; padding: 10px; line-height: 23px; border-top-color: #d5d5d5; width: 480px;">&nbsp;4kg</td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="detail-title" style="margin: 0px 0px 30px; padding: 0px 0px 0px 22px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase; position: relative; font-weight: bold; font-size: 20px; color: #333333;">M&Ocirc; TẢ SẢN PHẨM</div>
<div class="detail_cate css-content" style="margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: Montserrat, HelveticaNeue, ''Helvetica Neue'', sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 772.188px; overflow: hidden; height: auto; color: #333333;">
<h2 id="mcetoc_1ecma4klm1a" style="margin: 0.3em 0px 0em; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 24px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #0000ff; font-size: 14pt;">Đặc điểm của xe trượt scooter BBT Global 3 trong 1 SK1305</span></h2>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 16px;"><strong style="margin: 0px; padding: 0px;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="Xe trượt scooter 3 trong 1" href="https://babycuatoi.vn/xe-truot-scooter-cho-be" target="_blank" rel="noopener noreferrer">Xe trượt scooter 3 trong 1</a>&nbsp;</strong>gi&uacute;p b&eacute; c&oacute; thể chơi nhiều chức năng như: xe scooter, xe ch&ograve;i ch&acirc;n, giỏ đựng đồ tiện dụng, để b&eacute; kh&ocirc;ng bị nh&agrave;m ch&aacute;n khi chơi. Xe c&oacute; 2 m&agrave;u: xanh dương ph&ugrave; hợp với b&eacute; trai v&agrave; m&agrave;u hồng ph&ugrave; hợp b&eacute; g&aacute;i.</span></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/05/sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh-9-1.jpg" alt="xe trượt scooter 3 trong 1 cho b&eacute; sk1305" width="600" height="600" /></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><em style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px; font-style: oblique;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">C&oacute; thể bạn quan t&acirc;m:</span></strong></em></span></p>
<ul style="margin: 0.5em 0px 0.5em 10px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
<li style="margin: 0.5em 0px 0.5em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-type: disc; line-height: 1.4em;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="Xe trượt scooter đa năng 3 trong 1" href="https://babycuatoi.vn/xe-truot-scooter-3-trong-1-bbt-global-cao-cap-sk1309.html" target="_blank" rel="noopener noreferrer"><em style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Xe trượt scooter đa năng 3 trong 1</span></em></a></span></li>
<li style="margin: 0.5em 0px 0.5em 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-type: disc; line-height: 1.4em;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="Xe trượt scooter 3 b&aacute;nh c&oacute; giỏ đựng đồ" href="https://babycuatoi.vn/xe-truot-scooter-3-banh-co-gio-dung-do-bbt-global.html" target="_blank" rel="noopener noreferrer"><em style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Xe trượt scooter 3 b&aacute;nh c&oacute; giỏ đựng đồ</span></em></a></span></li>
</ul>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="xe scooter cho b&eacute; sk1305" href="https://babycuatoi.vn/xe-truot-scooter-cho-be-bbt-global-3-trong-1-sk1305.html" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">Xe Scooter cho b&eacute; SK1305</strong></a>&nbsp;c&oacute; y&ecirc;n ngồi chắc chắn cho b&eacute; chơi ch&ograve;i ch&acirc;n hoặc ngồi nghỉ sau khi trượt scooter.&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;">Th&ecirc;m chiếc giỏ đựng đồ h&igrave;nh ch&uacute; bọ c&aacute;nh cứng v&ocirc; c&ugrave;ng xinh xắn cho b&eacute; mang theo đồ ăn, nước uống v&agrave; một số đồ d&ugrave;ng v&ocirc; c&ugrave;ng tiện lợi ạ</span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/05/sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh-1.jpg" alt="xe trượt scooter 3 trong 1 cho b&eacute; sk1305" width="600" height="600" /></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;">Một chiếc&nbsp;<strong style="margin: 0px; padding: 0px;">xe trượt scooter</strong>&nbsp;v&ocirc; c&ugrave;ng đa năng chắc chắn sẽ l&agrave; m&oacute;n qu&agrave; đầy bất ngờ cho b&eacute; rồi ạ.</span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/05/sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh-2.jpg" alt="xe trượt scooter 3 trong 1 cho b&eacute; sk1305" width="600" height="530" /></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="xe trượt scooter 3 b&aacute;nh" href="https://babycuatoi.vn/xe-truot-scooter-cho-be" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">Xe trượt scooter c&oacute; 3 b&aacute;nh</strong></a>&nbsp;đối xứng gi&uacute;p cho xe giữ thăng bằng tốt, b&eacute; dễ d&agrave;ng điều khiển. B&aacute;nh xe PU chịu lực, chống va đập v&agrave; &ecirc;m hơn.</span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/05/sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh-3.jpg" alt="xe trượt scooter 3 trong 1 cho b&eacute; sk1305" width="600" height="487" /></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 16px;">Xe trượt scooter l&agrave; người bạn kh&ocirc;ng thể thiếu gi&uacute;p b&eacute; vui chơi cũng như k&iacute;ch th&iacute;ch b&eacute; vận động thể chất nhiều hơn, ph&aacute;t triển to&agrave;n diện cả về thể chất v&agrave; tr&iacute; tuệ.</span></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/05/sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh-11.jpg" alt="xe trượt scooter 3 trong 1 cho b&eacute; sk1305" width="600" height="600" /></span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; text-align: justify;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;">C&aacute;ch lắp r&aacute;p cực kỳ đơn giản,&nbsp;<a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #001dff; text-decoration-line: none;" title="xe scooter" href="https://babycuatoi.vn/xe-truot-scooter-cho-be" target="_blank" rel="noopener noreferrer"><strong style="margin: 0px; padding: 0px;">xe scooter</strong></a>&nbsp;cũng c&oacute; thể gập lại nhỏ gọn, dễ d&agrave;ng di chuyển hoặc cất giữ.</span></p>
<p style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: arial, helvetica, sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt;"><img style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 100%; height: auto; display: block;" src="https://sudospaces.com/babycuatoi/2020/05/sk1305-xe-truot-scooter-cho-be-2-trong-1-bbt-global-xanh-4.jpg" alt="xe trượt scooter 3 trong 1 cho b&eacute; sk1305" width="600" height="800" /></span></p>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N' Body Bath Thái Lan Chính Hãng', CAST(1000000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)), CAST(N'2021-05-02T22:55:44.000' AS DateTime), 19, 8, 2, N'sua-tam-duong-da-cao-cap-boya-q10-body-bath-thai-lan-chinh-hang-20200911113857910.jpg', 1, N'Sữa Tắm Dưỡng Da Cao Cấp Boya Q10 Body Bath Thái Lan là một hỗn hợp của Collagen & Juga L-Glutathione. Boya Q10 Body Bath làm sạch sâu bên trong da', N'<div style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; font-family: sans-serif; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; font-size: 14px; color: #333333;">
<div style="margin: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px;">
<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, serif; vertical-align: baseline; background: #ffffff; line-height: 20px; font-size: 12px;">
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_0" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Sữa Tắm Dưỡng Da Cao Cấp Boya Q10 Body Bath Th&aacute;i Lan</span></p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Xuất xứ</span>: Th&aacute;i Lan.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">-&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Dung t&iacute;ch</span>: 500ml.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/sua-tam-duong-da-cao-cap-boya-q10-body-bath-thai-lan-20200911114039268.jpg" alt="sua-tam-sua-tam-duong-da-cao-cap-boya-q10-body-bath-thai-lan-chinh-hang-292" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">Sữa Tắm Dưỡng Da Cao Cấp Boya Q10 Body Bath Th&aacute;i Lan</div>
</div>
</td>
</tr>
</tbody>
</table>
<table style="margin: 0px auto -1px; padding: 0px; border-spacing: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; width: 1189px; height: auto;">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; margin: 0px; padding: 0px;">
<div style="box-sizing: border-box; margin: 0px; padding: 7px; text-align: justify; vertical-align: top; background-color: transparent;">
<div id="ContentPlaceHolder2_Repeater_MoTaSanPham_Panel_noidung_1" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">C&ocirc;ng Dụng&nbsp;</span>:</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- L&agrave;m sạch s&acirc;u, dưỡng ẩm, trẻ h&oacute;a l&agrave;n da, trắng da. Cho bạn một<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">&nbsp;l&agrave;n da trắng đẹp</span>, mịn m&agrave;ng đầy sức sống. Với hương thơm nước hoa, gi&uacute;p khử m&ugrave;i h&ocirc;i, cơ thể thơm m&aacute;t suốt cả ng&agrave;y.</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">- Shop c&oacute; đủ 3 m&agrave;u tha hồ cho chị em lựa chọn nh&eacute;!</p>
<p style="box-sizing: border-box; margin: 0px !important; padding: 0px;">&nbsp;</p>
</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; text-align: center;"><img style="box-sizing: border-box; margin: 10px 0px 2px; padding: 0px; border: 0px solid #cccccc; vertical-align: middle; max-width: 100%; height: auto; clear: left; width: 1175px; border-radius: 5px;" src="https://myphamxinhdep.com/admincp/motasanpham/NhieuAnh/cong-dung-sua-tam-duong-da-cao-cap-boya-q10-body-bath-thai-lan-20200911114039284.jpg" alt="sua-tam-sua-tam-duong-da-cao-cap-boya-q10-body-bath-thai-lan-chinh-hang-292" /></div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px; text-align: center; color: #918b8b; font-style: italic;">C&ocirc;ng Dụng Sữa Tắm Dưỡng Da Cao Cấp Boya Q10 Body Bath Th&aacute;i Lan</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (17, N'đồ chơi em bé', CAST(200000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), CAST(N'2021-05-05T21:16:57.000' AS DateTime), 14, 3, 2, N'download (2).jpg', 0, N'đồ chơi tốt', N'<p>qu&aacute; đẹp</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (18, N'Xe đua trẻ em', CAST(100000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), CAST(N'2021-05-06T17:11:53.000' AS DateTime), 30, 4, 2, N'download (2).jpg', 0, N'Xe đua dáng đẹp', N'<p>Mẫu xe đua mới nhất đồ chơi điều khiển từ xa d&agrave;nh cho trẻ em</p>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Sửa rửa mặt', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Dưỡng da mặt', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Mặt nạ', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (4, N'Phụ kiện', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'Dưỡng thể', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'Tắm trắng', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Kem chống nắng', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (8, N'Sửa tắm', 3)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Xuất Xứ', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Chăm sóc mặt', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'Chăm sóc body', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (5, CAST(N'2021-11-19T00:06:59.847' AS DateTime), NULL, CAST(N'2021-11-19T00:00:00.000' AS DateTime), 1, CAST(3000000 AS Decimal(18, 0)), 6)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (6, 2, 16, 5, CAST(1500000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E42D4B1EEB]    Script Date: 11/19/2021 12:14:50 AM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[FooterDetail]  WITH CHECK ADD FOREIGN KEY([FooterID])
REFERENCES [dbo].[Footer] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[ReplyFeedback]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[ReplyFeedback]  WITH CHECK ADD FOREIGN KEY([FeedBackID])
REFERENCES [dbo].[Feedback] ([ID])
GO
USE [master]
GO
ALTER DATABASE [webbanmypham] SET  READ_WRITE 
GO
