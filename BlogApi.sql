USE [master]
GO
/****** Object:  Database [WebApiBlog]    Script Date: 12.01.2020 22:01:06 ******/
CREATE DATABASE [WebApiBlog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebApiBlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WebApiBlog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebApiBlog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WebApiBlog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WebApiBlog] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebApiBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebApiBlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebApiBlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebApiBlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebApiBlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebApiBlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebApiBlog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebApiBlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebApiBlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebApiBlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebApiBlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebApiBlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebApiBlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebApiBlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebApiBlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebApiBlog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebApiBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebApiBlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebApiBlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebApiBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebApiBlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebApiBlog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebApiBlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebApiBlog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebApiBlog] SET  MULTI_USER 
GO
ALTER DATABASE [WebApiBlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebApiBlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebApiBlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebApiBlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebApiBlog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebApiBlog] SET QUERY_STORE = OFF
GO
USE [WebApiBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12.01.2020 22:01:06 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 12.01.2020 22:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleName] [varchar](max) NULL,
	[ArticleDetail] [text] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 12.01.2020 22:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleID] [int] NULL,
	[CommentDetail] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UserName] [varchar](32) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12.01.2020 22:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200102103423_InitialCreate', N'3.1.0')
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([id], [ArticleName], [ArticleDetail], [CreateDate]) VALUES (1, N'ASP.NET Core – Dependency Injection', N'Bu yazıda ASP.NET Core ile bütünleşik olarak gelen Dependency Injection mekanizmasına göz atacağız.

ASP.NET Core ile ilgili daha önceden yayınladığım iki yazı bulunuyor. Eğer ASP.NET Core’a yeni başlangıç yapıyorsanız bu yazıdan önce diğer iki yazıyı da okumanızı tavsiye ederim.', CAST(N'2019-12-22T19:04:37.420' AS DateTime))
INSERT [dbo].[Articles] ([id], [ArticleName], [ArticleDetail], [CreateDate]) VALUES (2, N'ASP.NET’te jQuery ile AJAX İşlemleri', N'jQuery artık web uygulamalarında sıklıkla kullanılır hale geldi. Gerek sayfa tasarımına harika görseller ve efektler katması, gerekse AJAX taleplerini basit ve hızlı gerçekleştiriyor olması bu kütüphaneyi programcılar ve tasarımcılar için çok cazip hale getiriyor. ', CAST(N'2019-12-22T19:05:06.503' AS DateTime))
INSERT [dbo].[Articles] ([id], [ArticleName], [ArticleDetail], [CreateDate]) VALUES (3, N'ASP.NET’te SEO Uyumlu Sayfa Yönlendirme', N'SEO(Search Engine Optimization) yani arama motoru iyileştirmesi son yıllarda internet dünyasında tanınmak ve para kazanmak isteyen çoğu kişinin ağzından düşürmediği bir kavram. Arama motorlarında üst sıralara çıkmak, adsense reklamlarından iyi gelirler elde etmek başlı başına bir sektör haline bile geldi! Hatta sırf bu işten ayda 1.000$’ın üzerinde gelir elde eden tanıdıklarım bile var(İmreniyorum sizlere arkadaşlar). ', CAST(N'2019-12-22T19:05:38.217' AS DateTime))
SET IDENTITY_INSERT [dbo].[Articles] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([id], [ArticleID], [CommentDetail], [CreateDate], [UserName]) VALUES (1, 1, N'güzel bir ipucu olmuş.. peki bunun ardından bir metod kullanmaya gerek kalmıyor mu? yani bu 3 satır tek başına başka bir sayfaya yönlenmeyi sağlayacak mı?', CAST(N'2019-12-22T19:06:19.437' AS DateTime), N'Ali')
INSERT [dbo].[Comments] ([id], [ArticleID], [CommentDetail], [CreateDate], [UserName]) VALUES (2, 2, N'Evet yeterli olacak, test edip görebilirsiniz.', CAST(N'2019-12-22T19:06:31.387' AS DateTime), N'Sahin')
INSERT [dbo].[Comments] ([id], [ArticleID], [CommentDetail], [CreateDate], [UserName]) VALUES (3, 3, N'Yararlı bir bilgi teşekkür ederim', CAST(N'2019-12-22T19:06:49.647' AS DateTime), N'Ali')
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [PasswordHash], [PasswordSalt]) VALUES (1, N'Jason', N'Watmore', N'jason', 0xCC285DECCD440125DB3EDEC8881D5EA1BD0DC99DC0948D30DA416A6A5E62F9E41D6D995CC4024832652931930B48704E4A126DAEC1C5FBFF297BC00B1EE5D882, 0x15DE3E6F535F8F2A8F31B60710BB8DF8C63E0444EE691B5F39BB8AD28195E026A0A4636639E98FB0381CB5E6E26E20C4FC5C713B6E0E333B2DDEDAAA61438CB3F7E238044A0A6C3E326FFADD035D5E4DF3AC02BB5D9D17C9A4E8791C88DAB6B9E71268BA99509E37545F90931555B86B6527935C2E125F6369C4B3857593ED7A)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Articles] ADD  CONSTRAINT [DF_Articles_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
USE [master]
GO
ALTER DATABASE [WebApiBlog] SET  READ_WRITE 
GO
