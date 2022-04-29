
/*NOMBRE: JOHANDER GUILAMO MATRICULA:15-MIIN-1-121 SECCION:0541*/



USE [master]
GO
****** Object:  Database [COCINA MORDENA]    Script Date: 28/4/2022 12:09:10 p. m. ******/
CREATE DATABASE [COCINA MORDENA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'COCINA MORDENA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\COCINA MORDENA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'COCINA MORDENA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\COCINA MORDENA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [COCINA MORDENA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [COCINA MORDENA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [COCINA MORDENA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET ARITHABORT OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [COCINA MORDENA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [COCINA MORDENA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [COCINA MORDENA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [COCINA MORDENA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [COCINA MORDENA] SET  MULTI_USER 
GO
ALTER DATABASE [COCINA MORDENA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [COCINA MORDENA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [COCINA MORDENA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [COCINA MORDENA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [COCINA MORDENA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [COCINA MORDENA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [COCINA MORDENA] SET QUERY_STORE = OFF
GO
USE [COCINA MORDENA]
GO
/****** Object:  Table [dbo].[ALMACENES]    Script Date: 28/4/2022 12:09:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMACENES](
	[ALMACENESID] [int] NULL,
	[EMPLEADOSID] [int] NULL,
	[MATERIALESID] [int] NULL,
	[MODO] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 28/4/2022 12:09:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[EMPLEADOSID] [int] NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[SEXO] [varchar](50) NULL,
	[ALMACENESID] [int] NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[EMPLEADOSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIALES]    Script Date: 28/4/2022 12:09:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIALES](
	[MATERIALESID] [int] NULL,
	[NOMBRE] [varchar](50) NULL,
	[ALMACENESID] [int] NULL,
	[MEDIDA] [varchar](50) NULL,
	[SUPLIDORESID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLATOS]    Script Date: 28/4/2022 12:09:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLATOS](
	[PLATOSID] [int] NULL,
	[NOMBRE] [varchar](50) NULL,
	[MATERIALESID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPLIDORES]    Script Date: 28/4/2022 12:09:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPLIDORES](
	[SUPLIDORESID] [int] NULL,
	[NOMBRE] [varchar](max) NULL,
	[UBICACION] [varchar](50) NULL,
	[MATERIALESID] [int] NULL,
	[ALMACENESID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10001, 9001, 1, N'FRIO')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10002, 9002, 2, N'FRIO')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10003, 9003, 3, N'CALIENTE')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10004, 9004, 4, N'CALIENTE')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10005, 9005, 5, N'FRIO')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10006, 9006, 6, N'CALIENTE')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10007, 9007, 7, N'CALIENTE')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10008, 9008, 8, N'CALIENTE')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10009, 9009, 9, N'CALIENTE')
INSERT [dbo].[ALMACENES] ([ALMACENESID], [EMPLEADOSID], [MATERIALESID], [MODO]) VALUES (10010, 9010, 10, N'REMOLACHA  ')
GO
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9001, N'PEDRO GUILAMO', N'M', 10001)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9002, N'ANGELA CASTEN', N'F', 10002)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9003, N'MARIA CASTEN', N'F', 10003)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9004, N'ANGELINE GUILAMO', N'F', 10004)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9005, N'DANAY MERCADO', N'F', 10005)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9006, N'MATIAS GUILAMO', N'M', 10006)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9007, N'RENAN SANTOS', N'M', 10007)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9008, N'LIBRANNER ESPINAL', N'M', 10008)
INSERT [dbo].[EMPLEADOS] ([EMPLEADOSID], [NOMBRE], [SEXO], [ALMACENESID]) VALUES (9009, N'WILBERT DE LUNA', N'M', 10009)
GO
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (1, N'TOMATE', 10001, N'LIBRA', 5041)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (2, N'PAPA', 10002, N'LIBRA', 5042)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (3, N'CEBOLLA', 10003, N'KG', 5043)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (4, N'PASTA', 10004, N'KG', 5044)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (5, N'CARNES', 10005, N'KG', 5045)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (6, N'SAL', 10006, N'LIBRA', 5046)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (7, N'PIMIENTA', 10007, N'KG', 5047)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (8, N'AZUCAR', 10008, N'LIBRA', 5048)
INSERT [dbo].[MATERIALES] ([MATERIALESID], [NOMBRE], [ALMACENESID], [MEDIDA], [SUPLIDORESID]) VALUES (9, N'ZANAHORIA', 10009, N'KG', 5049)
GO
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2021, N'ENSALADA VERDE', 1)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2022, N'ENSALADA RUSA', 2)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2023, N'PASTA ITALIANA', 3)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2024, N'CORTES CARNES', 5)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2025, N'PAPAS A LA FRANCESA', 6)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2026, N'PIZZA', 7)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2027, N'HAMBURGUESA', 5)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2028, N'VEGETALES HERVIDOS', 10)
INSERT [dbo].[PLATOS] ([PLATOSID], [NOMBRE], [MATERIALESID]) VALUES (2029, N'BATIDO DE FRUTAS', 8)
GO
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4001, N'LORENZO COMERCIAL', N'DISTRITO NACIONAL', 1, 1001)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4002, N'MM CXA', N'MONTE PLATA', 2, 1002)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4003, N'BEPENMA', N'SANTO DOMINGO NORTE', 3, 1003)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4004, N'ALMACENES PAYANO', N'SAN CRISTOBAL', 4, 1004)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4005, N'CARNICERIA LEDESMA', N'DISTRITO NACIONAL', 5, 1005)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4006, N'COMERCIAL BAEZ', N'DISTRITO NACIONAL', 6, 1006)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4007, N'CORRIPIO CXA', N'DISTRITO NACIONAL', 7, 1007)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4008, N'CENTRAL ROMANA', N'LA ROMANA', 8, 1008)
INSERT [dbo].[SUPLIDORES] ([SUPLIDORESID], [NOMBRE], [UBICACION], [MATERIALESID], [ALMACENESID]) VALUES (4009, N'GARRIDO ALMACENES', N'BAJOS DE HAINA', 9, 1009)
GO
USE [master]
GO
ALTER DATABASE [COCINA MORDENA] SET  READ_WRITE 
GO
