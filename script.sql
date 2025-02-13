USE [master]
GO
/****** Object:  Database [Fabrica]    Script Date: 07/06/2020 15:18:54 ******/
CREATE DATABASE [Fabrica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fabrica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Fabrica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Fabrica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Fabrica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Fabrica] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fabrica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fabrica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fabrica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fabrica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fabrica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fabrica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fabrica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Fabrica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fabrica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fabrica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fabrica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fabrica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fabrica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fabrica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fabrica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fabrica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Fabrica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fabrica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fabrica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fabrica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fabrica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fabrica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fabrica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fabrica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Fabrica] SET  MULTI_USER 
GO
ALTER DATABASE [Fabrica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fabrica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fabrica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fabrica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Fabrica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Fabrica] SET QUERY_STORE = OFF
GO
USE [Fabrica]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NOT NULL,
	[Maxstock] [int] NOT NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlmProd]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlmProd](
	[IdAlmacen] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_AlmProd] PRIMARY KEY CLUSTERED 
(
	[IdAlmacen] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Ciudad] [nvarchar](50) NULL,
	[Provincia] [nvarchar](50) NULL,
	[CP] [int] NULL,
	[Telefono] [int] NULL,
	[Correo] [nvarchar](70) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NULL,
	[Apellido] [nvarchar](20) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Ciudad] [nvarchar](50) NULL,
	[Provincia] [nvarchar](50) NULL,
	[CP] [int] NULL,
	[Telefono] [int] NULL,
	[Correo] [nvarchar](70) NULL,
	[Cargo] [nvarchar](20) NULL,
	[Foto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entregas]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entregas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdVenta] [int] NOT NULL,
	[Estado] [nvarchar](20) NOT NULL,
	[FechaEntrega] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineaVenta]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineaVenta](
	[IdVenta] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_LineaVenta] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimientos]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimientos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Entrada] [datetime] NULL,
	[Salida] [datetime] NULL,
 CONSTRAINT [PK_Movimientos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Categoria] [nvarchar](50) NULL,
	[Precio] [int] NULL,
	[Peso] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[NombreUsu] [nvarchar](100) NOT NULL,
	[Passwd] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 07/06/2020 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Estado] [nvarchar](20) NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Almacen] ON 

INSERT [dbo].[Almacen] ([Id], [Nombre], [Maxstock]) VALUES (1, N'Este', 10000)
INSERT [dbo].[Almacen] ([Id], [Nombre], [Maxstock]) VALUES (2, N'Norte', 10000)
INSERT [dbo].[Almacen] ([Id], [Nombre], [Maxstock]) VALUES (3, N'Sur', 7500)
INSERT [dbo].[Almacen] ([Id], [Nombre], [Maxstock]) VALUES (4, N'Oeste', 8000)
INSERT [dbo].[Almacen] ([Id], [Nombre], [Maxstock]) VALUES (5, N'Afueras', 5000)
SET IDENTITY_INSERT [dbo].[Almacen] OFF
INSERT [dbo].[AlmProd] ([IdAlmacen], [IdProducto], [Stock]) VALUES (1, 1, 40)
INSERT [dbo].[AlmProd] ([IdAlmacen], [IdProducto], [Stock]) VALUES (2, 2, 50)
INSERT [dbo].[AlmProd] ([IdAlmacen], [IdProducto], [Stock]) VALUES (2, 4, 100)
INSERT [dbo].[AlmProd] ([IdAlmacen], [IdProducto], [Stock]) VALUES (5, 4, 1000)
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nombre], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo]) VALUES (1, N'PCcomponentes', N'Calle falsa 123', N'Calahorra', N'La rioja', 26500, 687456987, N'ejemplo@gmail.com')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo]) VALUES (2, N'Cetronic', N'Calle la rivera 89', N'Madrid', N'Madrid', 28080, 654789123, N'centronicmadrid@gmail.com')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo]) VALUES (3, N'TodoElectronica', N'Avnd de serraneo 75', N'Zaragoza', N'Aragon', 50001, 987451235, N'todoelectronica@gmail.com')
INSERT [dbo].[Clientes] ([Id], [Nombre], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo]) VALUES (4, N'MasInformatica', N'Calle la satana 98', N'Sevilla', N'Andalucia', 25478, 987456325, N'masinformatica@gmail.com')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo], [Cargo], [Foto]) VALUES (1, N'Ruben', N'Orio', N'Calle falsa 123', N'Calahorra', N'La rioja', 26500, 687456987, N'rubenorio2@hotmail.com', N'Jefe', NULL)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo], [Cargo], [Foto]) VALUES (11, N'Jon', N'Ander', N'El Sol 33', N'Villar de Arnedo', N'La Rioja', 65478, 987654321, N'jon@gmail.com', N'Empleado', NULL)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo], [Cargo], [Foto]) VALUES (12, N'Miguel', N'Ciordia', N'La masia 26', N'Logroño', N'La rioja', 26508, 941258754, N'miguelito@hotmail.com', N'Transportista', NULL)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo], [Cargo], [Foto]) VALUES (13, N'Alba', N'Burriña', N'calle sardina 8 1ºA', N'Ataun', N'Pais Vasco', 25874, 654753524, N'albaburriña@gmail.com', N'Transportista', NULL)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo], [Cargo], [Foto]) VALUES (14, N'Jesus', N'Rodriguez', N'Puerta el sol 43', N'Madrid', N'Madrid', 25751, 654789321, N'jesusito@gmail.com', N'Transportista', NULL)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Direccion], [Ciudad], [Provincia], [CP], [Telefono], [Correo], [Cargo], [Foto]) VALUES (15, N'Mario', N'Sanedo', N'Plz la ronda 5', N'Logroño', N'La rioja', 26504, 545167465, N'mario@gmail.com', N'Empleado', NULL)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Entregas] ON 

INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (3, 13, 6, N'Realizado', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (4, 13, 7, N'En curso', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1002, 13, 1006, N'En curso', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1003, 13, 1005, N'Pendiente', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1004, 14, 1007, N'Realizado', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1005, 14, 1009, N'Realizado', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1006, 14, 1008, N'En curso', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1007, 14, 1010, N'En curso', NULL)
INSERT [dbo].[Entregas] ([Id], [IdEmpleado], [IdVenta], [Estado], [FechaEntrega]) VALUES (1008, 14, 1011, N'Pendiente', NULL)
SET IDENTITY_INSERT [dbo].[Entregas] OFF
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (6, 1, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (6, 2, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (6, 4, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (7, 2, 3)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (7, 3, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1005, 1, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1005, 2, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1005, 4, 4)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1006, 1, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1006, 2, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1006, 4, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1007, 2, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1007, 3, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1007, 5, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1007, 6, 3)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1008, 1, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1008, 3, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1008, 4, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1008, 6, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1009, 1, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1009, 2, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1009, 4, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1009, 6, 5)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1010, 2, 2)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1010, 4, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1010, 5, 3)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1011, 1, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1011, 2, 4)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1011, 3, 1)
INSERT [dbo].[LineaVenta] ([IdVenta], [IdProducto], [Cantidad]) VALUES (1011, 5, 2)
SET IDENTITY_INSERT [dbo].[Movimientos] ON 

INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1, 1, CAST(N'2020-04-25T16:45:35.377' AS DateTime), CAST(N'2020-04-25T17:31:17.303' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (2, 1, CAST(N'2020-04-25T17:34:45.247' AS DateTime), CAST(N'2020-04-25T17:34:56.923' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (4, 1, CAST(N'2020-04-28T15:55:28.813' AS DateTime), CAST(N'2020-04-28T15:57:00.493' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (5, 1, CAST(N'2020-04-28T16:24:59.633' AS DateTime), CAST(N'2020-04-28T16:30:44.413' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (6, 1, CAST(N'2020-05-03T11:34:40.707' AS DateTime), CAST(N'2020-05-03T11:35:37.287' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (7, 1, CAST(N'2020-05-03T11:35:51.410' AS DateTime), CAST(N'2020-05-04T16:26:46.853' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (8, 8, CAST(N'2020-05-04T16:26:33.770' AS DateTime), CAST(N'2020-05-04T16:27:23.197' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (9, 1, CAST(N'2020-05-04T16:27:04.047' AS DateTime), CAST(N'2020-05-04T16:27:36.907' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (10, 1, CAST(N'2020-05-04T16:28:01.260' AS DateTime), CAST(N'2020-05-04T16:28:17.967' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (11, 1, CAST(N'2020-05-05T21:56:10.567' AS DateTime), CAST(N'2020-05-07T18:24:37.150' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (12, 9, CAST(N'2020-05-07T18:20:46.270' AS DateTime), CAST(N'2020-05-07T18:24:16.943' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (13, 10, CAST(N'2020-05-07T18:22:30.963' AS DateTime), CAST(N'2020-05-10T10:58:50.067' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (14, 8, CAST(N'2020-05-07T19:00:12.737' AS DateTime), CAST(N'2020-05-27T13:03:25.943' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (15, 1, CAST(N'2020-05-07T19:00:23.920' AS DateTime), CAST(N'2020-05-14T16:22:33.197' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (16, 10, CAST(N'2020-05-11T16:34:03.843' AS DateTime), CAST(N'2020-05-11T16:43:11.350' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (17, 10, CAST(N'2020-05-11T16:56:07.197' AS DateTime), CAST(N'2020-05-11T17:19:01.347' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1014, 10, CAST(N'2020-05-12T15:25:13.270' AS DateTime), CAST(N'2020-05-12T15:45:10.177' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1015, 10, CAST(N'2020-05-12T15:49:12.627' AS DateTime), CAST(N'2020-05-12T16:07:18.793' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1016, 10, CAST(N'2020-05-12T16:19:54.927' AS DateTime), CAST(N'2020-05-12T16:22:20.617' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1017, 10, CAST(N'2020-05-12T16:23:05.850' AS DateTime), CAST(N'2020-05-12T16:23:26.150' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1018, 10, CAST(N'2020-05-12T16:24:43.287' AS DateTime), CAST(N'2020-05-12T16:31:56.670' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1019, 10, CAST(N'2020-05-12T16:32:56.093' AS DateTime), CAST(N'2020-05-12T16:33:31.967' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1020, 10, CAST(N'2020-05-12T16:43:51.840' AS DateTime), CAST(N'2020-05-12T16:44:14.737' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1021, 10, CAST(N'2020-05-12T16:45:06.403' AS DateTime), CAST(N'2020-05-15T18:38:56.487' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1022, 1, CAST(N'2020-05-14T16:25:47.517' AS DateTime), CAST(N'2020-05-14T16:26:49.153' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1023, 1, CAST(N'2020-05-14T16:28:21.177' AS DateTime), CAST(N'2020-05-15T18:31:55.220' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1024, 1, CAST(N'2020-05-15T18:36:42.057' AS DateTime), CAST(N'2020-05-15T18:40:44.530' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1025, 1, CAST(N'2020-05-18T16:12:47.063' AS DateTime), CAST(N'2020-05-25T14:43:18.867' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1026, 10, CAST(N'2020-05-22T18:07:42.713' AS DateTime), NULL)
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1027, 1, CAST(N'2020-05-26T11:24:35.550' AS DateTime), CAST(N'2020-05-26T11:55:11.927' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1028, 1, CAST(N'2020-05-26T11:57:31.803' AS DateTime), CAST(N'2020-05-26T11:58:15.370' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1029, 9, CAST(N'2020-05-26T13:12:10.083' AS DateTime), CAST(N'2020-05-26T14:12:22.087' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1030, 1, CAST(N'2020-05-26T13:18:33.363' AS DateTime), CAST(N'2020-05-26T13:27:20.380' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1031, 1, CAST(N'2020-05-26T13:29:29.790' AS DateTime), CAST(N'2020-05-26T13:46:26.670' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1032, 1, CAST(N'2020-05-26T14:13:06.080' AS DateTime), CAST(N'2020-05-26T14:14:42.497' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1033, 11, CAST(N'2020-05-26T14:13:27.587' AS DateTime), CAST(N'2020-05-27T12:28:37.640' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1034, 1, CAST(N'2020-05-27T10:47:12.440' AS DateTime), CAST(N'2020-05-27T11:46:10.117' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1035, 1, CAST(N'2020-05-27T12:09:26.780' AS DateTime), CAST(N'2020-05-27T12:11:10.060' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1036, 1, CAST(N'2020-05-27T12:17:35.760' AS DateTime), CAST(N'2020-05-27T12:19:00.313' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1037, 1, CAST(N'2020-05-27T12:19:51.240' AS DateTime), CAST(N'2020-05-27T12:29:49.827' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1038, 11, CAST(N'2020-05-27T12:31:20.833' AS DateTime), CAST(N'2020-05-27T12:45:44.973' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1039, 1, CAST(N'2020-05-27T12:45:24.293' AS DateTime), CAST(N'2020-05-27T13:02:58.420' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1040, 8, CAST(N'2020-05-27T13:03:32.900' AS DateTime), NULL)
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (1041, 1, CAST(N'2020-06-02T13:05:30.550' AS DateTime), CAST(N'2020-06-02T13:07:13.917' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (2041, 1, CAST(N'2020-06-07T15:14:34.560' AS DateTime), CAST(N'2020-06-07T15:15:09.237' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (2042, 1, CAST(N'2020-06-07T15:15:18.637' AS DateTime), CAST(N'2020-06-07T15:15:32.990' AS DateTime))
INSERT [dbo].[Movimientos] ([Id], [IdUsuario], [Entrada], [Salida]) VALUES (2043, 1, CAST(N'2020-06-07T15:15:58.993' AS DateTime), CAST(N'2020-06-07T15:16:05.940' AS DateTime))
SET IDENTITY_INSERT [dbo].[Movimientos] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Nombre], [Categoria], [Precio], [Peso]) VALUES (1, N'Samsung S22F350FHU 22(pulgadas) Full HD LED', N'Monitor', 89, 2300)
INSERT [dbo].[Productos] ([Id], [Nombre], [Categoria], [Precio], [Peso]) VALUES (2, N'Gigabyte B450M DS3H', N'Placa Base', 73, 150)
INSERT [dbo].[Productos] ([Id], [Nombre], [Categoria], [Precio], [Peso]) VALUES (3, N'Samsung 860 EVO Basic SSD 1TB SATA3', N'Discos Duros', 169, 50)
INSERT [dbo].[Productos] ([Id], [Nombre], [Categoria], [Precio], [Peso]) VALUES (4, N'LG Xboom Ok55 Altavoz Bluetooth RGB 500W', N'Altavoces', 223, 17100)
INSERT [dbo].[Productos] ([Id], [Nombre], [Categoria], [Precio], [Peso]) VALUES (5, N'Asus Intel Z390 ATX', N'Placa Base', 230, 260)
INSERT [dbo].[Productos] ([Id], [Nombre], [Categoria], [Precio], [Peso]) VALUES (6, N'Samsung 860 EVO Basi', N'Targeta Grafica', 650, 510)
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [IdEmpleado], [NombreUsu], [Passwd]) VALUES (1, 1, N'ruben', N'vongola')
INSERT [dbo].[Usuarios] ([Id], [IdEmpleado], [NombreUsu], [Passwd]) VALUES (8, 11, N'jon', N'ander')
INSERT [dbo].[Usuarios] ([Id], [IdEmpleado], [NombreUsu], [Passwd]) VALUES (9, 12, N'miguel', N'miguel')
INSERT [dbo].[Usuarios] ([Id], [IdEmpleado], [NombreUsu], [Passwd]) VALUES (10, 13, N'alba', N'alba')
INSERT [dbo].[Usuarios] ([Id], [IdEmpleado], [NombreUsu], [Passwd]) VALUES (11, 14, N'jesus', N'jesus')
INSERT [dbo].[Usuarios] ([Id], [IdEmpleado], [NombreUsu], [Passwd]) VALUES (12, 15, N'mario', N'mario')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (6, 3, 1, CAST(N'2020-05-10' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (7, 2, 1, CAST(N'2020-05-10' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1005, 2, 1, CAST(N'2020-05-15' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1006, 1, 1, CAST(N'2020-05-15' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1007, 2, 1, CAST(N'2020-05-26' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1008, 3, 1, CAST(N'2020-05-26' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1009, 1, 1, CAST(N'2020-05-26' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1010, 4, 1, CAST(N'2020-05-27' AS Date), N'Realizada')
INSERT [dbo].[Ventas] ([Id], [IdCliente], [IdEmpleado], [Fecha], [Estado]) VALUES (1011, 1, 1, CAST(N'2020-05-27' AS Date), N'Realizada')
SET IDENTITY_INSERT [dbo].[Ventas] OFF
ALTER TABLE [dbo].[AlmProd]  WITH CHECK ADD  CONSTRAINT [FK_AlmProd_Almacen] FOREIGN KEY([IdAlmacen])
REFERENCES [dbo].[Almacen] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AlmProd] CHECK CONSTRAINT [FK_AlmProd_Almacen]
GO
ALTER TABLE [dbo].[AlmProd]  WITH CHECK ADD  CONSTRAINT [FK_AlmProd_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([Id])
GO
ALTER TABLE [dbo].[AlmProd] CHECK CONSTRAINT [FK_AlmProd_Productos]
GO
ALTER TABLE [dbo].[Entregas]  WITH CHECK ADD  CONSTRAINT [FK_Entregas_Empleados] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([Id])
GO
ALTER TABLE [dbo].[Entregas] CHECK CONSTRAINT [FK_Entregas_Empleados]
GO
ALTER TABLE [dbo].[Entregas]  WITH CHECK ADD  CONSTRAINT [FK_Entregas_Ventas] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Ventas] ([Id])
GO
ALTER TABLE [dbo].[Entregas] CHECK CONSTRAINT [FK_Entregas_Ventas]
GO
ALTER TABLE [dbo].[LineaVenta]  WITH CHECK ADD  CONSTRAINT [FK_LineaVenta_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([Id])
GO
ALTER TABLE [dbo].[LineaVenta] CHECK CONSTRAINT [FK_LineaVenta_Productos]
GO
ALTER TABLE [dbo].[LineaVenta]  WITH CHECK ADD  CONSTRAINT [FK_LineaVenta_Ventas] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Ventas] ([Id])
GO
ALTER TABLE [dbo].[LineaVenta] CHECK CONSTRAINT [FK_LineaVenta_Ventas]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Empleados] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Empleados]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([Id])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
USE [master]
GO
ALTER DATABASE [Fabrica] SET  READ_WRITE 
GO
