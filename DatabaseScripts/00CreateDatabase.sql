USE [master]
GO

/****** Object:  Database [FoodOptimizationDb]    Script Date: 2024/09/19 12:08:01 ******/
CREATE DATABASE [FoodOptimizationDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FoodOptimizationDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\FoodOptimizationDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FoodOptimizationDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\FoodOptimizationDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodOptimizationDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [FoodOptimizationDb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET ARITHABORT OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [FoodOptimizationDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [FoodOptimizationDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET  DISABLE_BROKER 
GO

ALTER DATABASE [FoodOptimizationDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [FoodOptimizationDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [FoodOptimizationDb] SET  MULTI_USER 
GO

ALTER DATABASE [FoodOptimizationDb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [FoodOptimizationDb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [FoodOptimizationDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [FoodOptimizationDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [FoodOptimizationDb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [FoodOptimizationDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [FoodOptimizationDb] SET QUERY_STORE = OFF
GO

ALTER DATABASE [FoodOptimizationDb] SET  READ_WRITE 
GO


