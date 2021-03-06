USE [master]
GO
/****** Object:  Database [Welp.Models.WelpContext]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE DATABASE [Welp.Models.WelpContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Welp.Models.WelpContext', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Welp.Models.WelpContext.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Welp.Models.WelpContext_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Welp.Models.WelpContext_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Welp.Models.WelpContext] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Welp.Models.WelpContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Welp.Models.WelpContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET  MULTI_USER 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Welp.Models.WelpContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Welp.Models.WelpContext] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Welp.Models.WelpContext]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/26/2016 7:47:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Businesses]    Script Date: 7/26/2016 7:47:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Businesses](
	[BusinessID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [nvarchar](max) NULL,
	[BusinessTypeID] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Hours] [nvarchar](max) NULL,
	[Phone] [int] NOT NULL,
	[Menu] [nvarchar](max) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_dbo.Businesses] PRIMARY KEY CLUSTERED 
(
	[BusinessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessTypes]    Script Date: 7/26/2016 7:47:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessTypes](
	[BusinessTypeID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessTypeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.BusinessTypes] PRIMARY KEY CLUSTERED 
(
	[BusinessTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 7/26/2016 7:47:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[PictureID] [int] IDENTITY(1,1) NOT NULL,
	[PictureURL] [nvarchar](max) NULL,
	[UserID] [int] NOT NULL,
	[BusinessID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Pictures] PRIMARY KEY CLUSTERED 
(
	[PictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 7/26/2016 7:47:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[BusinessID] [int] NOT NULL,
	[StarReview] [int] NULL,
	[TextReview] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Ratings] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/26/2016 7:47:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_BusinessTypeID]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_BusinessTypeID] ON [dbo].[Businesses]
(
	[BusinessTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserID]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Businesses]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessID]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_BusinessID] ON [dbo].[Pictures]
(
	[BusinessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserID]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Pictures]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BusinessID]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_BusinessID] ON [dbo].[Ratings]
(
	[BusinessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserID]    Script Date: 7/26/2016 7:47:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Ratings]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.BusinessTypes_BusinessTypeID] FOREIGN KEY([BusinessTypeID])
REFERENCES [dbo].[BusinessTypes] ([BusinessTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.BusinessTypes_BusinessTypeID]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.Users_UserID]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pictures_dbo.Businesses_BusinessID] FOREIGN KEY([BusinessID])
REFERENCES [dbo].[Businesses] ([BusinessID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_dbo.Pictures_dbo.Businesses_BusinessID]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pictures_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_dbo.Pictures_dbo.Users_UserID]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ratings_dbo.Businesses_BusinessID] FOREIGN KEY([BusinessID])
REFERENCES [dbo].[Businesses] ([BusinessID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_dbo.Ratings_dbo.Businesses_BusinessID]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ratings_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_dbo.Ratings_dbo.Users_UserID]
GO
USE [master]
GO
ALTER DATABASE [Welp.Models.WelpContext] SET  READ_WRITE 
GO
