USE [master]
GO
/****** Object:  Database [cine12]    Script Date: 27/11/2023 19:01:16 ******/
CREATE DATABASE [cine12]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cine12', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\cine12.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cine12_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\cine12_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cine12] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cine12].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cine12] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cine12] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cine12] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cine12] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cine12] SET ARITHABORT OFF 
GO
ALTER DATABASE [cine12] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [cine12] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cine12] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cine12] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cine12] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cine12] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cine12] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cine12] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cine12] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cine12] SET  ENABLE_BROKER 
GO
ALTER DATABASE [cine12] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cine12] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cine12] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cine12] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cine12] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cine12] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cine12] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cine12] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cine12] SET  MULTI_USER 
GO
ALTER DATABASE [cine12] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cine12] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cine12] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cine12] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cine12] SET DELAYED_DURABILITY = DISABLED 
GO
USE [cine12]
GO
/****** Object:  User [Tomas]    Script Date: 27/11/2023 19:01:16 ******/
CREATE USER [Tomas] FOR LOGIN [Tomas] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[butacas]    Script Date: 27/11/2023 19:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[butacas](
	[id_butaca] [int] IDENTITY(1,1) NOT NULL,
	[id_estado] [int] NULL,
	[columna] [varchar](5) NULL,
	[fila] [varchar](5) NULL,
	[id_funcion] [int] NULL,
 CONSTRAINT [pk_butaca] PRIMARY KEY CLUSTERED 
(
	[id_butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[mail] [varchar](150) NULL,
	[nro_tel] [varchar](50) NULL,
	[fecha_nac] [datetime] NULL,
	[contraseña] [varchar](200) NULL,
	[id_estado] [int] NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[descuentos]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[descuentos](
	[id_descuento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[monto] [decimal](2, 2) NULL,
 CONSTRAINT [pk_descuento] PRIMARY KEY CLUSTERED 
(
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalles_factura]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_factura](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_factura] [int] NULL,
	[monto] [money] NULL,
	[id_descuento] [int] NULL,
	[id_tipo_publico] [int] NULL,
	[id_funcion] [int] NULL,
	[id_butaca] [int] NULL,
 CONSTRAINT [pk_detalle] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_cliente]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado_cliente](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [pk_estadoclientes] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estados]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estados](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
 CONSTRAINT [pk_estado] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[facturas]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[facturas](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[tipo_venta] [varchar](50) NULL,
	[id_medio_pago] [int] NULL,
	[id_cliente] [int] NULL,
	[fecha] [datetime] NULL,
	[cargo_servico] [money] NULL,
 CONSTRAINT [pk_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funciones]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funciones](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[id_sala] [int] NULL,
	[horario] [time](7) NULL,
	[fecha] [datetime] NULL,
	[precio] [money] NULL,
 CONSTRAINT [pk_funcion] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[idiomas]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[idiomas](
	[id_idioma] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
 CONSTRAINT [pk_idioma] PRIMARY KEY CLUSTERED 
(
	[id_idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[medios_pago]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[medios_pago](
	[id_medio_pago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [pk_medio_pago] PRIMARY KEY CLUSTERED 
(
	[id_medio_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[peliculas]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[peliculas](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[categoria] [varchar](100) NULL,
	[duracion] [int] NULL,
	[id_idioma] [int] NULL,
	[director] [varchar](100) NULL,
	[fec_estreno] [datetime] NULL,
	[id_estado] [int] NULL,
 CONSTRAINT [pk_pelicula] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservas](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[id_butaca] [int] NULL,
	[fecha_reserva] [datetime] NULL,
	[fecha_vencimiento] [datetime] NULL,
	[codigo_reserva] [int] NULL,
 CONSTRAINT [pk_reserva] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[salas]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salas](
	[id_sala] [int] IDENTITY(1,1) NOT NULL,
	[numero_sala] [int] NULL,
	[cantidad_butacas] [int] NULL,
	[id_tipo_sala] [int] NULL,
 CONSTRAINT [pk_sala] PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipos_publico]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipos_publico](
	[id_publico] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
 CONSTRAINT [pk_tipo_publico] PRIMARY KEY CLUSTERED 
(
	[id_publico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipos_sala]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipos_sala](
	[id_tipo_sala] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [pk_tipo_sala] PRIMARY KEY CLUSTERED 
(
	[id_tipo_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[butacas] ON 

INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1, 1, N'1', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (2, 2, N'1', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (3, 2, N'1', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (4, 1, N'1', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (5, 1, N'1', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (6, 1, N'1', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (7, 2, N'1', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (8, 1, N'1', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (9, 2, N'1', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (10, 1, N'1', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (11, 1, N'1', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (12, 2, N'1', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (13, 2, N'1', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (14, 1, N'1', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (15, 1, N'1', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (16, 2, N'1', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (17, 1, N'1', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (18, 1, N'1', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (19, 1, N'1', N'A', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (20, 1, N'1', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (21, 2, N'1', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (22, 1, N'1', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (23, 1, N'1', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (24, 2, N'1', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (25, 1, N'1', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (26, 2, N'1', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (27, 1, N'1', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (28, 1, N'1', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (29, 2, N'1', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (30, 1, N'1', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (31, 1, N'1', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (32, 2, N'1', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (33, 1, N'1', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (34, 1, N'1', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (35, 1, N'1', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (36, 1, N'1', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (37, 1, N'1', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (38, 1, N'1', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (39, 1, N'1', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (40, 1, N'1', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (41, 1, N'1', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (42, 1, N'1', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (43, 1, N'1', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (44, 2, N'1', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (45, 1, N'1', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (46, 1, N'1', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (47, 1, N'1', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (48, 1, N'1', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (49, 1, N'1', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (50, 1, N'1', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (51, 2, N'1', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (52, 1, N'1', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (53, 1, N'1', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (54, 1, N'1', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (55, 1, N'1', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (56, 2, N'1', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (57, 1, N'1', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (58, 1, N'1', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (59, 1, N'1', N'B', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (60, 1, N'1', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (61, 1, N'1', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (62, 1, N'1', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (63, 2, N'1', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (64, 1, N'1', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (65, 1, N'1', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (66, 2, N'1', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (67, 2, N'1', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (68, 2, N'1', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (69, 1, N'1', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (70, 2, N'1', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (71, 2, N'1', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (72, 1, N'1', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (73, 1, N'1', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (74, 1, N'1', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (75, 1, N'1', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (76, 1, N'1', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (77, 1, N'1', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (78, 1, N'1', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (79, 1, N'1', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (80, 1, N'1', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (81, 1, N'1', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (82, 1, N'1', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (83, 1, N'1', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (84, 1, N'1', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (85, 1, N'1', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (86, 2, N'1', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (87, 1, N'1', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (88, 1, N'1', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (89, 1, N'1', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (90, 1, N'1', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (91, 2, N'1', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (92, 1, N'1', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (93, 1, N'1', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (94, 2, N'1', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (95, 2, N'1', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (96, 1, N'1', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (97, 2, N'1', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (98, 1, N'1', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (99, 1, N'1', N'C', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (100, 1, N'1', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (101, 1, N'1', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (102, 2, N'1', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (103, 1, N'1', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (104, 1, N'1', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (105, 1, N'1', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (106, 1, N'1', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (107, 1, N'1', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (108, 1, N'1', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (109, 1, N'1', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (110, 2, N'1', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (111, 1, N'1', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (112, 1, N'1', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (113, 1, N'1', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (114, 1, N'1', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (115, 1, N'1', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (116, 1, N'1', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (117, 1, N'1', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (118, 1, N'1', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (119, 1, N'1', N'C', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (120, 2, N'1', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (121, 1, N'1', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (122, 1, N'1', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (123, 1, N'1', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (124, 1, N'1', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (125, 1, N'1', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (126, 1, N'1', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (127, 2, N'1', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (128, 2, N'1', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (129, 1, N'1', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (130, 1, N'1', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (131, 1, N'1', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (132, 1, N'1', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (133, 2, N'1', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (134, 1, N'1', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (135, 1, N'1', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (136, 1, N'1', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (137, 1, N'1', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (138, 1, N'1', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (139, 1, N'1', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (140, 1, N'1', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (141, 1, N'1', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (142, 2, N'1', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (143, 1, N'1', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (144, 2, N'1', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (145, 1, N'1', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (146, 1, N'1', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (147, 1, N'1', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (148, 1, N'1', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (149, 1, N'1', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (150, 1, N'1', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (151, 1, N'1', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (152, 1, N'1', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (153, 1, N'1', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (154, 1, N'1', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (155, 1, N'1', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (156, 1, N'1', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (157, 1, N'1', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (158, 1, N'1', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (159, 1, N'1', N'D', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (160, 1, N'1', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (161, 1, N'1', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (162, 1, N'1', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (163, 1, N'1', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (164, 1, N'1', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (165, 1, N'1', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (166, 1, N'1', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (167, 2, N'1', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (168, 1, N'1', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (169, 1, N'1', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (170, 2, N'1', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (171, 1, N'1', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (172, 2, N'1', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (173, 1, N'1', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (174, 2, N'1', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (175, 1, N'1', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (176, 1, N'1', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (177, 1, N'1', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (178, 2, N'1', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (179, 1, N'1', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (180, 1, N'1', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (181, 1, N'1', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (182, 1, N'1', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (183, 1, N'1', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (184, 1, N'1', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (185, 1, N'1', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (186, 1, N'1', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (187, 2, N'1', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (188, 1, N'1', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (189, 2, N'1', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (190, 1, N'1', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (191, 1, N'1', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (192, 2, N'1', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (193, 1, N'1', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (194, 1, N'1', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (195, 1, N'1', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (196, 2, N'1', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (197, 1, N'1', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (198, 1, N'1', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (199, 1, N'1', N'E', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (200, 1, N'1', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (201, 1, N'1', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (202, 1, N'1', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (203, 2, N'1', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (204, 2, N'1', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (205, 1, N'1', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (206, 1, N'1', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (207, 1, N'1', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (208, 1, N'1', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (209, 1, N'1', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (210, 1, N'1', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (211, 2, N'1', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (212, 1, N'1', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (213, 1, N'1', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (214, 2, N'1', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (215, 1, N'1', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (216, 1, N'1', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (217, 1, N'1', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (218, 1, N'1', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (219, 1, N'1', N'F', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (220, 2, N'1', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (221, 1, N'1', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (222, 2, N'1', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (223, 1, N'1', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (224, 1, N'1', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (225, 1, N'1', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (226, 1, N'1', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (227, 1, N'1', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (228, 1, N'1', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (229, 1, N'1', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (230, 1, N'1', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (231, 1, N'1', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (232, 2, N'1', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (233, 1, N'1', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (234, 1, N'1', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (235, 1, N'1', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (236, 1, N'1', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (237, 1, N'1', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (238, 1, N'1', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (239, 2, N'1', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (240, 1, N'1', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (241, 2, N'2', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (242, 1, N'2', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (243, 1, N'2', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (244, 2, N'2', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (245, 1, N'2', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (246, 1, N'2', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (247, 1, N'2', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (248, 1, N'2', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (249, 1, N'2', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (250, 1, N'2', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (251, 1, N'2', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (252, 1, N'2', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (253, 1, N'2', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (254, 1, N'2', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (255, 1, N'2', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (256, 1, N'2', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (257, 1, N'2', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (258, 1, N'2', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (259, 1, N'2', N'A', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (260, 2, N'2', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (261, 1, N'2', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (262, 1, N'2', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (263, 1, N'2', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (264, 2, N'2', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (265, 1, N'2', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (266, 2, N'2', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (267, 1, N'2', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (268, 2, N'2', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (269, 1, N'2', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (270, 1, N'2', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (271, 1, N'2', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (272, 1, N'2', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (273, 1, N'2', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (274, 2, N'2', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (275, 1, N'2', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (276, 1, N'2', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (277, 1, N'2', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (278, 1, N'2', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (279, 1, N'2', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (280, 1, N'2', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (281, 1, N'2', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (282, 1, N'2', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (283, 1, N'2', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (284, 1, N'2', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (285, 1, N'2', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (286, 1, N'2', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (287, 1, N'2', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (288, 2, N'2', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (289, 1, N'2', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (290, 1, N'2', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (291, 1, N'2', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (292, 1, N'2', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (293, 1, N'2', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (294, 2, N'2', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (295, 1, N'2', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (296, 1, N'2', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (297, 1, N'2', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (298, 1, N'2', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (299, 1, N'2', N'B', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (300, 1, N'2', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (301, 1, N'2', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (302, 1, N'2', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (303, 1, N'2', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (304, 1, N'2', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (305, 1, N'2', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (306, 1, N'2', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (307, 1, N'2', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (308, 1, N'2', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (309, 1, N'2', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (310, 2, N'2', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (311, 1, N'2', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (312, 1, N'2', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (313, 1, N'2', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (314, 2, N'2', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (315, 1, N'2', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (316, 2, N'2', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (317, 2, N'2', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (318, 1, N'2', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (319, 1, N'2', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (320, 1, N'2', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (321, 1, N'2', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (322, 1, N'2', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (323, 1, N'2', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (324, 2, N'2', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (325, 1, N'2', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (326, 1, N'2', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (327, 1, N'2', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (328, 1, N'2', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (329, 1, N'2', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (330, 1, N'2', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (331, 1, N'2', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (332, 1, N'2', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (333, 1, N'2', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (334, 1, N'2', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (335, 1, N'2', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (336, 1, N'2', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (337, 1, N'2', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (338, 2, N'2', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (339, 1, N'2', N'C', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (340, 2, N'2', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (341, 1, N'2', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (342, 1, N'2', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (343, 1, N'2', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (344, 1, N'2', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (345, 1, N'2', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (346, 2, N'2', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (347, 1, N'2', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (348, 1, N'2', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (349, 2, N'2', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (350, 2, N'2', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (351, 2, N'2', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (352, 1, N'2', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (353, 2, N'2', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (354, 1, N'2', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (355, 1, N'2', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (356, 1, N'2', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (357, 1, N'2', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (358, 1, N'2', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (359, 1, N'2', N'C', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (360, 1, N'2', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (361, 1, N'2', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (362, 1, N'2', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (363, 2, N'2', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (364, 2, N'2', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (365, 1, N'2', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (366, 2, N'2', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (367, 1, N'2', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (368, 1, N'2', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (369, 1, N'2', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (370, 1, N'2', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (371, 1, N'2', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (372, 2, N'2', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (373, 1, N'2', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (374, 2, N'2', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (375, 2, N'2', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (376, 1, N'2', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (377, 1, N'2', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (378, 1, N'2', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (379, 1, N'2', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (380, 1, N'2', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (381, 1, N'2', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (382, 1, N'2', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (383, 2, N'2', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (384, 1, N'2', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (385, 1, N'2', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (386, 1, N'2', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (387, 1, N'2', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (388, 2, N'2', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (389, 1, N'2', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (390, 2, N'2', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (391, 1, N'2', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (392, 1, N'2', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (393, 2, N'2', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (394, 1, N'2', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (395, 1, N'2', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (396, 1, N'2', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (397, 2, N'2', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (398, 1, N'2', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (399, 1, N'2', N'D', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (400, 1, N'2', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (401, 1, N'2', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (402, 2, N'2', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (403, 1, N'2', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (404, 1, N'2', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (405, 1, N'2', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (406, 1, N'2', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (407, 1, N'2', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (408, 1, N'2', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (409, 1, N'2', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (410, 2, N'2', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (411, 1, N'2', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (412, 2, N'2', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (413, 1, N'2', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (414, 1, N'2', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (415, 2, N'2', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (416, 1, N'2', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (417, 1, N'2', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (418, 1, N'2', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (419, 1, N'2', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (420, 1, N'2', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (421, 1, N'2', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (422, 2, N'2', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (423, 1, N'2', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (424, 1, N'2', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (425, 1, N'2', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (426, 1, N'2', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (427, 1, N'2', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (428, 1, N'2', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (429, 2, N'2', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (430, 1, N'2', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (431, 2, N'2', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (432, 2, N'2', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (433, 1, N'2', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (434, 1, N'2', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (435, 1, N'2', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (436, 1, N'2', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (437, 1, N'2', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (438, 1, N'2', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (439, 1, N'2', N'E', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (440, 1, N'2', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (441, 2, N'2', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (442, 1, N'2', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (443, 1, N'2', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (444, 1, N'2', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (445, 1, N'2', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (446, 1, N'2', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (447, 1, N'2', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (448, 1, N'2', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (449, 1, N'2', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (450, 2, N'2', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (451, 1, N'2', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (452, 1, N'2', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (453, 1, N'2', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (454, 2, N'2', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (455, 1, N'2', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (456, 1, N'2', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (457, 1, N'2', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (458, 1, N'2', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (459, 1, N'2', N'F', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (460, 1, N'2', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (461, 1, N'2', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (462, 1, N'2', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (463, 1, N'2', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (464, 2, N'2', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (465, 1, N'2', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (466, 1, N'2', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (467, 1, N'2', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (468, 1, N'2', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (469, 2, N'2', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (470, 1, N'2', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (471, 1, N'2', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (472, 1, N'2', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (473, 1, N'2', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (474, 1, N'2', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (475, 2, N'2', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (476, 1, N'2', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (477, 1, N'2', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (478, 1, N'2', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (479, 1, N'2', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (480, 1, N'2', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (481, 2, N'3', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (482, 1, N'3', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (483, 1, N'3', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (484, 1, N'3', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (485, 1, N'3', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (486, 1, N'3', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (487, 1, N'3', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (488, 2, N'3', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (489, 1, N'3', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (490, 1, N'3', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (491, 1, N'3', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (492, 2, N'3', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (493, 2, N'3', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (494, 1, N'3', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (495, 2, N'3', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (496, 2, N'3', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (497, 1, N'3', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (498, 1, N'3', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (499, 1, N'3', N'A', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (500, 1, N'3', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (501, 2, N'3', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (502, 1, N'3', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (503, 1, N'3', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (504, 1, N'3', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (505, 2, N'3', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (506, 2, N'3', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (507, 1, N'3', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (508, 1, N'3', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (509, 2, N'3', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (510, 1, N'3', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (511, 1, N'3', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (512, 2, N'3', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (513, 2, N'3', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (514, 1, N'3', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (515, 1, N'3', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (516, 1, N'3', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (517, 1, N'3', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (518, 1, N'3', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (519, 1, N'3', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (520, 1, N'3', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (521, 1, N'3', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (522, 1, N'3', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (523, 1, N'3', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (524, 1, N'3', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (525, 2, N'3', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (526, 1, N'3', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (527, 2, N'3', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (528, 1, N'3', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (529, 1, N'3', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (530, 2, N'3', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (531, 1, N'3', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (532, 1, N'3', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (533, 1, N'3', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (534, 1, N'3', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (535, 1, N'3', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (536, 2, N'3', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (537, 2, N'3', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (538, 1, N'3', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (539, 1, N'3', N'B', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (540, 1, N'3', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (541, 2, N'3', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (542, 1, N'3', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (543, 1, N'3', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (544, 2, N'3', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (545, 1, N'3', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (546, 1, N'3', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (547, 1, N'3', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (548, 1, N'3', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (549, 1, N'3', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (550, 1, N'3', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (551, 1, N'3', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (552, 1, N'3', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (553, 1, N'3', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (554, 1, N'3', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (555, 1, N'3', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (556, 1, N'3', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (557, 1, N'3', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (558, 1, N'3', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (559, 1, N'3', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (560, 1, N'3', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (561, 2, N'3', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (562, 2, N'3', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (563, 1, N'3', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (564, 1, N'3', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (565, 1, N'3', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (566, 1, N'3', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (567, 2, N'3', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (568, 1, N'3', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (569, 1, N'3', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (570, 1, N'3', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (571, 1, N'3', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (572, 1, N'3', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (573, 1, N'3', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (574, 1, N'3', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (575, 1, N'3', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (576, 2, N'3', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (577, 1, N'3', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (578, 1, N'3', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (579, 1, N'3', N'C', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (580, 2, N'3', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (581, 1, N'3', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (582, 1, N'3', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (583, 1, N'3', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (584, 2, N'3', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (585, 2, N'3', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (586, 1, N'3', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (587, 1, N'3', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (588, 1, N'3', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (589, 1, N'3', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (590, 1, N'3', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (591, 2, N'3', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (592, 1, N'3', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (593, 2, N'3', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (594, 1, N'3', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (595, 1, N'3', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (596, 2, N'3', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (597, 1, N'3', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (598, 2, N'3', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (599, 2, N'3', N'C', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (600, 1, N'3', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (601, 2, N'3', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (602, 1, N'3', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (603, 1, N'3', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (604, 2, N'3', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (605, 2, N'3', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (606, 1, N'3', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (607, 1, N'3', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (608, 1, N'3', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (609, 2, N'3', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (610, 1, N'3', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (611, 1, N'3', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (612, 2, N'3', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (613, 1, N'3', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (614, 1, N'3', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (615, 2, N'3', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (616, 1, N'3', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (617, 1, N'3', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (618, 2, N'3', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (619, 1, N'3', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (620, 1, N'3', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (621, 1, N'3', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (622, 1, N'3', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (623, 1, N'3', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (624, 2, N'3', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (625, 1, N'3', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (626, 1, N'3', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (627, 1, N'3', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (628, 1, N'3', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (629, 2, N'3', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (630, 1, N'3', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (631, 1, N'3', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (632, 1, N'3', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (633, 1, N'3', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (634, 2, N'3', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (635, 1, N'3', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (636, 1, N'3', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (637, 1, N'3', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (638, 1, N'3', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (639, 2, N'3', N'D', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (640, 1, N'3', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (641, 2, N'3', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (642, 1, N'3', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (643, 1, N'3', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (644, 1, N'3', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (645, 1, N'3', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (646, 1, N'3', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (647, 1, N'3', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (648, 1, N'3', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (649, 2, N'3', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (650, 2, N'3', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (651, 1, N'3', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (652, 1, N'3', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (653, 1, N'3', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (654, 1, N'3', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (655, 2, N'3', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (656, 1, N'3', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (657, 1, N'3', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (658, 1, N'3', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (659, 1, N'3', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (660, 1, N'3', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (661, 1, N'3', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (662, 2, N'3', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (663, 1, N'3', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (664, 1, N'3', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (665, 1, N'3', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (666, 1, N'3', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (667, 1, N'3', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (668, 1, N'3', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (669, 2, N'3', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (670, 1, N'3', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (671, 2, N'3', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (672, 1, N'3', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (673, 2, N'3', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (674, 1, N'3', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (675, 2, N'3', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (676, 1, N'3', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (677, 1, N'3', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (678, 1, N'3', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (679, 1, N'3', N'E', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (680, 1, N'3', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (681, 1, N'3', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (682, 2, N'3', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (683, 1, N'3', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (684, 1, N'3', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (685, 1, N'3', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (686, 2, N'3', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (687, 1, N'3', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (688, 1, N'3', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (689, 2, N'3', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (690, 1, N'3', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (691, 2, N'3', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (692, 1, N'3', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (693, 1, N'3', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (694, 1, N'3', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (695, 2, N'3', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (696, 1, N'3', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (697, 1, N'3', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (698, 2, N'3', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (699, 2, N'3', N'F', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (700, 1, N'3', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (701, 1, N'3', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (702, 2, N'3', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (703, 1, N'3', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (704, 1, N'3', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (705, 2, N'3', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (706, 1, N'3', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (707, 1, N'3', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (708, 1, N'3', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (709, 2, N'3', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (710, 2, N'3', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (711, 1, N'3', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (712, 1, N'3', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (713, 1, N'3', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (714, 1, N'3', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (715, 2, N'3', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (716, 1, N'3', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (717, 2, N'3', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (718, 2, N'3', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (719, 1, N'3', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (720, 1, N'3', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (721, 1, N'4', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (722, 1, N'4', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (723, 1, N'4', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (724, 1, N'4', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (725, 1, N'4', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (726, 1, N'4', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (727, 2, N'4', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (728, 1, N'4', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (729, 1, N'4', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (730, 1, N'4', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (731, 1, N'4', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (732, 1, N'4', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (733, 2, N'4', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (734, 1, N'4', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (735, 1, N'4', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (736, 1, N'4', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (737, 1, N'4', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (738, 1, N'4', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (739, 1, N'4', N'A', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (740, 1, N'4', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (741, 1, N'4', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (742, 1, N'4', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (743, 1, N'4', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (744, 1, N'4', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (745, 2, N'4', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (746, 1, N'4', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (747, 1, N'4', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (748, 1, N'4', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (749, 2, N'4', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (750, 1, N'4', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (751, 1, N'4', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (752, 1, N'4', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (753, 2, N'4', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (754, 1, N'4', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (755, 2, N'4', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (756, 1, N'4', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (757, 1, N'4', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (758, 2, N'4', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (759, 1, N'4', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (760, 1, N'4', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (761, 1, N'4', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (762, 1, N'4', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (763, 1, N'4', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (764, 1, N'4', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (765, 1, N'4', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (766, 1, N'4', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (767, 1, N'4', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (768, 1, N'4', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (769, 1, N'4', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (770, 2, N'4', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (771, 1, N'4', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (772, 1, N'4', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (773, 2, N'4', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (774, 1, N'4', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (775, 2, N'4', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (776, 1, N'4', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (777, 1, N'4', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (778, 1, N'4', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (779, 1, N'4', N'B', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (780, 1, N'4', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (781, 1, N'4', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (782, 1, N'4', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (783, 2, N'4', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (784, 1, N'4', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (785, 2, N'4', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (786, 2, N'4', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (787, 1, N'4', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (788, 1, N'4', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (789, 1, N'4', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (790, 2, N'4', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (791, 1, N'4', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (792, 2, N'4', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (793, 1, N'4', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (794, 1, N'4', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (795, 1, N'4', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (796, 1, N'4', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (797, 1, N'4', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (798, 1, N'4', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (799, 1, N'4', N'B', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (800, 2, N'4', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (801, 1, N'4', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (802, 2, N'4', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (803, 1, N'4', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (804, 1, N'4', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (805, 1, N'4', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (806, 1, N'4', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (807, 1, N'4', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (808, 2, N'4', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (809, 1, N'4', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (810, 1, N'4', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (811, 1, N'4', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (812, 2, N'4', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (813, 1, N'4', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (814, 1, N'4', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (815, 2, N'4', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (816, 1, N'4', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (817, 1, N'4', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (818, 1, N'4', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (819, 1, N'4', N'C', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (820, 1, N'4', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (821, 2, N'4', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (822, 1, N'4', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (823, 1, N'4', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (824, 1, N'4', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (825, 1, N'4', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (826, 1, N'4', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (827, 1, N'4', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (828, 1, N'4', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (829, 2, N'4', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (830, 1, N'4', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (831, 1, N'4', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (832, 1, N'4', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (833, 1, N'4', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (834, 1, N'4', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (835, 1, N'4', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (836, 1, N'4', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (837, 1, N'4', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (838, 1, N'4', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (839, 1, N'4', N'C', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (840, 1, N'4', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (841, 2, N'4', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (842, 1, N'4', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (843, 1, N'4', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (844, 1, N'4', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (845, 1, N'4', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (846, 2, N'4', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (847, 1, N'4', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (848, 1, N'4', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (849, 2, N'4', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (850, 1, N'4', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (851, 2, N'4', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (852, 1, N'4', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (853, 1, N'4', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (854, 2, N'4', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (855, 2, N'4', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (856, 1, N'4', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (857, 1, N'4', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (858, 1, N'4', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (859, 1, N'4', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (860, 1, N'4', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (861, 1, N'4', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (862, 1, N'4', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (863, 1, N'4', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (864, 1, N'4', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (865, 1, N'4', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (866, 1, N'4', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (867, 1, N'4', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (868, 1, N'4', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (869, 2, N'4', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (870, 1, N'4', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (871, 1, N'4', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (872, 1, N'4', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (873, 1, N'4', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (874, 1, N'4', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (875, 2, N'4', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (876, 2, N'4', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (877, 1, N'4', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (878, 1, N'4', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (879, 1, N'4', N'D', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (880, 1, N'4', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (881, 1, N'4', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (882, 2, N'4', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (883, 1, N'4', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (884, 1, N'4', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (885, 2, N'4', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (886, 1, N'4', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (887, 2, N'4', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (888, 1, N'4', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (889, 2, N'4', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (890, 2, N'4', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (891, 1, N'4', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (892, 1, N'4', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (893, 2, N'4', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (894, 1, N'4', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (895, 2, N'4', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (896, 1, N'4', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (897, 1, N'4', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (898, 1, N'4', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (899, 1, N'4', N'E', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (900, 1, N'4', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (901, 1, N'4', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (902, 2, N'4', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (903, 2, N'4', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (904, 1, N'4', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (905, 1, N'4', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (906, 1, N'4', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (907, 2, N'4', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (908, 1, N'4', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (909, 2, N'4', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (910, 1, N'4', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (911, 1, N'4', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (912, 1, N'4', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (913, 1, N'4', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (914, 1, N'4', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (915, 1, N'4', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (916, 1, N'4', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (917, 2, N'4', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (918, 1, N'4', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (919, 1, N'4', N'E', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (920, 1, N'4', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (921, 1, N'4', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (922, 1, N'4', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (923, 1, N'4', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (924, 1, N'4', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (925, 1, N'4', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (926, 1, N'4', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (927, 2, N'4', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (928, 2, N'4', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (929, 2, N'4', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (930, 2, N'4', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (931, 1, N'4', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (932, 2, N'4', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (933, 2, N'4', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (934, 1, N'4', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (935, 2, N'4', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (936, 1, N'4', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (937, 1, N'4', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (938, 1, N'4', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (939, 1, N'4', N'F', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (940, 1, N'4', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (941, 1, N'4', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (942, 1, N'4', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (943, 2, N'4', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (944, 1, N'4', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (945, 1, N'4', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (946, 1, N'4', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (947, 1, N'4', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (948, 2, N'4', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (949, 2, N'4', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (950, 1, N'4', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (951, 1, N'4', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (952, 1, N'4', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (953, 1, N'4', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (954, 1, N'4', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (955, 1, N'4', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (956, 1, N'4', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (957, 1, N'4', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (958, 1, N'4', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (959, 1, N'4', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (960, 2, N'4', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (961, 2, N'5', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (962, 1, N'5', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (963, 1, N'5', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (964, 1, N'5', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (965, 1, N'5', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (966, 1, N'5', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (967, 1, N'5', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (968, 1, N'5', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (969, 1, N'5', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (970, 1, N'5', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (971, 2, N'5', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (972, 1, N'5', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (973, 1, N'5', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (974, 1, N'5', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (975, 1, N'5', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (976, 2, N'5', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (977, 1, N'5', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (978, 2, N'5', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (979, 1, N'5', N'A', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (980, 1, N'5', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (981, 1, N'5', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (982, 2, N'5', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (983, 1, N'5', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (984, 2, N'5', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (985, 1, N'5', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (986, 1, N'5', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (987, 2, N'5', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (988, 1, N'5', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (989, 1, N'5', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (990, 1, N'5', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (991, 1, N'5', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (992, 1, N'5', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (993, 1, N'5', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (994, 1, N'5', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (995, 1, N'5', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (996, 1, N'5', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (997, 1, N'5', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (998, 1, N'5', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (999, 1, N'5', N'A', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1000, 1, N'5', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1001, 1, N'5', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1002, 1, N'5', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1003, 1, N'5', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1004, 1, N'5', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1005, 2, N'5', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1006, 2, N'5', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1007, 1, N'5', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1008, 1, N'5', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1009, 2, N'5', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1010, 1, N'5', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1011, 1, N'5', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1012, 1, N'5', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1013, 1, N'5', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1014, 1, N'5', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1015, 1, N'5', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1016, 1, N'5', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1017, 1, N'5', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1018, 1, N'5', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1019, 1, N'5', N'B', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1020, 1, N'5', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1021, 1, N'5', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1022, 2, N'5', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1023, 1, N'5', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1024, 2, N'5', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1025, 1, N'5', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1026, 1, N'5', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1027, 1, N'5', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1028, 1, N'5', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1029, 1, N'5', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1030, 1, N'5', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1031, 1, N'5', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1032, 1, N'5', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1033, 1, N'5', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1034, 2, N'5', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1035, 1, N'5', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1036, 1, N'5', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1037, 1, N'5', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1038, 1, N'5', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1039, 2, N'5', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1040, 1, N'5', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1041, 2, N'5', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1042, 1, N'5', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1043, 1, N'5', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1044, 1, N'5', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1045, 1, N'5', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1046, 1, N'5', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1047, 1, N'5', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1048, 1, N'5', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1049, 2, N'5', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1050, 1, N'5', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1051, 1, N'5', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1052, 1, N'5', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1053, 1, N'5', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1054, 1, N'5', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1055, 1, N'5', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1056, 1, N'5', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1057, 1, N'5', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1058, 1, N'5', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1059, 2, N'5', N'C', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1060, 1, N'5', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1061, 1, N'5', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1062, 1, N'5', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1063, 2, N'5', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1064, 1, N'5', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1065, 1, N'5', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1066, 2, N'5', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1067, 1, N'5', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1068, 1, N'5', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1069, 2, N'5', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1070, 1, N'5', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1071, 1, N'5', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1072, 1, N'5', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1073, 1, N'5', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1074, 2, N'5', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1075, 1, N'5', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1076, 1, N'5', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1077, 2, N'5', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1078, 1, N'5', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1079, 1, N'5', N'C', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1080, 1, N'5', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1081, 2, N'5', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1082, 1, N'5', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1083, 1, N'5', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1084, 1, N'5', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1085, 2, N'5', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1086, 1, N'5', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1087, 1, N'5', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1088, 1, N'5', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1089, 2, N'5', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1090, 1, N'5', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1091, 1, N'5', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1092, 1, N'5', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1093, 1, N'5', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1094, 2, N'5', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1095, 2, N'5', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1096, 2, N'5', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1097, 1, N'5', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1098, 1, N'5', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1099, 1, N'5', N'D', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1100, 2, N'5', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1101, 2, N'5', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1102, 1, N'5', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1103, 1, N'5', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1104, 2, N'5', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1105, 1, N'5', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1106, 2, N'5', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1107, 1, N'5', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1108, 1, N'5', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1109, 1, N'5', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1110, 1, N'5', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1111, 1, N'5', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1112, 1, N'5', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1113, 1, N'5', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1114, 1, N'5', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1115, 1, N'5', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1116, 1, N'5', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1117, 2, N'5', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1118, 1, N'5', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1119, 1, N'5', N'D', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1120, 1, N'5', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1121, 1, N'5', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1122, 2, N'5', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1123, 2, N'5', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1124, 1, N'5', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1125, 1, N'5', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1126, 1, N'5', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1127, 1, N'5', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1128, 1, N'5', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1129, 1, N'5', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1130, 2, N'5', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1131, 2, N'5', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1132, 1, N'5', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1133, 1, N'5', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1134, 1, N'5', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1135, 2, N'5', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1136, 2, N'5', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1137, 1, N'5', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1138, 1, N'5', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1139, 1, N'5', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1140, 2, N'5', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1141, 1, N'5', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1142, 1, N'5', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1143, 2, N'5', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1144, 1, N'5', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1145, 1, N'5', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1146, 1, N'5', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1147, 2, N'5', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1148, 1, N'5', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1149, 2, N'5', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1150, 1, N'5', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1151, 2, N'5', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1152, 1, N'5', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1153, 1, N'5', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1154, 1, N'5', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1155, 1, N'5', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1156, 1, N'5', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1157, 1, N'5', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1158, 1, N'5', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1159, 1, N'5', N'E', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1160, 2, N'5', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1161, 2, N'5', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1162, 2, N'5', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1163, 2, N'5', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1164, 1, N'5', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1165, 1, N'5', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1166, 1, N'5', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1167, 1, N'5', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1168, 2, N'5', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1169, 2, N'5', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1170, 2, N'5', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1171, 1, N'5', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1172, 1, N'5', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1173, 1, N'5', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1174, 1, N'5', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1175, 2, N'5', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1176, 2, N'5', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1177, 1, N'5', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1178, 1, N'5', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1179, 2, N'5', N'F', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1180, 1, N'5', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1181, 2, N'5', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1182, 1, N'5', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1183, 2, N'5', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1184, 1, N'5', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1185, 1, N'5', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1186, 1, N'5', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1187, 2, N'5', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1188, 2, N'5', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1189, 2, N'5', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1190, 1, N'5', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1191, 1, N'5', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1192, 2, N'5', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1193, 1, N'5', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1194, 1, N'5', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1195, 1, N'5', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1196, 1, N'5', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1197, 2, N'5', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1198, 1, N'5', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1199, 1, N'5', N'F', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1200, 1, N'5', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1201, 1, N'6', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1202, 1, N'6', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1203, 1, N'6', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1204, 1, N'6', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1205, 1, N'6', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1206, 2, N'6', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1207, 2, N'6', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1208, 1, N'6', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1209, 1, N'6', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1210, 1, N'6', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1211, 1, N'6', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1212, 1, N'6', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1213, 1, N'6', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1214, 1, N'6', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1215, 2, N'6', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1216, 1, N'6', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1217, 1, N'6', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1218, 2, N'6', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1219, 1, N'6', N'A', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1220, 1, N'6', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1221, 2, N'6', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1222, 1, N'6', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1223, 1, N'6', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1224, 1, N'6', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1225, 1, N'6', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1226, 1, N'6', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1227, 1, N'6', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1228, 1, N'6', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1229, 1, N'6', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1230, 2, N'6', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1231, 2, N'6', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1232, 1, N'6', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1233, 1, N'6', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1234, 1, N'6', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1235, 2, N'6', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1236, 1, N'6', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1237, 1, N'6', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1238, 1, N'6', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1239, 1, N'6', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1240, 1, N'6', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1241, 1, N'6', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1242, 1, N'6', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1243, 1, N'6', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1244, 1, N'6', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1245, 1, N'6', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1246, 1, N'6', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1247, 1, N'6', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1248, 1, N'6', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1249, 2, N'6', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1250, 1, N'6', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1251, 1, N'6', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1252, 1, N'6', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1253, 1, N'6', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1254, 1, N'6', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1255, 1, N'6', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1256, 2, N'6', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1257, 1, N'6', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1258, 1, N'6', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1259, 1, N'6', N'B', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1260, 1, N'6', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1261, 1, N'6', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1262, 1, N'6', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1263, 1, N'6', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1264, 1, N'6', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1265, 1, N'6', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1266, 1, N'6', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1267, 1, N'6', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1268, 2, N'6', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1269, 2, N'6', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1270, 1, N'6', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1271, 1, N'6', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1272, 1, N'6', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1273, 1, N'6', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1274, 1, N'6', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1275, 1, N'6', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1276, 1, N'6', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1277, 2, N'6', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1278, 1, N'6', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1279, 2, N'6', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1280, 2, N'6', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1281, 1, N'6', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1282, 1, N'6', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1283, 1, N'6', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1284, 2, N'6', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1285, 1, N'6', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1286, 2, N'6', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1287, 1, N'6', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1288, 2, N'6', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1289, 2, N'6', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1290, 1, N'6', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1291, 1, N'6', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1292, 1, N'6', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1293, 1, N'6', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1294, 2, N'6', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1295, 2, N'6', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1296, 1, N'6', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1297, 1, N'6', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1298, 1, N'6', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1299, 1, N'6', N'C', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1300, 1, N'6', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1301, 2, N'6', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1302, 1, N'6', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1303, 1, N'6', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1304, 1, N'6', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1305, 1, N'6', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1306, 1, N'6', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1307, 1, N'6', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1308, 1, N'6', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1309, 2, N'6', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1310, 1, N'6', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1311, 1, N'6', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1312, 1, N'6', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1313, 1, N'6', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1314, 1, N'6', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1315, 1, N'6', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1316, 2, N'6', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1317, 1, N'6', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1318, 2, N'6', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1319, 1, N'6', N'C', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1320, 1, N'6', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1321, 1, N'6', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1322, 1, N'6', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1323, 1, N'6', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1324, 1, N'6', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1325, 1, N'6', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1326, 2, N'6', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1327, 2, N'6', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1328, 1, N'6', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1329, 2, N'6', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1330, 1, N'6', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1331, 2, N'6', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1332, 1, N'6', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1333, 1, N'6', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1334, 2, N'6', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1335, 2, N'6', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1336, 1, N'6', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1337, 1, N'6', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1338, 1, N'6', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1339, 1, N'6', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1340, 1, N'6', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1341, 1, N'6', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1342, 1, N'6', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1343, 1, N'6', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1344, 1, N'6', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1345, 1, N'6', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1346, 1, N'6', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1347, 1, N'6', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1348, 1, N'6', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1349, 2, N'6', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1350, 1, N'6', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1351, 1, N'6', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1352, 1, N'6', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1353, 1, N'6', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1354, 1, N'6', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1355, 2, N'6', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1356, 1, N'6', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1357, 2, N'6', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1358, 2, N'6', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1359, 1, N'6', N'D', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1360, 1, N'6', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1361, 1, N'6', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1362, 1, N'6', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1363, 1, N'6', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1364, 1, N'6', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1365, 1, N'6', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1366, 1, N'6', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1367, 1, N'6', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1368, 1, N'6', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1369, 2, N'6', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1370, 2, N'6', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1371, 1, N'6', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1372, 1, N'6', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1373, 1, N'6', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1374, 1, N'6', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1375, 2, N'6', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1376, 2, N'6', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1377, 1, N'6', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1378, 2, N'6', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1379, 1, N'6', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1380, 1, N'6', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1381, 1, N'6', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1382, 1, N'6', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1383, 1, N'6', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1384, 1, N'6', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1385, 1, N'6', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1386, 1, N'6', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1387, 2, N'6', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1388, 2, N'6', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1389, 2, N'6', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1390, 1, N'6', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1391, 1, N'6', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1392, 1, N'6', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1393, 1, N'6', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1394, 1, N'6', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1395, 1, N'6', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1396, 2, N'6', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1397, 1, N'6', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1398, 1, N'6', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1399, 2, N'6', N'E', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1400, 1, N'6', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1401, 1, N'6', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1402, 1, N'6', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1403, 2, N'6', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1404, 1, N'6', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1405, 1, N'6', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1406, 1, N'6', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1407, 1, N'6', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1408, 1, N'6', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1409, 2, N'6', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1410, 2, N'6', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1411, 1, N'6', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1412, 1, N'6', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1413, 1, N'6', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1414, 1, N'6', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1415, 2, N'6', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1416, 1, N'6', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1417, 2, N'6', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1418, 1, N'6', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1419, 1, N'6', N'F', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1420, 1, N'6', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1421, 1, N'6', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1422, 1, N'6', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1423, 1, N'6', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1424, 1, N'6', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1425, 1, N'6', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1426, 1, N'6', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1427, 1, N'6', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1428, 1, N'6', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1429, 2, N'6', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1430, 2, N'6', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1431, 1, N'6', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1432, 1, N'6', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1433, 2, N'6', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1434, 1, N'6', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1435, 1, N'6', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1436, 1, N'6', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1437, 2, N'6', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1438, 1, N'6', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1439, 1, N'6', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1440, 1, N'6', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1441, 1, N'7', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1442, 1, N'7', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1443, 1, N'7', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1444, 1, N'7', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1445, 1, N'7', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1446, 1, N'7', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1447, 1, N'7', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1448, 1, N'7', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1449, 2, N'7', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1450, 1, N'7', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1451, 1, N'7', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1452, 1, N'7', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1453, 2, N'7', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1454, 1, N'7', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1455, 2, N'7', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1456, 1, N'7', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1457, 1, N'7', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1458, 1, N'7', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1459, 1, N'7', N'A', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1460, 1, N'7', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1461, 1, N'7', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1462, 1, N'7', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1463, 1, N'7', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1464, 1, N'7', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1465, 1, N'7', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1466, 1, N'7', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1467, 2, N'7', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1468, 1, N'7', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1469, 1, N'7', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1470, 1, N'7', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1471, 1, N'7', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1472, 1, N'7', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1473, 2, N'7', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1474, 1, N'7', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1475, 1, N'7', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1476, 1, N'7', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1477, 1, N'7', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1478, 1, N'7', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1479, 1, N'7', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1480, 1, N'7', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1481, 1, N'7', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1482, 1, N'7', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1483, 1, N'7', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1484, 1, N'7', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1485, 1, N'7', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1486, 1, N'7', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1487, 1, N'7', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1488, 1, N'7', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1489, 1, N'7', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1490, 2, N'7', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1491, 1, N'7', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1492, 1, N'7', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1493, 2, N'7', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1494, 1, N'7', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1495, 2, N'7', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1496, 1, N'7', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1497, 1, N'7', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1498, 1, N'7', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1499, 1, N'7', N'B', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1500, 1, N'7', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1501, 1, N'7', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1502, 1, N'7', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1503, 1, N'7', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1504, 1, N'7', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1505, 1, N'7', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1506, 2, N'7', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1507, 1, N'7', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1508, 1, N'7', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1509, 1, N'7', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1510, 1, N'7', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1511, 1, N'7', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1512, 1, N'7', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1513, 1, N'7', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1514, 1, N'7', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1515, 1, N'7', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1516, 2, N'7', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1517, 1, N'7', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1518, 1, N'7', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1519, 1, N'7', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1520, 1, N'7', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1521, 1, N'7', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1522, 1, N'7', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1523, 2, N'7', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1524, 2, N'7', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1525, 2, N'7', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1526, 1, N'7', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1527, 1, N'7', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1528, 2, N'7', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1529, 1, N'7', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1530, 1, N'7', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1531, 1, N'7', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1532, 2, N'7', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1533, 2, N'7', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1534, 2, N'7', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1535, 2, N'7', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1536, 1, N'7', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1537, 1, N'7', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1538, 1, N'7', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1539, 1, N'7', N'C', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1540, 1, N'7', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1541, 1, N'7', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1542, 2, N'7', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1543, 2, N'7', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1544, 1, N'7', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1545, 2, N'7', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1546, 1, N'7', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1547, 1, N'7', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1548, 1, N'7', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1549, 2, N'7', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1550, 1, N'7', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1551, 1, N'7', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1552, 1, N'7', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1553, 1, N'7', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1554, 1, N'7', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1555, 1, N'7', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1556, 2, N'7', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1557, 1, N'7', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1558, 2, N'7', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1559, 1, N'7', N'C', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1560, 2, N'7', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1561, 1, N'7', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1562, 2, N'7', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1563, 2, N'7', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1564, 1, N'7', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1565, 1, N'7', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1566, 1, N'7', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1567, 1, N'7', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1568, 1, N'7', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1569, 1, N'7', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1570, 1, N'7', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1571, 1, N'7', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1572, 1, N'7', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1573, 2, N'7', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1574, 2, N'7', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1575, 2, N'7', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1576, 2, N'7', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1577, 1, N'7', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1578, 1, N'7', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1579, 1, N'7', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1580, 1, N'7', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1581, 2, N'7', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1582, 1, N'7', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1583, 1, N'7', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1584, 1, N'7', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1585, 1, N'7', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1586, 1, N'7', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1587, 1, N'7', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1588, 1, N'7', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1589, 2, N'7', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1590, 1, N'7', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1591, 1, N'7', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1592, 2, N'7', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1593, 1, N'7', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1594, 1, N'7', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1595, 1, N'7', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1596, 1, N'7', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1597, 1, N'7', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1598, 1, N'7', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1599, 2, N'7', N'D', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1600, 1, N'7', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1601, 1, N'7', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1602, 2, N'7', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1603, 1, N'7', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1604, 1, N'7', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1605, 1, N'7', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1606, 1, N'7', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1607, 1, N'7', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1608, 1, N'7', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1609, 1, N'7', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1610, 1, N'7', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1611, 1, N'7', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1612, 1, N'7', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1613, 1, N'7', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1614, 1, N'7', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1615, 1, N'7', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1616, 2, N'7', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1617, 1, N'7', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1618, 2, N'7', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1619, 1, N'7', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1620, 1, N'7', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1621, 1, N'7', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1622, 1, N'7', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1623, 1, N'7', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1624, 1, N'7', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1625, 1, N'7', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1626, 1, N'7', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1627, 1, N'7', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1628, 1, N'7', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1629, 2, N'7', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1630, 1, N'7', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1631, 2, N'7', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1632, 1, N'7', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1633, 1, N'7', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1634, 1, N'7', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1635, 1, N'7', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1636, 1, N'7', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1637, 1, N'7', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1638, 2, N'7', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1639, 2, N'7', N'E', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1640, 2, N'7', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1641, 2, N'7', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1642, 1, N'7', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1643, 1, N'7', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1644, 2, N'7', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1645, 1, N'7', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1646, 1, N'7', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1647, 1, N'7', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1648, 1, N'7', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1649, 1, N'7', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1650, 1, N'7', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1651, 1, N'7', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1652, 2, N'7', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1653, 1, N'7', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1654, 1, N'7', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1655, 1, N'7', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1656, 1, N'7', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1657, 1, N'7', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1658, 1, N'7', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1659, 1, N'7', N'F', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1660, 1, N'7', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1661, 1, N'7', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1662, 1, N'7', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1663, 2, N'7', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1664, 1, N'7', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1665, 1, N'7', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1666, 2, N'7', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1667, 1, N'7', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1668, 1, N'7', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1669, 2, N'7', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1670, 1, N'7', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1671, 1, N'7', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1672, 2, N'7', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1673, 1, N'7', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1674, 1, N'7', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1675, 2, N'7', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1676, 1, N'7', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1677, 1, N'7', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1678, 1, N'7', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1679, 2, N'7', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1680, 1, N'7', N'F', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1681, 1, N'8', N'A', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1682, 1, N'8', N'A', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1683, 1, N'8', N'A', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1684, 1, N'8', N'A', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1685, 1, N'8', N'A', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1686, 1, N'8', N'A', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1687, 2, N'8', N'A', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1688, 1, N'8', N'A', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1689, 2, N'8', N'A', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1690, 1, N'8', N'A', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1691, 1, N'8', N'A', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1692, 1, N'8', N'A', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1693, 1, N'8', N'A', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1694, 1, N'8', N'A', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1695, 2, N'8', N'A', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1696, 1, N'8', N'A', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1697, 1, N'8', N'A', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1698, 1, N'8', N'A', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1699, 1, N'8', N'A', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1700, 1, N'8', N'A', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1701, 1, N'8', N'A', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1702, 2, N'8', N'A', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1703, 1, N'8', N'A', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1704, 1, N'8', N'A', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1705, 2, N'8', N'A', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1706, 1, N'8', N'A', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1707, 1, N'8', N'A', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1708, 1, N'8', N'A', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1709, 1, N'8', N'A', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1710, 1, N'8', N'A', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1711, 1, N'8', N'A', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1712, 1, N'8', N'A', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1713, 1, N'8', N'A', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1714, 1, N'8', N'A', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1715, 1, N'8', N'A', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1716, 1, N'8', N'A', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1717, 1, N'8', N'A', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1718, 1, N'8', N'A', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1719, 1, N'8', N'A', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1720, 2, N'8', N'A', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1721, 2, N'8', N'B', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1722, 1, N'8', N'B', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1723, 1, N'8', N'B', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1724, 2, N'8', N'B', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1725, 1, N'8', N'B', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1726, 2, N'8', N'B', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1727, 1, N'8', N'B', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1728, 1, N'8', N'B', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1729, 1, N'8', N'B', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1730, 2, N'8', N'B', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1731, 1, N'8', N'B', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1732, 1, N'8', N'B', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1733, 2, N'8', N'B', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1734, 2, N'8', N'B', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1735, 2, N'8', N'B', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1736, 1, N'8', N'B', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1737, 1, N'8', N'B', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1738, 1, N'8', N'B', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1739, 1, N'8', N'B', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1740, 1, N'8', N'B', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1741, 1, N'8', N'B', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1742, 1, N'8', N'B', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1743, 2, N'8', N'B', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1744, 1, N'8', N'B', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1745, 1, N'8', N'B', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1746, 1, N'8', N'B', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1747, 2, N'8', N'B', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1748, 1, N'8', N'B', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1749, 1, N'8', N'B', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1750, 1, N'8', N'B', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1751, 2, N'8', N'B', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1752, 1, N'8', N'B', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1753, 1, N'8', N'B', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1754, 1, N'8', N'B', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1755, 2, N'8', N'B', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1756, 1, N'8', N'B', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1757, 2, N'8', N'B', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1758, 1, N'8', N'B', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1759, 1, N'8', N'B', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1760, 1, N'8', N'B', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1761, 1, N'8', N'C', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1762, 1, N'8', N'C', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1763, 1, N'8', N'C', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1764, 1, N'8', N'C', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1765, 1, N'8', N'C', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1766, 1, N'8', N'C', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1767, 1, N'8', N'C', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1768, 1, N'8', N'C', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1769, 1, N'8', N'C', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1770, 1, N'8', N'C', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1771, 1, N'8', N'C', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1772, 1, N'8', N'C', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1773, 1, N'8', N'C', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1774, 1, N'8', N'C', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1775, 2, N'8', N'C', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1776, 2, N'8', N'C', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1777, 1, N'8', N'C', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1778, 1, N'8', N'C', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1779, 1, N'8', N'C', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1780, 1, N'8', N'C', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1781, 1, N'8', N'C', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1782, 1, N'8', N'C', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1783, 2, N'8', N'C', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1784, 1, N'8', N'C', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1785, 1, N'8', N'C', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1786, 1, N'8', N'C', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1787, 1, N'8', N'C', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1788, 1, N'8', N'C', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1789, 1, N'8', N'C', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1790, 1, N'8', N'C', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1791, 1, N'8', N'C', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1792, 1, N'8', N'C', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1793, 1, N'8', N'C', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1794, 1, N'8', N'C', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1795, 2, N'8', N'C', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1796, 1, N'8', N'C', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1797, 1, N'8', N'C', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1798, 1, N'8', N'C', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1799, 1, N'8', N'C', 39)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1800, 1, N'8', N'C', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1801, 1, N'8', N'D', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1802, 1, N'8', N'D', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1803, 1, N'8', N'D', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1804, 2, N'8', N'D', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1805, 1, N'8', N'D', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1806, 1, N'8', N'D', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1807, 1, N'8', N'D', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1808, 1, N'8', N'D', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1809, 1, N'8', N'D', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1810, 1, N'8', N'D', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1811, 1, N'8', N'D', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1812, 2, N'8', N'D', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1813, 1, N'8', N'D', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1814, 1, N'8', N'D', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1815, 2, N'8', N'D', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1816, 2, N'8', N'D', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1817, 1, N'8', N'D', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1818, 1, N'8', N'D', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1819, 2, N'8', N'D', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1820, 2, N'8', N'D', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1821, 1, N'8', N'D', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1822, 1, N'8', N'D', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1823, 2, N'8', N'D', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1824, 1, N'8', N'D', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1825, 1, N'8', N'D', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1826, 1, N'8', N'D', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1827, 1, N'8', N'D', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1828, 1, N'8', N'D', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1829, 2, N'8', N'D', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1830, 1, N'8', N'D', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1831, 2, N'8', N'D', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1832, 1, N'8', N'D', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1833, 2, N'8', N'D', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1834, 1, N'8', N'D', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1835, 1, N'8', N'D', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1836, 1, N'8', N'D', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1837, 1, N'8', N'D', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1838, 1, N'8', N'D', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1839, 1, N'8', N'D', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1840, 2, N'8', N'D', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1841, 1, N'8', N'E', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1842, 1, N'8', N'E', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1843, 1, N'8', N'E', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1844, 2, N'8', N'E', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1845, 1, N'8', N'E', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1846, 1, N'8', N'E', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1847, 1, N'8', N'E', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1848, 1, N'8', N'E', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1849, 2, N'8', N'E', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1850, 1, N'8', N'E', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1851, 1, N'8', N'E', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1852, 1, N'8', N'E', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1853, 2, N'8', N'E', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1854, 2, N'8', N'E', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1855, 1, N'8', N'E', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1856, 1, N'8', N'E', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1857, 1, N'8', N'E', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1858, 2, N'8', N'E', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1859, 2, N'8', N'E', 19)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1860, 1, N'8', N'E', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1861, 1, N'8', N'E', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1862, 1, N'8', N'E', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1863, 2, N'8', N'E', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1864, 1, N'8', N'E', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1865, 1, N'8', N'E', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1866, 1, N'8', N'E', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1867, 1, N'8', N'E', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1868, 1, N'8', N'E', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1869, 2, N'8', N'E', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1870, 1, N'8', N'E', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1871, 1, N'8', N'E', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1872, 1, N'8', N'E', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1873, 1, N'8', N'E', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1874, 1, N'8', N'E', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1875, 1, N'8', N'E', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1876, 1, N'8', N'E', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1877, 2, N'8', N'E', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1878, 1, N'8', N'E', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1879, 2, N'8', N'E', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1880, 2, N'8', N'E', 40)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1881, 1, N'8', N'F', 1)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1882, 1, N'8', N'F', 2)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1883, 2, N'8', N'F', 3)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1884, 1, N'8', N'F', 4)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1885, 1, N'8', N'F', 5)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1886, 2, N'8', N'F', 6)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1887, 1, N'8', N'F', 7)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1888, 1, N'8', N'F', 8)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1889, 1, N'8', N'F', 9)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1890, 1, N'8', N'F', 10)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1891, 2, N'8', N'F', 11)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1892, 1, N'8', N'F', 12)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1893, 1, N'8', N'F', 13)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1894, 2, N'8', N'F', 14)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1895, 1, N'8', N'F', 15)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1896, 1, N'8', N'F', 16)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1897, 2, N'8', N'F', 17)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1898, 1, N'8', N'F', 18)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1899, 1, N'8', N'F', 19)
GO
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1900, 1, N'8', N'F', 20)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1901, 1, N'8', N'F', 21)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1902, 1, N'8', N'F', 22)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1903, 1, N'8', N'F', 23)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1904, 2, N'8', N'F', 24)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1905, 2, N'8', N'F', 25)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1906, 1, N'8', N'F', 26)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1907, 1, N'8', N'F', 27)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1908, 2, N'8', N'F', 28)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1909, 2, N'8', N'F', 29)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1910, 1, N'8', N'F', 30)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1911, 2, N'8', N'F', 31)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1912, 1, N'8', N'F', 32)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1913, 1, N'8', N'F', 33)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1914, 1, N'8', N'F', 34)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1915, 1, N'8', N'F', 35)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1916, 1, N'8', N'F', 36)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1917, 1, N'8', N'F', 37)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1918, 2, N'8', N'F', 38)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1919, 2, N'8', N'F', 39)
INSERT [dbo].[butacas] ([id_butaca], [id_estado], [columna], [fila], [id_funcion]) VALUES (1920, 1, N'8', N'F', 40)
SET IDENTITY_INSERT [dbo].[butacas] OFF
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (1, N'Valentín', N'Díaz', N'valentíncorreo@yahoo.com', N'3541-15096642', CAST(N'1961-07-07 00:00:00.000' AS DateTime), N'T0noJvXQvE9', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (2, N'Franco', N'Medina', N'francocorreo@yahoo.com', N'3541-15075584', CAST(N'1959-05-12 00:00:00.000' AS DateTime), N'81eHE5hVI3NB', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (3, N'Renata', N'Medina', N'renata567@yahoo.net', N'3541-15314698', CAST(N'1952-05-03 00:00:00.000' AS DateTime), N'UblZVqvY', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (4, N'Mía', N'González', N'mía123@hotmail.com', N'3541-15533144', CAST(N'2005-07-07 00:00:00.000' AS DateTime), N'wCwqhPK6JwRQ', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (5, N'Valeria', N'Rojas', N'valeriaCABJ@proveedor.org', N'3541-15812243', CAST(N'2002-06-23 00:00:00.000' AS DateTime), N'1JwRH2JcOS', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (6, N'Sara', N'Luna', N'saracontacto@empresa.org', N'3541-15333053', CAST(N'2014-11-25 00:00:00.000' AS DateTime), N'rcBsiyhDDIS', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (7, N'Valentín', N'Castillo', N'valentínapellido@outlook.com', N'3541-15501339', CAST(N'1999-12-15 00:00:00.000' AS DateTime), N'WQjP70dA2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (8, N'Renata', N'Fernández', N'renataapellido@outlook.com', N'3541-15735403', CAST(N'1982-04-11 00:00:00.000' AS DateTime), N'9OrPPZUcLmWy', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (9, N'Carmen', N'Reyes', N'carmencontacto@empresa.org', N'3541-15981740', CAST(N'1982-08-15 00:00:00.000' AS DateTime), N'7dCbt9STzFFT', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (10, N'Sofía', N'Vega', N'sofía567@yahoo.net', N'3541-15870617', CAST(N'1959-06-18 00:00:00.000' AS DateTime), N'HtOc0WRWLb', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (11, N'Felipe', N'Mendoza', N'felipe@example.com', N'3541-15743594', CAST(N'2000-03-09 00:00:00.000' AS DateTime), N'eRfhVwLwR', 2)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (12, N'Julieta', N'Sanchez', N'julieta@example.com', N'3541-15562349', CAST(N'1977-06-10 00:00:00.000' AS DateTime), N'izJ6y5Kdd5Z', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (13, N'Gabriel', N'Peralta', N'gabrielcorreo@yahoo.com', N'3541-15964390', CAST(N'1967-01-03 00:00:00.000' AS DateTime), N'quhTfcLDLCI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (14, N'Rocío', N'Molina', N'rocíocontacto@empresa.org', N'3541-15871382', CAST(N'1991-11-26 00:00:00.000' AS DateTime), N'PUIdr47Y', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (15, N'Juan', N'Medina', N'juanmessi10@servicio.com', N'3541-15526652', CAST(N'1982-11-08 00:00:00.000' AS DateTime), N'gkUOW3IhXf', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (16, N'Victoria', N'Ortiz', N'victoria@gmail.com', N'3541-15446340', CAST(N'1976-04-28 00:00:00.000' AS DateTime), N'xWIFv7n74Z', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (17, N'Juana', N'Torres', N'juana567@yahoo.net', N'3541-15943832', CAST(N'1972-03-07 00:00:00.000' AS DateTime), N'Xw0R0kL1R6', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (18, N'Matea', N'Giménez', N'matea@gmail.com', N'3541-15729378', CAST(N'1980-03-23 00:00:00.000' AS DateTime), N'by5rrXYEFX6J', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (19, N'Lautaro', N'Martínez', N'lautaro567@yahoo.net', N'3541-15198825', CAST(N'1993-07-19 00:00:00.000' AS DateTime), N'iIQKVfzFrV', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (20, N'Emma', N'Mendoza', N'emmaCABJ@proveedor.org', N'3541-15196181', CAST(N'1995-03-24 00:00:00.000' AS DateTime), N'HEjUwCDWf2J', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (21, N'Julieta', N'Gómez', N'julieta@example.com', N'3541-15911095', CAST(N'1965-11-17 00:00:00.000' AS DateTime), N'Y8zlG9yoh8w', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (22, N'Julieta', N'Vargas', N'julieta567@yahoo.net', N'3541-15610187', CAST(N'2010-02-15 00:00:00.000' AS DateTime), N'ZjRn1QOn', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (23, N'Valentín', N'Fernández', N'valentín777@gmail.com', N'3541-15131293', CAST(N'2009-10-14 00:00:00.000' AS DateTime), N'CDW3gAxNTy', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (24, N'Valeria', N'Cabrera', N'valeria@example.com', N'3541-15282057', CAST(N'1959-07-05 00:00:00.000' AS DateTime), N'WQ5sV7lcw', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (25, N'Carmen', N'Ortiz', N'carmenCABJ@proveedor.org', N'3541-15618599', CAST(N'1993-12-01 00:00:00.000' AS DateTime), N'qRixFu17L', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (26, N'Pilar', N'Molina', N'pilarcontacto@empresa.org', N'3541-15835021', CAST(N'1963-10-13 00:00:00.000' AS DateTime), N'1URhrJnlO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (27, N'Catalina', N'Díaz', N'catalinamessi10@servicio.com', N'3541-15813633', CAST(N'2015-02-25 00:00:00.000' AS DateTime), N'Z5CsoJo1t2dn', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (28, N'Julieta', N'González', N'julieta567@yahoo.net', N'3541-15060673', CAST(N'1990-12-06 00:00:00.000' AS DateTime), N'Wo3xM48M', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (29, N'Amelia', N'Cabrera', N'ameliacontacto@empresa.org', N'3541-15909182', CAST(N'1978-10-27 00:00:00.000' AS DateTime), N'Er98uxY1', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (30, N'Santiago', N'Blanco', N'santiagocorreo@yahoo.com', N'3541-15299213', CAST(N'1954-10-17 00:00:00.000' AS DateTime), N'mBq7pN7cux', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (31, N'Mateo', N'Ferreyra', N'mateo@gmail.com', N'3541-15426716', CAST(N'1979-03-15 00:00:00.000' AS DateTime), N'gdvFSGRSf8p8', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (32, N'Joaquín', N'Ferreyra', N'joaquínCABJ@proveedor.org', N'3541-15854678', CAST(N'1978-07-11 00:00:00.000' AS DateTime), N'QTsOJHJLz', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (33, N'Nicolás', N'Gutiérrez', N'nicoláscontacto@empresa.org', N'3541-15356674', CAST(N'2001-10-22 00:00:00.000' AS DateTime), N'7kyRh1dXkEe', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (34, N'Lucas', N'Ferreira', N'lucascorreo@yahoo.com', N'3541-15573073', CAST(N'2014-02-28 00:00:00.000' AS DateTime), N'98nk0grp3S', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (35, N'Amelia', N'López', N'ameliaapellido@outlook.com', N'3541-15989085', CAST(N'1989-07-07 00:00:00.000' AS DateTime), N'ZxlhThId9M', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (36, N'Juana', N'Suarez', N'juana123@hotmail.com', N'3541-15373761', CAST(N'1991-05-25 00:00:00.000' AS DateTime), N'Khy93NsbkO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (37, N'Amelia', N'Salazar', N'ameliaapellido@outlook.com', N'3541-15570315', CAST(N'1985-11-06 00:00:00.000' AS DateTime), N'qfACmjfojkHD', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (38, N'Franco', N'Córdoba', N'francoapellido@outlook.com', N'3541-15546292', CAST(N'1990-07-30 00:00:00.000' AS DateTime), N'86LxGhosmr', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (39, N'Emma', N'Salazar', N'emmamessi10@servicio.com', N'3541-15836028', CAST(N'1975-08-24 00:00:00.000' AS DateTime), N'9hNZ7ehK', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (40, N'Abril', N'Ramos', N'abril567@yahoo.net', N'3541-15330100', CAST(N'1963-01-08 00:00:00.000' AS DateTime), N'nmygsuometM', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (41, N'Martina', N'Delgado', N'martinamessi10@servicio.com', N'3541-15319148', CAST(N'2007-12-08 00:00:00.000' AS DateTime), N'9Pxj0dC6tB2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (42, N'Mariano', N'Córdoba', N'marianocontacto@empresa.org', N'3541-15486423', CAST(N'2002-09-17 00:00:00.000' AS DateTime), N'6XYfMEz39', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (43, N'Lucas', N'Giménez', N'lucas123@hotmail.com', N'3541-15790009', CAST(N'1984-01-19 00:00:00.000' AS DateTime), N'vxdMyigUDEys', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (44, N'Rocío', N'Córdoba', N'rocíocontacto@empresa.org', N'3541-15717556', CAST(N'1982-03-24 00:00:00.000' AS DateTime), N'R1iip5TC0a', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (45, N'Antonella', N'Gutiérrez', N'antonellaapellido@outlook.com', N'3541-15386053', CAST(N'1974-10-15 00:00:00.000' AS DateTime), N'jI4eXdmAKl', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (46, N'Juan', N'Suarez', N'juanapellido@outlook.com', N'3541-15369425', CAST(N'1971-11-24 00:00:00.000' AS DateTime), N'Sd5Lz9QhepiA', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (47, N'Juana', N'Cabrera', N'juanacontacto@empresa.org', N'3541-15680744', CAST(N'1965-02-13 00:00:00.000' AS DateTime), N'SncwRfvCZ3', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (48, N'Santiago', N'Pérez', N'santiago777@gmail.com', N'3541-15107148', CAST(N'1959-10-02 00:00:00.000' AS DateTime), N'HOSlMWYiXAIF', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (49, N'Lucas', N'Ríos', N'lucas@example.com', N'3541-15252361', CAST(N'1985-06-24 00:00:00.000' AS DateTime), N'GWAyd8itLzbE', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (50, N'Thiago', N'Morales', N'thiagocontacto@empresa.org', N'3541-15623342', CAST(N'1987-12-13 00:00:00.000' AS DateTime), N'bkqBvlqR', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (51, N'Lautaro', N'Cruz', N'lautaro@gmail.com', N'3541-15340686', CAST(N'2008-10-16 00:00:00.000' AS DateTime), N'2ybtxdh8L', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (52, N'Lucas', N'Acosta', N'lucascontacto@empresa.org', N'3541-15858234', CAST(N'1962-08-17 00:00:00.000' AS DateTime), N'MVwSl7ek3', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (53, N'Diego', N'Blanco', N'diegoCABJ@proveedor.org', N'3541-15019391', CAST(N'2004-11-19 00:00:00.000' AS DateTime), N'c6NLh0J9d8', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (54, N'Francisco', N'Hernández', N'franciscocorreo@yahoo.com', N'3541-15616552', CAST(N'1992-11-16 00:00:00.000' AS DateTime), N'0E2vZ9IvW5s', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (55, N'Victoria', N'Maidana', N'victoria@example.com', N'3541-15874403', CAST(N'2011-02-15 00:00:00.000' AS DateTime), N'pSg3r8R1Uj', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (56, N'Abril', N'Gutiérrez', N'abrilapellido@outlook.com', N'3541-15853829', CAST(N'1995-07-20 00:00:00.000' AS DateTime), N'vTTCvLuKw2x', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (57, N'Catalina', N'Gómez', N'catalina123@hotmail.com', N'3541-15982832', CAST(N'1986-07-02 00:00:00.000' AS DateTime), N'BuZKg2AiIWIx', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (58, N'Mariano', N'Ríos', N'marianomessi10@servicio.com', N'3541-15163593', CAST(N'1991-03-07 00:00:00.000' AS DateTime), N'G01yLyP6', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (59, N'Facundo', N'Medina', N'facundoCABJ@proveedor.org', N'3541-15125012', CAST(N'1951-02-14 00:00:00.000' AS DateTime), N'riXWYRZ24oo', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (60, N'Lucas', N'Torres', N'lucas123@hotmail.com', N'3541-15208074', CAST(N'2013-11-09 00:00:00.000' AS DateTime), N'63nctWvh', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (61, N'Mía', N'Mendoza', N'míamessi10@servicio.com', N'3541-15127668', CAST(N'1969-12-22 00:00:00.000' AS DateTime), N'dIVgoRA2H', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (62, N'Luciano', N'Córdoba', N'luciano777@gmail.com', N'3541-15286111', CAST(N'1953-02-13 00:00:00.000' AS DateTime), N'INFmgSWYari2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (63, N'Catalina', N'Córdoba', N'catalina123@hotmail.com', N'3541-15864848', CAST(N'1998-12-09 00:00:00.000' AS DateTime), N'rklQ7ehglgKa', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (64, N'Mía', N'Morales', N'mía@example.com', N'3541-15305209', CAST(N'1969-12-16 00:00:00.000' AS DateTime), N'vBpotyxS', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (65, N'Lautaro', N'Díaz', N'lautaromessi10@servicio.com', N'3541-15461875', CAST(N'2015-03-09 00:00:00.000' AS DateTime), N'FNAKtCRRlbKr', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (66, N'Amelia', N'Acosta', N'amelia567@yahoo.net', N'3541-15357544', CAST(N'1985-07-02 00:00:00.000' AS DateTime), N'MvMYKRgop3', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (67, N'Mía', N'Díaz', N'mía567@yahoo.net', N'3541-15113946', CAST(N'1992-08-03 00:00:00.000' AS DateTime), N'lBX1bVdkIyAI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (68, N'Ana', N'Alvarez', N'ana123@hotmail.com', N'3541-15826237', CAST(N'2008-06-17 00:00:00.000' AS DateTime), N'5uBVFZmOoqgx', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (69, N'Mariano', N'Ríos', N'marianoapellido@outlook.com', N'3541-15921006', CAST(N'1956-05-10 00:00:00.000' AS DateTime), N'P08Lr2Gwl', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (70, N'Francisco', N'Ríos', N'francisco@example.com', N'3541-15496264', CAST(N'1952-03-09 00:00:00.000' AS DateTime), N'5nwZbn2AcYj', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (71, N'Joaquín', N'Aguirre', N'joaquín567@yahoo.net', N'3541-15216784', CAST(N'1973-12-15 00:00:00.000' AS DateTime), N'Wr7MsBUA', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (72, N'Juan', N'González', N'juanmessi10@servicio.com', N'3541-15979670', CAST(N'1972-03-20 00:00:00.000' AS DateTime), N'iHHkQF3yKszc', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (73, N'Martina', N'Díaz', N'martina@example.com', N'3541-15119994', CAST(N'1969-11-05 00:00:00.000' AS DateTime), N'Z5IT0EoXj', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (74, N'Luciano', N'Gutiérrez', N'luciano567@yahoo.net', N'3541-15027358', CAST(N'1970-01-12 00:00:00.000' AS DateTime), N'fKYR6fEgfI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (75, N'Thiago', N'Aguirre', N'thiagocontacto@empresa.org', N'3541-15979963', CAST(N'2001-05-29 00:00:00.000' AS DateTime), N'A0WaLCGZV', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (76, N'Rocío', N'Ríos', N'rocío@example.com', N'3541-15533075', CAST(N'2000-05-17 00:00:00.000' AS DateTime), N'kMNEnru9x', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (77, N'Julieta', N'Peralta', N'julieta777@gmail.com', N'3541-15589101', CAST(N'2005-11-28 00:00:00.000' AS DateTime), N'LR9WB0JQ84Bo', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (78, N'Felipe', N'Cabrera', N'felipeCABJ@proveedor.org', N'3541-15916589', CAST(N'1983-05-10 00:00:00.000' AS DateTime), N'BsYbzSfR', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (79, N'Mariano', N'Mendoza', N'marianocontacto@empresa.org', N'3541-15594726', CAST(N'2002-07-13 00:00:00.000' AS DateTime), N'uBl0NdyxM', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (80, N'Delfina', N'Ibañez', N'delfinacorreo@yahoo.com', N'3541-15325004', CAST(N'1962-01-28 00:00:00.000' AS DateTime), N'hweK1nyJa', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (81, N'Camila', N'Suarez', N'camilacorreo@yahoo.com', N'3541-15503907', CAST(N'1961-02-01 00:00:00.000' AS DateTime), N'02iBZjKII', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (82, N'Isabella', N'Medina', N'isabellacorreo@yahoo.com', N'3541-15488236', CAST(N'1956-03-20 00:00:00.000' AS DateTime), N'JjD6YKQVl', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (83, N'Mía', N'Fuentes', N'mía567@yahoo.net', N'3541-15137565', CAST(N'2007-08-18 00:00:00.000' AS DateTime), N'FZr7zXo1N0S', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (84, N'Facundo', N'Suarez', N'facundo@example.com', N'3541-15175842', CAST(N'1983-05-07 00:00:00.000' AS DateTime), N'pIM4ZbuJ', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (85, N'Dante', N'Cruz', N'dante@example.com', N'3541-15436513', CAST(N'2004-08-28 00:00:00.000' AS DateTime), N'RwLKvnDKDKDY', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (86, N'Carlos', N'Díaz', N'carlosCABJ@proveedor.org', N'3541-15208238', CAST(N'1996-08-04 00:00:00.000' AS DateTime), N'hl0DGyNnVpX', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (87, N'Gabriel', N'Fuentes', N'gabrielcontacto@empresa.org', N'3541-15187793', CAST(N'1991-04-23 00:00:00.000' AS DateTime), N'hge7UN9TV2H', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (88, N'Matías', N'Mendoza', N'matíascorreo@yahoo.com', N'3541-15557076', CAST(N'2011-07-14 00:00:00.000' AS DateTime), N'q0fwzuGM3Wc', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (89, N'Ignacio', N'Martínez', N'ignaciocorreo@yahoo.com', N'3541-15326599', CAST(N'2012-10-07 00:00:00.000' AS DateTime), N'FFp2qkaE', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (90, N'Camila', N'Díaz', N'camila@gmail.com', N'3541-15057377', CAST(N'2010-02-11 00:00:00.000' AS DateTime), N'j6drvmsY', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (91, N'Valentina', N'Peralta', N'valentinaCABJ@proveedor.org', N'3541-15882218', CAST(N'1976-05-21 00:00:00.000' AS DateTime), N'qjXHVMKYxdI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (92, N'Santiago', N'Blanco', N'santiagoapellido@outlook.com', N'3541-15728619', CAST(N'1961-08-03 00:00:00.000' AS DateTime), N'LfLN6JfsQ', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (93, N'Victoria', N'Reyes', N'victoria777@gmail.com', N'3541-15010394', CAST(N'1995-01-14 00:00:00.000' AS DateTime), N'xoP2kILA', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (94, N'Valentín', N'Luna', N'valentín123@hotmail.com', N'3541-15245367', CAST(N'1976-03-18 00:00:00.000' AS DateTime), N'jlxjONcXSBFV', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (95, N'Camila', N'Ledesma', N'camilaapellido@outlook.com', N'3541-15251644', CAST(N'1959-03-14 00:00:00.000' AS DateTime), N'6eeBvRIpr', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (96, N'Tomás', N'Córdoba', N'tomásmessi10@servicio.com', N'3541-15629177', CAST(N'1995-11-15 00:00:00.000' AS DateTime), N'NplsnsEyO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (97, N'Abril', N'Vega', N'abrilapellido@outlook.com', N'3541-15542425', CAST(N'1993-03-17 00:00:00.000' AS DateTime), N'wS8dHMfF', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (98, N'Emma', N'Torres', N'emmacorreo@yahoo.com', N'3541-15234255', CAST(N'2013-05-04 00:00:00.000' AS DateTime), N'ccd4Hmka', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (99, N'Sofía', N'Ríos', N'sofíaapellido@outlook.com', N'3541-15280929', CAST(N'1989-07-06 00:00:00.000' AS DateTime), N'dOxOLb3L', NULL)
GO
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (100, N'Santiago', N'Ferreyra', N'santiago567@yahoo.net', N'3541-15379454', CAST(N'2005-07-15 00:00:00.000' AS DateTime), N'BLyHqMhwR6MZ', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (101, N'Valentina', N'Fernández', N'valentina@gmail.com', N'3541-15025097', CAST(N'2015-02-11 00:00:00.000' AS DateTime), N'o9VNjRA19w', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (102, N'Thiago', N'Ibañez', N'thiagocontacto@empresa.org', N'3541-15449230', CAST(N'1958-04-14 00:00:00.000' AS DateTime), N'JE1ySMAEU', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (103, N'Ignacio', N'Maidana', N'ignacio123@hotmail.com', N'3541-15123597', CAST(N'1978-03-17 00:00:00.000' AS DateTime), N'dUOwTwpZz', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (104, N'Matea', N'Morales', N'matea777@gmail.com', N'3541-15606191', CAST(N'1972-10-01 00:00:00.000' AS DateTime), N'j9W9hRe41D', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (105, N'Rocío', N'Rodríguez', N'rocío123@hotmail.com', N'3541-15805380', CAST(N'1967-07-29 00:00:00.000' AS DateTime), N'8R796gy4T', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (106, N'Joaquín', N'Fuentes', N'joaquín@gmail.com', N'3541-15504886', CAST(N'1978-03-24 00:00:00.000' AS DateTime), N'JERrMYUw', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (107, N'Benjamín', N'Gómez', N'benjamíncorreo@yahoo.com', N'3541-15332141', CAST(N'1962-11-20 00:00:00.000' AS DateTime), N'8343r4GLiR', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (108, N'Valeria', N'Ledesma', N'valeria123@hotmail.com', N'3541-15044628', CAST(N'1962-08-30 00:00:00.000' AS DateTime), N'yTxbDjJAfD2U', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (109, N'Julieta', N'Romero', N'julietaapellido@outlook.com', N'3541-15247916', CAST(N'2005-01-08 00:00:00.000' AS DateTime), N'1AgN5wz2d', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (110, N'Antonella', N'Cabrera', N'antonellaCABJ@proveedor.org', N'3541-15350259', CAST(N'1972-09-05 00:00:00.000' AS DateTime), N'dlZoqN2gM', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (111, N'Catalina', N'Martínez', N'catalina123@hotmail.com', N'3541-15404147', CAST(N'1996-04-13 00:00:00.000' AS DateTime), N'EWyC6jnO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (112, N'Amelia', N'Ramos', N'amelia123@hotmail.com', N'3541-15478106', CAST(N'2005-03-27 00:00:00.000' AS DateTime), N'gxyzY1sd', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (113, N'Lucas', N'Ramírez', N'lucas@example.com', N'3541-15719737', CAST(N'2003-02-16 00:00:00.000' AS DateTime), N'ZH92gS9RU', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (114, N'Renata', N'Giménez', N'renataCABJ@proveedor.org', N'3541-15797468', CAST(N'1983-02-12 00:00:00.000' AS DateTime), N'rsmMwKxN', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (115, N'Camila', N'Pérez', N'camila123@hotmail.com', N'3541-15551544', CAST(N'1998-06-01 00:00:00.000' AS DateTime), N'Ii3R7AHv5', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (116, N'Joaquín', N'Díaz', N'joaquín@example.com', N'3541-15046662', CAST(N'1998-12-21 00:00:00.000' AS DateTime), N'Fej4C1zV', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (117, N'Emma', N'Sanchez', N'emmamessi10@servicio.com', N'3541-15703035', CAST(N'1968-11-22 00:00:00.000' AS DateTime), N'MTbcvOzoZEjP', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (118, N'Amelia', N'Delgado', N'amelia123@hotmail.com', N'3541-15607279', CAST(N'2001-02-22 00:00:00.000' AS DateTime), N'BBBuY7qq', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (119, N'Julieta', N'Ferreira', N'julietaCABJ@proveedor.org', N'3541-15039643', CAST(N'1992-02-13 00:00:00.000' AS DateTime), N'QduYTlHSsov', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (120, N'Benjamín', N'Díaz', N'benjamín123@hotmail.com', N'3541-15352861', CAST(N'2012-12-17 00:00:00.000' AS DateTime), N'q8c7DHHOKvw4', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (121, N'Mía', N'Gutiérrez', N'mía123@hotmail.com', N'3541-15064350', CAST(N'1997-10-05 00:00:00.000' AS DateTime), N'h1z7KZjZTRGn', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (122, N'Tomás', N'Morales', N'tomás777@gmail.com', N'3541-15244232', CAST(N'2002-03-25 00:00:00.000' AS DateTime), N'DphWM3EP2E', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (123, N'Benjamín', N'Peralta', N'benjamínapellido@outlook.com', N'3541-15665541', CAST(N'2015-12-08 00:00:00.000' AS DateTime), N'nukLTjK6yW', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (124, N'Rocío', N'Medina', N'rocíocontacto@empresa.org', N'3541-15358660', CAST(N'1957-10-23 00:00:00.000' AS DateTime), N'6CunzFqGuh5', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (125, N'Valeria', N'González', N'valeria123@hotmail.com', N'3541-15574872', CAST(N'1996-01-08 00:00:00.000' AS DateTime), N'pBDCN9tzr', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (126, N'Matea', N'Luna', N'mateamessi10@servicio.com', N'3541-15709163', CAST(N'1962-12-15 00:00:00.000' AS DateTime), N'Ol3jXFlRtW', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (127, N'Florencia', N'Sosa', N'florencia@example.com', N'3541-15890219', CAST(N'1972-04-04 00:00:00.000' AS DateTime), N'E8Wn6Wl0', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (128, N'Isabella', N'Moreno', N'isabella777@gmail.com', N'3541-15991753', CAST(N'1973-07-20 00:00:00.000' AS DateTime), N'WnCjH6uysWT', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (129, N'Lucas', N'Sanchez', N'lucas123@hotmail.com', N'3541-15797843', CAST(N'1983-04-16 00:00:00.000' AS DateTime), N'VVWVwtOHb', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (130, N'Victoria', N'Castillo', N'victoria777@gmail.com', N'3541-15764611', CAST(N'1953-11-24 00:00:00.000' AS DateTime), N'VYbSwFGx', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (131, N'Valentina', N'Pérez', N'valentinacorreo@yahoo.com', N'3541-15994711', CAST(N'1963-04-13 00:00:00.000' AS DateTime), N'ehS0cgI72v', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (132, N'Sara', N'Ramírez', N'saramessi10@servicio.com', N'3541-15181645', CAST(N'1996-07-02 00:00:00.000' AS DateTime), N'zlBvNMYc', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (133, N'Mateo', N'Ramos', N'mateo@gmail.com', N'3541-15368929', CAST(N'1988-05-30 00:00:00.000' AS DateTime), N'cXkKTNRE', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (134, N'Thiago', N'Salazar', N'thiago777@gmail.com', N'3541-15191746', CAST(N'1971-06-22 00:00:00.000' AS DateTime), N'dy3U83j8', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (135, N'Santiago', N'Vega', N'santiago567@yahoo.net', N'3541-15342726', CAST(N'1986-03-21 00:00:00.000' AS DateTime), N'fdGyZ51VzW', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (136, N'Emilia', N'Hernández', N'emiliaCABJ@proveedor.org', N'3541-15958736', CAST(N'1952-12-13 00:00:00.000' AS DateTime), N'vUHc4YQCDKB1', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (137, N'Renata', N'Martínez', N'renata777@gmail.com', N'3541-15483151', CAST(N'1967-02-10 00:00:00.000' AS DateTime), N'9yh08u1PhZc', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (138, N'Diego', N'Aguirre', N'diego567@yahoo.net', N'3541-15634326', CAST(N'2006-04-29 00:00:00.000' AS DateTime), N'WaSvxNlvKv', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (139, N'Mariano', N'Ferreyra', N'mariano567@yahoo.net', N'3541-15050348', CAST(N'1998-06-21 00:00:00.000' AS DateTime), N'nF6E67xqCcC', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (140, N'Lautaro', N'Gómez', N'lautaroapellido@outlook.com', N'3541-15007095', CAST(N'1962-05-09 00:00:00.000' AS DateTime), N'OZCwDCX3n', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (141, N'Mariano', N'Medina', N'marianoapellido@outlook.com', N'3541-15167146', CAST(N'1960-11-06 00:00:00.000' AS DateTime), N'l8sQms4xSwC4', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (142, N'Emilia', N'Vega', N'emilia123@hotmail.com', N'3541-15441070', CAST(N'1956-04-05 00:00:00.000' AS DateTime), N'IRvTIKz0sNV', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (143, N'Ana', N'Rodríguez', N'anacorreo@yahoo.com', N'3541-15698336', CAST(N'1965-11-23 00:00:00.000' AS DateTime), N'min8MSnJLAL', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (144, N'Luciano', N'Aguirre', N'lucianocorreo@yahoo.com', N'3541-15238823', CAST(N'1975-02-01 00:00:00.000' AS DateTime), N'JaJ0B6exUO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (145, N'Ana', N'Vega', N'ana@example.com', N'3541-15247845', CAST(N'1977-04-08 00:00:00.000' AS DateTime), N'nSL57eYA', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (146, N'Juana', N'Martínez', N'juana@example.com', N'3541-15014757', CAST(N'2012-06-23 00:00:00.000' AS DateTime), N'v6kNGMip5U', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (147, N'Dante', N'Sosa', N'danteCABJ@proveedor.org', N'3541-15697540', CAST(N'1974-09-27 00:00:00.000' AS DateTime), N'R7AsuxC8', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (148, N'Dante', N'Fuentes', N'dante123@hotmail.com', N'3541-15583887', CAST(N'1977-08-03 00:00:00.000' AS DateTime), N'53wGEJFCgH8', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (149, N'Victoria', N'Fernández', N'victoriamessi10@servicio.com', N'3541-15920399', CAST(N'1988-06-02 00:00:00.000' AS DateTime), N'yCU6ppkO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (150, N'Lautaro', N'Morales', N'lautaro123@hotmail.com', N'3541-15342364', CAST(N'1962-10-08 00:00:00.000' AS DateTime), N'V8BN9yVX', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (151, N'Carmen', N'González', N'carmen@example.com', N'3541-15653826', CAST(N'1972-10-18 00:00:00.000' AS DateTime), N'auQ7mon5', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (152, N'Mariano', N'Vega', N'mariano777@gmail.com', N'3541-15344997', CAST(N'2008-03-01 00:00:00.000' AS DateTime), N'EhKvlmdtS', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (153, N'Sara', N'Castillo', N'saraapellido@outlook.com', N'3541-15886271', CAST(N'2006-04-26 00:00:00.000' AS DateTime), N'HKM0Xxna6e', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (154, N'Diego', N'Rojas', N'diego567@yahoo.net', N'3541-15356581', CAST(N'1996-07-10 00:00:00.000' AS DateTime), N'j1lGjzGmN', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (155, N'Felipe', N'Romero', N'felipe777@gmail.com', N'3541-15737362', CAST(N'2000-12-06 00:00:00.000' AS DateTime), N'sREozJuwbb', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (156, N'Sara', N'Ríos', N'sara@example.com', N'3541-15340303', CAST(N'1969-04-30 00:00:00.000' AS DateTime), N'anWZZmlI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (157, N'Florencia', N'Salazar', N'florenciacontacto@empresa.org', N'3541-15193452', CAST(N'1955-05-20 00:00:00.000' AS DateTime), N'2VU43yzU6sea', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (158, N'Victoria', N'Díaz', N'victoria777@gmail.com', N'3541-15597147', CAST(N'1999-06-20 00:00:00.000' AS DateTime), N'4a2XExhcyXI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (159, N'Franco', N'Morales', N'francocorreo@yahoo.com', N'3541-15915394', CAST(N'2013-12-06 00:00:00.000' AS DateTime), N'upZyYtPE', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (160, N'Juana', N'Ibañez', N'juana777@gmail.com', N'3541-15100320', CAST(N'1963-10-02 00:00:00.000' AS DateTime), N'CPnV6ub2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (161, N'Amelia', N'Rodríguez', N'ameliamessi10@servicio.com', N'3541-15065008', CAST(N'1982-06-05 00:00:00.000' AS DateTime), N'HIGjSHjwKe', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (162, N'Lucas', N'Giménez', N'lucasmessi10@servicio.com', N'3541-15417484', CAST(N'1996-03-06 00:00:00.000' AS DateTime), N'9WQ4jdvYZI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (163, N'Renata', N'Alvarez', N'renata567@yahoo.net', N'3541-15048285', CAST(N'1964-03-15 00:00:00.000' AS DateTime), N'kObZkc7eGcv', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (164, N'Mateo', N'Fuentes', N'mateocorreo@yahoo.com', N'3541-15014406', CAST(N'1979-11-14 00:00:00.000' AS DateTime), N'TSFN2WmJPxI', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (165, N'Lucas', N'Martínez', N'lucas@gmail.com', N'3541-15718200', CAST(N'1979-07-25 00:00:00.000' AS DateTime), N'ni5ZF0nteMC', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (166, N'Juan', N'Cabrera', N'juan777@gmail.com', N'3541-15616113', CAST(N'1956-02-25 00:00:00.000' AS DateTime), N'uWTsaUPxmDA', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (167, N'Lautaro', N'Suarez', N'lautaroapellido@outlook.com', N'3541-15057341', CAST(N'1970-04-29 00:00:00.000' AS DateTime), N'tyJQVVKvW8', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (168, N'Camila', N'Blanco', N'camila123@hotmail.com', N'3541-15115533', CAST(N'1957-04-14 00:00:00.000' AS DateTime), N'Xk9P5LM8hPte', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (169, N'Antonella', N'García', N'antonella@example.com', N'3541-15348684', CAST(N'1990-05-24 00:00:00.000' AS DateTime), N'dIhXR2WM', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (170, N'Catalina', N'Blanco', N'catalina@gmail.com', N'3541-15002484', CAST(N'1950-07-08 00:00:00.000' AS DateTime), N'Ik73C7HWr', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (171, N'Catalina', N'Giménez', N'catalina777@gmail.com', N'3541-15213743', CAST(N'1968-06-13 00:00:00.000' AS DateTime), N'VaLqFP7Yn', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (172, N'Victoria', N'Ortiz', N'victoria@example.com', N'3541-15220184', CAST(N'1955-01-17 00:00:00.000' AS DateTime), N'd93wPQbg', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (173, N'Franco', N'Fernández', N'franco777@gmail.com', N'3541-15619187', CAST(N'1961-08-17 00:00:00.000' AS DateTime), N'3QMBBhVx4', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (174, N'Pilar', N'Rojas', N'pilar123@hotmail.com', N'3541-15710995', CAST(N'2004-02-01 00:00:00.000' AS DateTime), N'X3GYZukRQb', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (175, N'Franco', N'Romero', N'francocorreo@yahoo.com', N'3541-15794283', CAST(N'1985-12-19 00:00:00.000' AS DateTime), N'ToWlOhbI0sy5', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (176, N'Florencia', N'Maidana', N'florencia123@hotmail.com', N'3541-15606258', CAST(N'1980-11-26 00:00:00.000' AS DateTime), N'9Jxankkvo', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (177, N'Valeria', N'Ortiz', N'valeriaCABJ@proveedor.org', N'3541-15511500', CAST(N'2009-06-17 00:00:00.000' AS DateTime), N'bj3xLb34', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (178, N'Catalina', N'Sosa', N'catalinaCABJ@proveedor.org', N'3541-15756164', CAST(N'1999-05-20 00:00:00.000' AS DateTime), N'PwtwxXH3PV', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (179, N'Carlos', N'Córdoba', N'carlos123@hotmail.com', N'3541-15738325', CAST(N'1955-09-09 00:00:00.000' AS DateTime), N'fQGhW1XfA3X6', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (180, N'Camila', N'Hernández', N'camila777@gmail.com', N'3541-15644835', CAST(N'1999-03-21 00:00:00.000' AS DateTime), N'PA9Cpd6w6M', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (181, N'Francisco', N'Vega', N'franciscocorreo@yahoo.com', N'3541-15633657', CAST(N'2006-10-14 00:00:00.000' AS DateTime), N'T6cbXBwuWNx', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (182, N'Sofía', N'Hernández', N'sofía@example.com', N'3541-15002614', CAST(N'1966-05-21 00:00:00.000' AS DateTime), N'rKVhkTH2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (183, N'Amelia', N'Ramírez', N'amelia@gmail.com', N'3541-15136810', CAST(N'2003-01-15 00:00:00.000' AS DateTime), N'mqgcQEoP', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (184, N'Amelia', N'Molina', N'ameliacorreo@yahoo.com', N'3541-15332107', CAST(N'2003-12-13 00:00:00.000' AS DateTime), N'dFQOgFz4jCq2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (185, N'Matías', N'Moreno', N'matíasmessi10@servicio.com', N'3541-15724221', CAST(N'1967-09-28 00:00:00.000' AS DateTime), N'5sgZf5EgA', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (186, N'Carmen', N'Ledesma', N'carmen123@hotmail.com', N'3541-15721033', CAST(N'1960-06-16 00:00:00.000' AS DateTime), N'0KUMGXVMe2R', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (187, N'Thiago', N'Maidana', N'thiago567@yahoo.net', N'3541-15002369', CAST(N'1962-03-02 00:00:00.000' AS DateTime), N'o9SnCHI2iI5C', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (188, N'Lautaro', N'Mendoza', N'lautaroCABJ@proveedor.org', N'3541-15354879', CAST(N'1961-09-11 00:00:00.000' AS DateTime), N'CcHJ69Ln', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (189, N'Florencia', N'Castillo', N'florencia777@gmail.com', N'3541-15309666', CAST(N'1994-02-24 00:00:00.000' AS DateTime), N'8VYhQdbP0', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (190, N'Sara', N'Maidana', N'sara567@yahoo.net', N'3541-15549432', CAST(N'1987-09-19 00:00:00.000' AS DateTime), N'GNME5iBFJ3', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (191, N'Carmen', N'Aguirre', N'carmencontacto@empresa.org', N'3541-15825236', CAST(N'1990-05-12 00:00:00.000' AS DateTime), N'TxLPBhIXgc', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (192, N'Benjamín', N'Ortiz', N'benjamíncontacto@empresa.org', N'3541-15767185', CAST(N'2001-04-24 00:00:00.000' AS DateTime), N'gmAmfhTN', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (193, N'Valeria', N'Ibañez', N'valeriacorreo@yahoo.com', N'3541-15910166', CAST(N'1975-09-13 00:00:00.000' AS DateTime), N'gki1TQV7', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (194, N'Matías', N'Díaz', N'matías@example.com', N'3541-15805329', CAST(N'2000-04-08 00:00:00.000' AS DateTime), N'Rqxj2z6bw84', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (195, N'Francisco', N'Cruz', N'franciscomessi10@servicio.com', N'3541-15436125', CAST(N'1951-11-05 00:00:00.000' AS DateTime), N'f4xr9OBQFba0', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (196, N'Mariano', N'Pérez', N'marianocontacto@empresa.org', N'3541-15175963', CAST(N'1973-01-20 00:00:00.000' AS DateTime), N'OmRTFw4gO', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (197, N'Luciano', N'Bravo', N'lucianocontacto@empresa.org', N'3541-15577128', CAST(N'1981-05-26 00:00:00.000' AS DateTime), N'p9Qbe11u', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (198, N'Nicolás', N'Ibañez', N'nicoláscontacto@empresa.org', N'3541-15916760', CAST(N'1974-09-20 00:00:00.000' AS DateTime), N'HaL46Fh2', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (199, N'Diego', N'Ramírez', N'diego123@hotmail.com', N'3541-15692934', CAST(N'2006-07-04 00:00:00.000' AS DateTime), N'7k7BgHPUg9x', NULL)
GO
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (200, N'Gabriel', N'Medina', N'gabrielcontacto@empresa.org', N'3541-15112783', CAST(N'1959-09-30 00:00:00.000' AS DateTime), N'duysTsKaUpQ', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (201, N'utn', N'utn', N'utn', N'3331415', CAST(N'2020-02-06 00:00:00.000' AS DateTime), N'1234567', NULL)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (202, N'a', N'a', N'a', N'123', CAST(N'2023-11-21 11:37:23.347' AS DateTime), N'1234567', 2)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (203, N'vbnbnv', N'asdgf', N'asdffdgdfg5ytr', N'', CAST(N'2020-02-06 00:00:00.000' AS DateTime), N'12345674', 2)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (204, N'asfafs', N'asd', N'1123434', N'235', CAST(N'2023-11-01 21:53:11.000' AS DateTime), N'asdfghjklñ', 2)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (205, N'Vero', N'Peirone', N'vero@gmail.com', N'1234567', CAST(N'1974-11-06 16:52:03.000' AS DateTime), N'1234567', 1)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [mail], [nro_tel], [fecha_nac], [contraseña], [id_estado]) VALUES (206, N'Mario', N'dsfdsfsdf34', N'mario@gmail.com', N'93516768438', CAST(N'1978-12-26 00:00:00.000' AS DateTime), N'Mario1234', 2)
SET IDENTITY_INSERT [dbo].[clientes] OFF
SET IDENTITY_INSERT [dbo].[descuentos] ON 

INSERT [dbo].[descuentos] ([id_descuento], [descripcion], [monto]) VALUES (1, N'Menor', CAST(0.15 AS Decimal(2, 2)))
INSERT [dbo].[descuentos] ([id_descuento], [descripcion], [monto]) VALUES (2, N'Jubilado', CAST(0.10 AS Decimal(2, 2)))
INSERT [dbo].[descuentos] ([id_descuento], [descripcion], [monto]) VALUES (3, N'Adulto', CAST(0.00 AS Decimal(2, 2)))
SET IDENTITY_INSERT [dbo].[descuentos] OFF
SET IDENTITY_INSERT [dbo].[detalles_factura] ON 

INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1, 83, 1500.0000, 3, 2, 4, 682)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (2, 139, 1350.0000, 2, 3, 14, 214)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (3, 127, 1500.0000, 3, 2, 12, 291)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (4, 80, 1500.0000, 3, 2, 2, 605)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (5, 154, 1350.0000, 2, 3, 3, 517)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (6, 2, 1275.0000, 1, 1, 17, 593)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (7, 147, 1275.0000, 1, 1, 6, 483)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (8, 130, 1275.0000, 1, 1, 2, 231)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (9, 74, 1350.0000, 2, 3, 6, 738)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (10, 139, 1500.0000, 3, 2, 13, 139)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (11, 12, 1500.0000, 3, 2, 3, 35)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (12, 72, 1350.0000, 2, 3, 14, 346)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (13, 175, 1500.0000, 3, 2, 20, 440)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (14, 14, 1500.0000, 3, 2, 12, 292)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (15, 160, 1275.0000, 1, 1, 8, 392)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (16, 167, 1500.0000, 3, 2, 6, 840)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (17, 99, 1500.0000, 3, 2, 18, 101)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (18, 131, 1350.0000, 2, 3, 9, 454)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (19, 181, 1500.0000, 3, 2, 5, 577)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (20, 129, 1350.0000, 2, 3, 10, 326)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (21, 171, 1500.0000, 3, 2, 19, 717)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (22, 156, 1500.0000, 3, 2, 2, 84)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (23, 163, 1500.0000, 3, 2, 5, 615)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (24, 128, 1500.0000, 3, 2, 15, 755)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (25, 97, 1500.0000, 3, 2, 14, 360)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (26, 51, 1500.0000, 3, 2, 15, 778)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (27, 166, 1275.0000, 1, 1, 20, 390)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (28, 102, 1500.0000, 3, 2, 19, 651)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (29, 61, 1500.0000, 3, 2, 10, 389)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (30, 95, 1500.0000, 3, 2, 19, 913)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (31, 26, 1500.0000, 3, 2, 20, 743)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (32, 42, 1500.0000, 3, 2, 20, 381)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (33, 124, 1275.0000, 1, 1, 10, 467)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (34, 111, 1500.0000, 3, 2, 20, 882)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (35, 167, 1275.0000, 1, 1, 18, 119)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (36, 74, 1275.0000, 1, 1, 1, 674)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (37, 82, 1500.0000, 3, 2, 12, 19)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (38, 8, 1350.0000, 2, 3, 1, 123)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (39, 167, 1350.0000, 2, 3, 11, 59)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (40, 23, 1500.0000, 3, 2, 2, 429)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (41, 31, 1500.0000, 3, 2, 11, 872)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (42, 32, 1275.0000, 1, 1, 18, 506)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (43, 136, 1275.0000, 1, 1, 12, 700)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (44, 150, 1500.0000, 3, 2, 14, 294)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (45, 172, 1350.0000, 2, 3, 16, 881)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (46, 149, 1500.0000, 3, 2, 6, 471)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (47, 10, 1500.0000, 3, 2, 20, 626)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (48, 76, 1500.0000, 3, 2, 13, 721)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (49, 148, 1275.0000, 1, 1, 12, 347)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (50, 77, 1500.0000, 3, 2, 5, 376)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (51, 197, 1275.0000, 1, 1, 10, 919)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (52, 3, 1500.0000, 3, 2, 12, 403)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (53, 124, 1500.0000, 3, 2, 2, 527)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (54, 14, 1500.0000, 3, 2, 11, 404)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (55, 84, 1350.0000, 2, 3, 6, 371)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (56, 94, 1500.0000, 3, 2, 15, 571)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (57, 107, 1500.0000, 3, 2, 20, 629)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (58, 117, 1500.0000, 3, 2, 9, 829)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (59, 152, 1275.0000, 1, 1, 5, 106)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (60, 71, 1500.0000, 3, 2, 18, 746)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (61, 110, 1500.0000, 3, 2, 11, 125)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (62, 124, 1275.0000, 1, 1, 4, 500)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (63, 18, 1350.0000, 2, 3, 17, 719)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (64, 126, 1500.0000, 3, 2, 16, 356)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (65, 54, 1500.0000, 3, 2, 11, 799)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (66, 136, 1500.0000, 3, 2, 1, 955)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (67, 16, 1500.0000, 3, 2, 20, 681)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (68, 143, 1350.0000, 2, 3, 17, 639)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (69, 31, 1275.0000, 1, 1, 2, 55)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (70, 10, 1275.0000, 1, 1, 12, 161)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (71, 94, 1275.0000, 1, 1, 13, 446)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (72, 176, 1350.0000, 2, 3, 5, 744)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (73, 119, 1275.0000, 1, 1, 9, 94)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (74, 199, 1500.0000, 3, 2, 1, 747)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (75, 64, 1500.0000, 3, 2, 9, 112)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (76, 179, 1500.0000, 3, 2, 12, 286)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (77, 47, 1500.0000, 3, 2, 16, 733)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (78, 120, 1500.0000, 3, 2, 5, 692)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (79, 108, 1500.0000, 3, 2, 19, 556)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (80, 9, 1275.0000, 1, 1, 13, 305)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (81, 120, 1275.0000, 1, 1, 1, 921)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (82, 139, 1500.0000, 3, 2, 9, 120)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (83, 173, 1350.0000, 2, 3, 9, 219)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (84, 195, 1500.0000, 3, 2, 7, 31)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (85, 187, 1500.0000, 3, 2, 14, 438)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (86, 168, 1275.0000, 1, 1, 3, 430)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (87, 178, 1500.0000, 3, 2, 11, 572)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (88, 34, 1500.0000, 3, 2, 1, 683)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (89, 159, 1500.0000, 3, 2, 3, 295)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (90, 4, 1500.0000, 3, 2, 1, 34)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (91, 46, 1275.0000, 1, 1, 20, 409)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (92, 173, 1275.0000, 1, 1, 3, 718)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (93, 172, 1500.0000, 3, 2, 3, 601)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (94, 96, 1275.0000, 1, 1, 17, 509)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (95, 4, 1500.0000, 3, 2, 9, 935)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (96, 112, 1500.0000, 3, 2, 12, 450)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (97, 165, 1500.0000, 3, 2, 6, 880)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (98, 183, 1500.0000, 3, 2, 2, 266)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (99, 28, 1500.0000, 3, 2, 8, 232)
GO
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (100, 52, 1350.0000, 2, 3, 8, 183)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (101, 70, 1275.0000, 1, 1, 5, 737)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (102, 38, 1350.0000, 2, 3, 8, 276)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (103, 132, 1350.0000, 2, 3, 7, 333)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (104, 45, 1500.0000, 3, 2, 15, 726)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (105, 41, 1500.0000, 3, 2, 3, 801)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (106, 68, 1275.0000, 1, 1, 1, 351)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (107, 183, 1275.0000, 1, 1, 10, 24)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (108, 132, 1500.0000, 3, 2, 4, 611)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (109, 128, 1275.0000, 1, 1, 3, 691)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (110, 63, 1350.0000, 2, 3, 6, 716)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (111, 56, 1275.0000, 1, 1, 20, 410)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (112, 5, 1350.0000, 2, 3, 16, 447)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (113, 116, 1350.0000, 2, 3, 3, 795)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (114, 196, 1500.0000, 3, 2, 3, 859)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (115, 35, 1275.0000, 1, 1, 5, 105)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (116, 37, 1500.0000, 3, 2, 6, 463)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (117, 152, 1500.0000, 3, 2, 1, 420)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (118, 18, 1500.0000, 3, 2, 6, 498)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (119, 35, 1500.0000, 3, 2, 1, 70)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (120, 121, 1500.0000, 3, 2, 8, 97)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (121, 107, 1500.0000, 3, 2, 11, 818)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (122, 65, 1500.0000, 3, 2, 4, 504)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (123, 176, 1500.0000, 3, 2, 15, 666)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (124, 60, 1500.0000, 3, 2, 9, 760)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (125, 42, 1500.0000, 3, 2, 1, 789)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (126, 17, 1500.0000, 3, 2, 4, 785)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (127, 122, 1500.0000, 3, 2, 13, 159)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (128, 23, 1275.0000, 1, 1, 20, 174)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (129, 77, 1500.0000, 3, 2, 2, 218)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (130, 67, 1350.0000, 2, 3, 4, 73)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (131, 180, 1500.0000, 3, 2, 15, 176)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (132, 61, 1500.0000, 3, 2, 16, 673)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (133, 33, 1500.0000, 3, 2, 7, 352)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (134, 83, 1500.0000, 3, 2, 3, 923)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (135, 121, 1500.0000, 3, 2, 14, 659)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (136, 146, 1350.0000, 2, 3, 1, 928)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (137, 155, 1500.0000, 3, 2, 3, 934)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (138, 88, 1500.0000, 3, 2, 18, 653)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (139, 69, 1500.0000, 3, 2, 11, 550)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (140, 181, 1500.0000, 3, 2, 10, 17)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (141, 197, 1500.0000, 3, 2, 16, 661)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (142, 144, 1275.0000, 1, 1, 1, 644)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (143, 64, 1275.0000, 1, 1, 17, 15)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (144, 17, 1500.0000, 3, 2, 19, 665)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (145, 169, 1500.0000, 3, 2, 6, 720)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (146, 44, 1500.0000, 3, 2, 18, 936)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (147, 57, 1275.0000, 1, 1, 7, 777)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (148, 109, 1500.0000, 3, 2, 18, 834)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (149, 10, 1500.0000, 3, 2, 10, 460)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (150, 154, 1275.0000, 1, 1, 1, 938)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (151, 57, 1500.0000, 3, 2, 11, 705)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (152, 185, 1500.0000, 3, 2, 12, 485)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (153, 170, 1350.0000, 2, 3, 15, 375)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (154, 1, 1500.0000, 3, 2, 18, 243)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (155, 35, 1500.0000, 3, 2, 20, 641)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (156, 57, 1500.0000, 3, 2, 16, 862)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (157, 10, 1275.0000, 1, 1, 7, 155)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (158, 132, 1500.0000, 3, 2, 5, 804)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (159, 25, 1350.0000, 2, 3, 7, 481)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (160, 104, 1350.0000, 2, 3, 10, 672)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (161, 99, 1500.0000, 3, 2, 19, 181)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (162, 7, 1350.0000, 2, 3, 10, 725)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (163, 12, 1350.0000, 2, 3, 8, 766)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (164, 196, 1500.0000, 3, 2, 6, 461)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (165, 10, 1350.0000, 2, 3, 7, 709)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (166, 94, 1350.0000, 2, 3, 8, 699)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (167, 41, 1350.0000, 2, 3, 11, 648)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (168, 134, 1275.0000, 1, 1, 5, 594)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (169, 157, 1500.0000, 3, 2, 18, 887)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (170, 6, 1275.0000, 1, 1, 1, 216)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (171, 46, 1500.0000, 3, 2, 18, 675)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (172, 39, 1275.0000, 1, 1, 16, 758)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (173, 87, 1350.0000, 2, 3, 19, 788)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (174, 63, 1500.0000, 3, 2, 19, 890)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (175, 64, 1350.0000, 2, 3, 8, 690)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (176, 132, 1500.0000, 3, 2, 13, 58)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (177, 9, 1500.0000, 3, 2, 8, 597)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (178, 145, 1500.0000, 3, 2, 3, 730)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (179, 166, 1500.0000, 3, 2, 10, 335)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (180, 152, 1500.0000, 3, 2, 11, 414)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (181, 142, 1275.0000, 1, 1, 6, 41)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (182, 183, 1275.0000, 1, 1, 1, 91)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (183, 129, 1350.0000, 2, 3, 1, 742)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (184, 148, 1500.0000, 3, 2, 18, 166)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (185, 119, 1500.0000, 3, 2, 1, 642)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (186, 127, 1350.0000, 2, 3, 6, 609)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (187, 60, 1500.0000, 3, 2, 16, 957)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (188, 14, 1500.0000, 3, 2, 2, 395)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (189, 144, 1275.0000, 1, 1, 12, 405)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (190, 169, 1275.0000, 1, 1, 17, 536)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (191, 146, 1350.0000, 2, 3, 1, 394)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (192, 16, 1500.0000, 3, 2, 14, 210)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (193, 189, 1500.0000, 3, 2, 14, 57)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (194, 151, 1500.0000, 3, 2, 5, 132)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (195, 13, 1500.0000, 3, 2, 5, 813)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (196, 192, 1500.0000, 3, 2, 11, 632)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (197, 23, 1500.0000, 3, 2, 4, 271)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (198, 44, 1500.0000, 3, 2, 13, 842)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (199, 123, 1500.0000, 3, 2, 7, 196)
GO
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (200, 133, 1500.0000, 3, 2, 7, 902)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (201, 198, 1500.0000, 3, 2, 8, 322)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (202, 164, 1500.0000, 3, 2, 1, 589)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (203, 80, 1500.0000, 3, 2, 16, 28)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (204, 142, 1500.0000, 3, 2, 20, 704)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (205, 105, 1500.0000, 3, 2, 17, 143)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (206, 99, 1500.0000, 3, 2, 8, 191)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (207, 195, 1500.0000, 3, 2, 7, 542)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (208, 109, 1350.0000, 2, 3, 3, 583)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (209, 73, 1500.0000, 3, 2, 15, 667)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (210, 45, 1500.0000, 3, 2, 12, 455)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (211, 159, 1500.0000, 3, 2, 16, 707)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (212, 132, 1500.0000, 3, 2, 8, 29)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (213, 14, 1500.0000, 3, 2, 7, 83)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (214, 59, 1350.0000, 2, 3, 3, 591)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (215, 4, 1500.0000, 3, 2, 11, 340)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (216, 50, 1350.0000, 2, 3, 8, 142)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (217, 169, 1275.0000, 1, 1, 3, 113)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (218, 34, 1500.0000, 3, 2, 12, 442)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (219, 99, 1350.0000, 2, 3, 17, 922)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (220, 10, 1500.0000, 3, 2, 18, 135)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (221, 92, 1350.0000, 2, 3, 2, 349)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (222, 100, 1500.0000, 3, 2, 6, 637)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (223, 109, 1500.0000, 3, 2, 13, 365)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (224, 114, 1500.0000, 3, 2, 5, 366)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (225, 21, 1500.0000, 3, 2, 1, 98)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (226, 109, 1350.0000, 2, 3, 10, 875)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (227, 46, 1500.0000, 3, 2, 15, 48)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (228, 33, 1275.0000, 1, 1, 3, 608)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (229, 195, 1350.0000, 2, 3, 13, 309)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (230, 110, 1500.0000, 3, 2, 3, 345)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (231, 152, 1275.0000, 1, 1, 3, 259)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (232, 110, 1275.0000, 1, 1, 2, 712)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (233, 163, 1275.0000, 1, 1, 2, 1)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (234, 107, 1275.0000, 1, 1, 4, 370)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (235, 99, 1350.0000, 2, 3, 8, 204)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (236, 39, 1500.0000, 3, 2, 16, 180)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (237, 178, 1350.0000, 2, 3, 18, 378)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (238, 200, 1275.0000, 1, 1, 8, 368)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (239, 183, 1500.0000, 3, 2, 7, 816)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (240, 127, 1500.0000, 3, 2, 17, 552)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (241, 67, 1500.0000, 3, 2, 16, 126)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (242, 165, 1500.0000, 3, 2, 15, 240)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (243, 101, 1500.0000, 3, 2, 12, 235)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (244, 5, 1500.0000, 3, 2, 6, 912)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (245, 185, 1350.0000, 2, 3, 13, 67)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (246, 145, 1350.0000, 2, 3, 15, 316)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (247, 157, 1350.0000, 2, 3, 13, 587)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (248, 119, 1500.0000, 3, 2, 14, 722)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (249, 150, 1500.0000, 3, 2, 18, 144)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (250, 83, 1500.0000, 3, 2, 6, 877)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (251, 180, 1500.0000, 3, 2, 9, 893)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (252, 82, 1500.0000, 3, 2, 12, 458)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (253, 80, 1500.0000, 3, 2, 15, 21)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (254, 179, 1350.0000, 2, 3, 18, 523)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (255, 165, 1500.0000, 3, 2, 10, 90)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (256, 145, 1275.0000, 1, 1, 8, 623)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (257, 26, 1500.0000, 3, 2, 1, 891)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (258, 165, 1350.0000, 2, 3, 17, 814)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (259, 14, 1500.0000, 3, 2, 13, 203)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (260, 7, 1500.0000, 3, 2, 8, 66)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (261, 34, 1500.0000, 3, 2, 18, 501)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (262, 178, 1275.0000, 1, 1, 19, 63)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (263, 95, 1500.0000, 3, 2, 8, 234)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (264, 185, 1275.0000, 1, 1, 15, 87)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (265, 74, 1500.0000, 3, 2, 4, 803)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (266, 54, 1500.0000, 3, 2, 20, 14)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (267, 190, 1350.0000, 2, 3, 9, 588)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (268, 46, 1275.0000, 1, 1, 6, 449)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (269, 185, 1500.0000, 3, 2, 20, 817)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (270, 182, 1500.0000, 3, 2, 13, 284)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (271, 20, 1275.0000, 1, 1, 5, 297)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (272, 173, 1500.0000, 3, 2, 12, 262)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (273, 60, 1500.0000, 3, 2, 18, 197)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (274, 33, 1350.0000, 2, 3, 8, 549)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (275, 69, 1500.0000, 3, 2, 15, 278)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (276, 189, 1275.0000, 1, 1, 2, 355)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (277, 9, 1350.0000, 2, 3, 13, 435)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (278, 82, 1350.0000, 2, 3, 9, 894)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (279, 58, 1500.0000, 3, 2, 19, 13)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (280, 15, 1500.0000, 3, 2, 15, 367)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (281, 13, 1500.0000, 3, 2, 12, 649)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (282, 138, 1350.0000, 2, 3, 8, 728)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (283, 61, 1275.0000, 1, 1, 11, 544)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (284, 124, 1500.0000, 3, 2, 2, 416)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (285, 186, 1500.0000, 3, 2, 19, 466)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (286, 34, 1500.0000, 3, 2, 12, 495)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (287, 20, 1500.0000, 3, 2, 2, 189)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (288, 191, 1350.0000, 2, 3, 20, 836)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (289, 193, 1350.0000, 2, 3, 5, 254)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (290, 97, 1275.0000, 1, 1, 5, 287)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (291, 50, 1275.0000, 1, 1, 15, 538)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (292, 128, 1500.0000, 3, 2, 11, 839)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (293, 114, 1500.0000, 3, 2, 2, 5)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (294, 115, 1500.0000, 3, 2, 20, 205)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (295, 92, 1500.0000, 3, 2, 10, 307)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (296, 37, 1500.0000, 3, 2, 12, 418)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (297, 137, 1500.0000, 3, 2, 5, 306)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (298, 36, 1500.0000, 3, 2, 5, 46)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (299, 127, 1500.0000, 3, 2, 3, 256)
GO
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (300, 155, 1350.0000, 2, 3, 18, 768)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (301, 201, 1500.0000, NULL, NULL, 15, 1495)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (302, 201, 1500.0000, NULL, NULL, 15, 1535)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (303, 202, 1500.0000, NULL, NULL, 10, 1490)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (304, 202, 1500.0000, NULL, NULL, 10, 1730)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (305, 203, 1500.0000, NULL, NULL, 29, 1309)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (306, 203, 1500.0000, NULL, NULL, 29, 1349)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (307, 203, 1500.0000, NULL, NULL, 29, 1549)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (308, 203, 1500.0000, NULL, NULL, 29, 1589)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1309, 1204, 0.0000, NULL, NULL, 29, 1829)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1310, 1204, 0.0000, NULL, NULL, 29, 1869)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1311, 1205, 2500.0000, NULL, NULL, 16, 1376)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1312, 1206, 2500.0000, NULL, NULL, 3, 1123)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1313, 1206, 2500.0000, NULL, NULL, 3, 1403)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1314, 1207, 2500.0000, NULL, NULL, 15, 1415)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1315, 1208, 2500.0000, NULL, NULL, 9, 1329)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1316, 1209, 1500.0000, NULL, NULL, 10, 890)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1317, 1209, 1500.0000, NULL, NULL, 10, 1130)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1318, 1210, 2500.0000, NULL, NULL, 16, 1576)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1319, 1210, 2500.0000, NULL, NULL, 16, 1616)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1320, 1211, 2500.0000, NULL, NULL, 29, 1149)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1321, 1211, 2500.0000, NULL, NULL, 29, 1189)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1322, 1212, 2500.0000, NULL, NULL, 13, 1533)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1323, 1212, 2500.0000, NULL, NULL, 13, 1573)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1324, 1213, 2500.0000, NULL, NULL, 15, 1295)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1325, 1213, 2500.0000, NULL, NULL, 15, 1335)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1326, 1214, 2500.0000, NULL, NULL, 29, 1669)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1327, 1214, 2500.0000, NULL, NULL, 29, 1909)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1328, 1215, 2500.0000, NULL, NULL, 29, 1389)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1329, 1215, 2500.0000, NULL, NULL, 29, 1429)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1330, 1216, 2500.0000, NULL, NULL, 15, 615)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1331, 1217, 2500.0000, NULL, NULL, 29, 669)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1332, 1217, 2500.0000, NULL, NULL, 29, 869)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1333, 1217, 2500.0000, NULL, NULL, 29, 1069)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1334, 1218, 1500.0000, NULL, NULL, 14, 1294)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1335, 1218, 1500.0000, NULL, NULL, 14, 1334)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1336, 1219, 2500.0000, NULL, NULL, 15, 1575)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1337, 1219, 2500.0000, NULL, NULL, 15, 1775)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1338, 1219, 2500.0000, NULL, NULL, 15, 1815)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1339, 1220, 1500.0000, NULL, NULL, 39, 1879)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1340, 1220, 1500.0000, NULL, NULL, 39, 1919)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1341, 1221, 2500.0000, NULL, NULL, 9, 1049)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1342, 1221, 2500.0000, NULL, NULL, 9, 1089)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1343, 1221, 2500.0000, NULL, NULL, 9, 1289)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1344, 1221, 2500.0000, NULL, NULL, 9, 1369)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1345, 1221, 2500.0000, NULL, NULL, 9, 1409)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1346, 1222, 2500.0000, NULL, NULL, 29, 629)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1347, 1222, 2500.0000, NULL, NULL, 29, 709)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1348, 1222, 2500.0000, NULL, NULL, 29, 909)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1349, 1222, 2500.0000, NULL, NULL, 29, 949)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1350, 1223, 2500.0000, NULL, NULL, 16, 1096)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1351, 1223, 2500.0000, NULL, NULL, 16, 1136)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1352, 1223, 2500.0000, NULL, NULL, 16, 1176)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1353, 1224, 2500.0000, NULL, NULL, 29, 189)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1354, 1225, 1500.0000, NULL, NULL, 31, 591)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1355, 1225, 1500.0000, NULL, NULL, 31, 671)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1356, 1226, 2500.0000, NULL, NULL, 15, 695)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1357, 1226, 2500.0000, NULL, NULL, 15, 935)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1358, 1226, 2500.0000, NULL, NULL, 15, 1175)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1359, 1227, 2500.0000, NULL, NULL, 9, 689)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1360, 1227, 2500.0000, NULL, NULL, 9, 929)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1361, 1227, 2500.0000, NULL, NULL, 9, 1169)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1362, 1228, 2500.0000, NULL, NULL, 15, 1135)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1363, 1228, 2500.0000, NULL, NULL, 15, 1375)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1364, 1229, 2500.0000, NULL, NULL, 15, 775)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1365, 1230, 2500.0000, NULL, NULL, 9, 609)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1366, 1230, 2500.0000, NULL, NULL, 9, 849)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1367, 1231, 2500.0000, NULL, NULL, 9, 1449)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1368, 1231, 2500.0000, NULL, NULL, 9, 1689)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1369, 1232, 1500.0000, NULL, NULL, 10, 930)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1370, 1232, 1500.0000, NULL, NULL, 10, 1170)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1371, 1232, 1500.0000, NULL, NULL, 10, 1370)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1372, 1232, 1500.0000, NULL, NULL, 10, 1410)
INSERT [dbo].[detalles_factura] ([id_detalle], [id_factura], [monto], [id_descuento], [id_tipo_publico], [id_funcion], [id_butaca]) VALUES (1373, 1233, 2500.0000, NULL, NULL, 15, 1455)
SET IDENTITY_INSERT [dbo].[detalles_factura] OFF
SET IDENTITY_INSERT [dbo].[estado_cliente] ON 

INSERT [dbo].[estado_cliente] ([id_estado], [descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[estado_cliente] ([id_estado], [descripcion]) VALUES (2, N'Inactivo')
SET IDENTITY_INSERT [dbo].[estado_cliente] OFF
SET IDENTITY_INSERT [dbo].[estados] ON 

INSERT [dbo].[estados] ([id_estado], [descripcion]) VALUES (1, N'Libre')
INSERT [dbo].[estados] ([id_estado], [descripcion]) VALUES (2, N'Ocupada')
SET IDENTITY_INSERT [dbo].[estados] OFF
SET IDENTITY_INSERT [dbo].[facturas] ON 

INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1, N'virtual', 2, 1, CAST(N'2020-11-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (2, N'virtual', 2, 2, CAST(N'2017-02-03 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (3, N'presencial', 3, 3, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (4, N'virtual', 2, 4, CAST(N'2021-06-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (5, N'virtual', 2, 5, CAST(N'2015-05-10 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (6, N'presencial', 3, 6, CAST(N'2010-08-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (7, N'virtual', 1, 7, CAST(N'2022-11-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (8, N'virtual', 1, 8, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (9, N'presencial', 3, 9, CAST(N'2022-03-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (10, N'virtual', 2, 10, CAST(N'2016-11-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (11, N'virtual', 1, 11, CAST(N'2011-11-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (12, N'virtual', 2, 12, CAST(N'2014-06-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (13, N'presencial', 3, 13, CAST(N'2010-03-06 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (14, N'virtual', 1, 14, CAST(N'2018-05-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (15, N'virtual', 1, 15, CAST(N'2010-06-19 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (16, N'virtual', 2, 16, CAST(N'2017-09-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (17, N'virtual', 1, 17, CAST(N'2019-08-17 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (18, N'presencial', 3, 18, CAST(N'2010-08-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (19, N'presencial', 3, 19, CAST(N'2014-04-19 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (20, N'virtual', 1, 20, CAST(N'2020-09-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (21, N'presencial', 3, 21, CAST(N'2013-01-13 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (22, N'presencial', 3, 22, CAST(N'2021-03-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (23, N'presencial', 3, 23, CAST(N'2020-03-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (24, N'virtual', 2, 24, CAST(N'2016-11-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (25, N'virtual', 2, 25, CAST(N'2022-11-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (26, N'presencial', 3, 26, CAST(N'2020-11-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (27, N'presencial', 3, 27, CAST(N'2010-11-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (28, N'presencial', 3, 28, CAST(N'2014-09-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (29, N'virtual', 2, 29, CAST(N'2010-02-06 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (30, N'virtual', 2, 30, CAST(N'2012-07-25 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (31, N'virtual', 2, 31, CAST(N'2016-04-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (32, N'presencial', 3, 32, CAST(N'2013-08-25 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (33, N'virtual', 2, 33, CAST(N'2018-06-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (34, N'virtual', 1, 34, CAST(N'2012-05-02 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (35, N'virtual', 1, 35, CAST(N'2021-06-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (36, N'virtual', 1, 36, CAST(N'2010-06-29 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (37, N'virtual', 1, 37, CAST(N'2020-07-26 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (38, N'presencial', 3, 38, CAST(N'2013-06-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (39, N'virtual', 2, 39, CAST(N'2020-04-19 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (40, N'presencial', 3, 40, CAST(N'2022-10-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (41, N'presencial', 3, 41, CAST(N'2012-09-22 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (42, N'virtual', 2, 42, CAST(N'2017-08-10 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (43, N'virtual', 1, 43, CAST(N'2011-06-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (44, N'virtual', 1, 44, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (45, N'virtual', 2, 45, CAST(N'2019-09-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (46, N'virtual', 1, 46, CAST(N'2014-09-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (47, N'virtual', 1, 47, CAST(N'2010-07-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (48, N'virtual', 2, 48, CAST(N'2013-06-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (49, N'virtual', 1, 49, CAST(N'2011-04-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (50, N'virtual', 2, 50, CAST(N'2016-03-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (51, N'virtual', 2, 51, CAST(N'2017-10-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (52, N'virtual', 2, 52, CAST(N'2014-03-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (53, N'virtual', 1, 53, CAST(N'2014-05-22 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (54, N'virtual', 1, 54, CAST(N'2014-10-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (55, N'presencial', 3, 55, CAST(N'2022-04-08 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (56, N'virtual', 1, 56, CAST(N'2020-10-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (57, N'virtual', 2, 57, CAST(N'2013-08-12 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (58, N'presencial', 3, 58, CAST(N'2017-08-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (59, N'presencial', 3, 59, CAST(N'2017-07-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (60, N'virtual', 1, 60, CAST(N'2018-11-12 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (61, N'virtual', 2, 61, CAST(N'2013-08-24 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (62, N'virtual', 2, 62, CAST(N'2018-09-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (63, N'presencial', 3, 63, CAST(N'2020-01-05 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (64, N'virtual', 1, 64, CAST(N'2018-02-22 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (65, N'virtual', 2, 65, CAST(N'2017-03-17 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (66, N'virtual', 2, 66, CAST(N'2010-08-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (67, N'virtual', 1, 67, CAST(N'2015-07-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (68, N'presencial', 3, 68, CAST(N'2022-08-02 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (69, N'virtual', 1, 69, CAST(N'2020-05-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (70, N'presencial', 3, 70, CAST(N'2018-06-22 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (71, N'virtual', 2, 71, CAST(N'2013-06-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (72, N'virtual', 2, 72, CAST(N'2022-07-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (73, N'virtual', 1, 73, CAST(N'2014-03-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (74, N'virtual', 1, 74, CAST(N'2014-01-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (75, N'virtual', 2, 75, CAST(N'2010-11-12 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (76, N'virtual', 2, 76, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (77, N'presencial', 3, 77, CAST(N'2018-08-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (78, N'presencial', 3, 78, CAST(N'2010-01-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (79, N'virtual', 1, 79, CAST(N'2014-02-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (80, N'virtual', 2, 80, CAST(N'2021-06-10 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (81, N'virtual', 2, 81, CAST(N'2015-08-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (82, N'virtual', 1, 82, CAST(N'2014-05-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (83, N'virtual', 2, 83, CAST(N'2012-06-17 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (84, N'presencial', 3, 84, CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (85, N'presencial', 3, 85, CAST(N'2013-09-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (86, N'virtual', 1, 86, CAST(N'2019-02-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (87, N'virtual', 2, 87, CAST(N'2022-10-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (88, N'virtual', 2, 88, CAST(N'2010-06-22 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (89, N'presencial', 3, 89, CAST(N'2013-01-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (90, N'virtual', 2, 90, CAST(N'2022-03-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (91, N'virtual', 2, 91, CAST(N'2010-10-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (92, N'presencial', 3, 92, CAST(N'2021-04-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (93, N'presencial', 3, 93, CAST(N'2022-01-25 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (94, N'virtual', 1, 94, CAST(N'2016-01-06 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (95, N'virtual', 1, 95, CAST(N'2016-07-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (96, N'virtual', 2, 96, CAST(N'2021-11-13 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (97, N'virtual', 2, 97, CAST(N'2015-10-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (98, N'virtual', 2, 98, CAST(N'2012-06-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (99, N'virtual', 2, 99, CAST(N'2016-09-14 00:00:00.000' AS DateTime), 0.0000)
GO
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (100, N'virtual', 1, 100, CAST(N'2018-02-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (101, N'presencial', 3, 101, CAST(N'2019-09-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (102, N'virtual', 2, 102, CAST(N'2016-07-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (103, N'virtual', 2, 103, CAST(N'2010-04-02 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (104, N'virtual', 2, 104, CAST(N'2016-04-24 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (105, N'virtual', 1, 105, CAST(N'2011-05-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (106, N'virtual', 1, 106, CAST(N'2020-08-12 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (107, N'virtual', 2, 107, CAST(N'2021-10-13 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (108, N'virtual', 2, 108, CAST(N'2010-03-03 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (109, N'virtual', 1, 109, CAST(N'2014-02-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (110, N'virtual', 2, 110, CAST(N'2017-10-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (111, N'virtual', 1, 111, CAST(N'2014-10-02 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (112, N'virtual', 2, 112, CAST(N'2017-06-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (113, N'virtual', 2, 113, CAST(N'2017-10-13 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (114, N'presencial', 3, 114, CAST(N'2012-04-03 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (115, N'virtual', 2, 115, CAST(N'2022-09-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (116, N'virtual', 2, 116, CAST(N'2012-09-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (117, N'presencial', 3, 117, CAST(N'2021-05-05 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (118, N'virtual', 2, 118, CAST(N'2013-10-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (119, N'virtual', 2, 119, CAST(N'2011-11-12 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (120, N'presencial', 3, 120, CAST(N'2010-06-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (121, N'virtual', 1, 121, CAST(N'2017-10-16 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (122, N'virtual', 1, 122, CAST(N'2013-09-26 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (123, N'virtual', 1, 123, CAST(N'2020-10-25 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (124, N'presencial', 3, 124, CAST(N'2016-04-17 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (125, N'virtual', 1, 125, CAST(N'2020-07-05 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (126, N'virtual', 2, 126, CAST(N'2010-01-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (127, N'presencial', 3, 127, CAST(N'2020-09-08 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (128, N'presencial', 3, 128, CAST(N'2019-02-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (129, N'presencial', 3, 129, CAST(N'2016-06-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (130, N'virtual', 1, 130, CAST(N'2010-07-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (131, N'virtual', 2, 131, CAST(N'2013-07-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (132, N'presencial', 3, 132, CAST(N'2019-10-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (133, N'presencial', 3, 133, CAST(N'2012-04-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (134, N'presencial', 3, 134, CAST(N'2015-11-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (135, N'virtual', 2, 135, CAST(N'2019-11-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (136, N'virtual', 1, 136, CAST(N'2014-08-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (137, N'virtual', 1, 137, CAST(N'2012-05-18 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (138, N'virtual', 1, 138, CAST(N'2021-06-13 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (139, N'presencial', 3, 139, CAST(N'2016-03-06 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (140, N'virtual', 1, 140, CAST(N'2014-11-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (141, N'presencial', 3, 141, CAST(N'2019-01-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (142, N'virtual', 2, 142, CAST(N'2020-04-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (143, N'virtual', 2, 143, CAST(N'2021-01-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (144, N'virtual', 1, 144, CAST(N'2013-09-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (145, N'virtual', 2, 145, CAST(N'2012-11-08 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (146, N'presencial', 3, 146, CAST(N'2020-07-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (147, N'virtual', 2, 147, CAST(N'2020-05-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (148, N'virtual', 2, 148, CAST(N'2022-01-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (149, N'virtual', 1, 149, CAST(N'2018-01-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (150, N'virtual', 2, 150, CAST(N'2021-11-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (151, N'virtual', 1, 151, CAST(N'2015-01-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (152, N'virtual', 2, 152, CAST(N'2019-11-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (153, N'virtual', 1, 153, CAST(N'2013-03-05 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (154, N'virtual', 2, 154, CAST(N'2018-10-10 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (155, N'virtual', 1, 155, CAST(N'2010-07-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (156, N'virtual', 2, 156, CAST(N'2019-02-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (157, N'presencial', 3, 157, CAST(N'2017-06-10 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (158, N'presencial', 3, 158, CAST(N'2016-05-17 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (159, N'presencial', 3, 159, CAST(N'2013-10-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (160, N'presencial', 3, 160, CAST(N'2019-04-19 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (161, N'virtual', 1, 161, CAST(N'2010-08-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (162, N'presencial', 3, 162, CAST(N'2018-10-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (163, N'virtual', 1, 163, CAST(N'2018-11-26 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (164, N'virtual', 2, 164, CAST(N'2021-03-06 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (165, N'virtual', 2, 165, CAST(N'2017-02-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (166, N'virtual', 2, 166, CAST(N'2015-11-29 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (167, N'virtual', 2, 167, CAST(N'2022-01-19 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (168, N'presencial', 3, 168, CAST(N'2010-05-10 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (169, N'virtual', 2, 169, CAST(N'2011-03-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (170, N'virtual', 1, 170, CAST(N'2012-07-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (171, N'presencial', 3, 171, CAST(N'2022-05-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (172, N'presencial', 3, 172, CAST(N'2013-10-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (173, N'virtual', 2, 173, CAST(N'2012-01-04 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (174, N'virtual', 2, 174, CAST(N'2016-10-15 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (175, N'virtual', 2, 175, CAST(N'2020-04-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (176, N'presencial', 3, 176, CAST(N'2021-04-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (177, N'presencial', 3, 177, CAST(N'2011-11-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (178, N'presencial', 3, 178, CAST(N'2014-02-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (179, N'virtual', 2, 179, CAST(N'2019-06-13 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (180, N'virtual', 1, 180, CAST(N'2020-11-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (181, N'virtual', 1, 181, CAST(N'2019-11-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (182, N'presencial', 3, 182, CAST(N'2020-07-09 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (183, N'virtual', 2, 183, CAST(N'2014-03-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (184, N'presencial', 3, 184, CAST(N'2013-10-20 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (185, N'virtual', 1, 185, CAST(N'2022-04-26 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (186, N'virtual', 1, 186, CAST(N'2018-08-07 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (187, N'presencial', 3, 187, CAST(N'2010-05-14 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (188, N'virtual', 2, 188, CAST(N'2016-11-11 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (189, N'virtual', 1, 189, CAST(N'2020-09-24 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (190, N'presencial', 3, 190, CAST(N'2022-01-27 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (191, N'presencial', 3, 191, CAST(N'2018-05-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (192, N'virtual', 2, 192, CAST(N'2018-02-23 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (193, N'virtual', 1, 193, CAST(N'2011-03-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (194, N'virtual', 1, 194, CAST(N'2011-08-25 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (195, N'virtual', 2, 195, CAST(N'2015-10-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (196, N'presencial', 3, 196, CAST(N'2012-09-02 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (197, N'presencial', 3, 197, CAST(N'2015-09-17 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (198, N'virtual', 1, 198, CAST(N'2010-04-21 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (199, N'virtual', 2, 199, CAST(N'2011-02-07 00:00:00.000' AS DateTime), 0.0000)
GO
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (200, N'presencial', 3, 200, CAST(N'2011-04-02 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (201, NULL, 1, 201, CAST(N'2023-11-21 11:35:32.437' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (202, NULL, 2, 201, CAST(N'2023-11-22 21:19:58.540' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (203, NULL, 3, 201, CAST(N'2023-11-22 21:54:31.780' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1204, NULL, 1, 201, CAST(N'2023-11-25 16:06:48.813' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1205, NULL, 1, 201, CAST(N'2023-11-25 16:32:50.003' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1206, NULL, 1, 201, CAST(N'2023-11-25 16:33:05.713' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1207, NULL, 2, 201, CAST(N'2023-11-25 16:33:16.363' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1208, NULL, 1, 201, CAST(N'2023-11-25 17:06:31.410' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1209, NULL, 1, 201, CAST(N'2023-11-25 17:54:41.150' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1210, NULL, 1, 201, CAST(N'2023-11-25 17:54:56.627' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1211, NULL, 2, 201, CAST(N'2023-11-25 17:56:24.037' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1212, NULL, 1, 201, CAST(N'2023-11-25 18:12:16.133' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1213, NULL, 1, 201, CAST(N'2023-11-25 20:06:35.277' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1214, NULL, 1, 201, CAST(N'2023-11-25 20:08:34.683' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1215, NULL, 1, 201, CAST(N'2023-11-25 20:11:10.157' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1216, NULL, 1, 201, CAST(N'2023-11-25 20:16:38.940' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1217, NULL, 1, 201, CAST(N'2023-11-25 20:17:05.690' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1218, NULL, 1, 201, CAST(N'2023-11-25 21:02:27.593' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1219, NULL, 1, 201, CAST(N'2023-11-25 21:04:35.040' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1220, NULL, 1, 201, CAST(N'2023-11-25 21:22:16.297' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1221, NULL, 1, 201, CAST(N'2023-11-25 21:23:18.030' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1222, NULL, 1, 201, CAST(N'2023-11-25 21:24:31.950' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1223, NULL, 1, 201, CAST(N'2023-11-25 21:24:55.293' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1224, NULL, 1, 201, CAST(N'2023-11-25 21:26:35.703' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1225, NULL, 1, 201, CAST(N'2023-11-25 22:25:19.877' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1226, NULL, 1, 201, CAST(N'2023-11-25 22:33:44.917' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1227, NULL, 1, 201, CAST(N'2023-11-25 23:19:36.723' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1228, NULL, 1, 201, CAST(N'2023-11-25 23:20:30.410' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1229, NULL, 1, 201, CAST(N'2023-11-26 09:46:45.990' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1230, NULL, 1, 201, CAST(N'2023-11-27 00:53:20.527' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1231, NULL, 2, 205, CAST(N'2023-11-27 16:54:53.197' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1232, NULL, 3, 201, CAST(N'2023-11-27 17:27:32.967' AS DateTime), NULL)
INSERT [dbo].[facturas] ([id_factura], [tipo_venta], [id_medio_pago], [id_cliente], [fecha], [cargo_servico]) VALUES (1233, NULL, 1, 201, CAST(N'2023-11-27 17:43:39.063' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[facturas] OFF
SET IDENTITY_INSERT [dbo].[funciones] ON 

INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (1, 9, 8, CAST(N'13:30:00' AS Time), CAST(N'2010-09-01 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (2, 5, 16, CAST(N'20:30:00' AS Time), CAST(N'2011-02-02 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (3, 4, 10, CAST(N'13:30:00' AS Time), CAST(N'2021-07-12 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (4, 12, 15, CAST(N'20:30:00' AS Time), CAST(N'2021-12-23 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (5, 3, 7, CAST(N'11:30:00' AS Time), CAST(N'2022-03-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (6, 9, 11, CAST(N'20:30:00' AS Time), CAST(N'2015-05-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (7, 8, 2, CAST(N'20:30:00' AS Time), CAST(N'2023-04-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (8, 6, 5, CAST(N'20:30:00' AS Time), CAST(N'2011-05-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (9, 3, 9, CAST(N'11:30:00' AS Time), CAST(N'2010-07-15 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (10, 4, 1, CAST(N'11:30:00' AS Time), CAST(N'2017-02-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (11, 4, 7, CAST(N'20:30:00' AS Time), CAST(N'2023-02-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (12, 12, 11, CAST(N'11:30:00' AS Time), CAST(N'2017-07-18 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (13, 3, 3, CAST(N'13:30:00' AS Time), CAST(N'2020-05-10 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (14, 3, 16, CAST(N'13:30:00' AS Time), CAST(N'2014-08-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (15, 2, 3, CAST(N'13:30:00' AS Time), CAST(N'2016-04-13 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (16, 1, 10, CAST(N'13:30:00' AS Time), CAST(N'2020-10-25 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (17, 11, 17, CAST(N'20:30:00' AS Time), CAST(N'2011-01-16 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (18, 10, 2, CAST(N'16:00:00' AS Time), CAST(N'2016-10-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (19, 6, 14, CAST(N'16:00:00' AS Time), CAST(N'2012-02-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (20, 3, 2, CAST(N'13:30:00' AS Time), CAST(N'2021-08-18 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (21, 8, 5, CAST(N'16:00:00' AS Time), CAST(N'2014-11-27 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (22, 9, 9, CAST(N'13:30:00' AS Time), CAST(N'2015-03-08 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (23, 7, 4, CAST(N'11:30:00' AS Time), CAST(N'2015-01-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (24, 9, 15, CAST(N'20:30:00' AS Time), CAST(N'2018-09-09 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (25, 6, 3, CAST(N'16:00:00' AS Time), CAST(N'2010-02-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (26, 12, 17, CAST(N'11:30:00' AS Time), CAST(N'2016-04-23 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (27, 3, 2, CAST(N'16:00:00' AS Time), CAST(N'2015-04-04 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (28, 8, 6, CAST(N'20:30:00' AS Time), CAST(N'2023-01-26 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (29, 2, 2, CAST(N'20:30:00' AS Time), CAST(N'2017-09-09 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (30, 3, 13, CAST(N'13:30:00' AS Time), CAST(N'2010-06-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (31, 3, 6, CAST(N'16:00:00' AS Time), CAST(N'2014-11-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (32, 3, 15, CAST(N'11:30:00' AS Time), CAST(N'2022-03-04 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (33, 9, 10, CAST(N'11:30:00' AS Time), CAST(N'2021-05-24 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (34, 3, 3, CAST(N'16:00:00' AS Time), CAST(N'2013-08-08 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (35, 6, 13, CAST(N'13:30:00' AS Time), CAST(N'2019-11-12 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (36, 12, 17, CAST(N'13:30:00' AS Time), CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (37, 7, 9, CAST(N'20:30:00' AS Time), CAST(N'2021-01-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (38, 4, 3, CAST(N'16:00:00' AS Time), CAST(N'2010-02-12 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (39, 1, 16, CAST(N'20:30:00' AS Time), CAST(N'2018-12-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (40, 12, 12, CAST(N'13:30:00' AS Time), CAST(N'2016-07-09 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (41, 2, 9, CAST(N'23:30:00' AS Time), CAST(N'2020-03-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (42, 4, 10, CAST(N'12:00:00' AS Time), CAST(N'2020-03-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (43, 6, 12, CAST(N'19:45:00' AS Time), CAST(N'2020-03-04 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (44, 8, 13, CAST(N'14:30:00' AS Time), CAST(N'2020-03-01 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (45, 3, 1, CAST(N'22:30:00' AS Time), CAST(N'2020-03-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (46, 5, 4, CAST(N'16:35:00' AS Time), CAST(N'2020-08-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (47, 7, 6, CAST(N'20:00:00' AS Time), CAST(N'2020-11-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (48, 7, 7, CAST(N'12:20:00' AS Time), CAST(N'2020-07-02 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (49, 9, 8, CAST(N'13:30:00' AS Time), CAST(N'2020-02-10 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (50, 1, 17, CAST(N'11:45:00' AS Time), CAST(N'2020-06-09 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (51, 10, 11, CAST(N'17:30:00' AS Time), CAST(N'2020-12-04 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (52, 8, 4, CAST(N'21:30:00' AS Time), CAST(N'2020-07-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (53, 1, 1, CAST(N'22:30:00' AS Time), CAST(N'2020-05-25 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (54, 5, 19, CAST(N'21:30:00' AS Time), CAST(N'2021-07-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (55, 7, 1, CAST(N'19:45:00' AS Time), CAST(N'2021-11-01 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (56, 7, 2, CAST(N'17:30:00' AS Time), CAST(N'2022-07-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (57, 9, 14, CAST(N'15:00:00' AS Time), CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (58, 11, 14, CAST(N'15:00:00' AS Time), CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (59, 5, 5, CAST(N'14:00:00' AS Time), CAST(N'2022-10-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (60, 3, 10, CAST(N'14:00:00' AS Time), CAST(N'2022-10-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (61, 5, 9, CAST(N'17:00:00' AS Time), CAST(N'2022-09-10 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (62, 1, 10, CAST(N'20:00:00' AS Time), CAST(N'2022-09-15 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (63, 2, 12, CAST(N'13:00:00' AS Time), CAST(N'2022-10-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (64, 4, 2, CAST(N'14:00:00' AS Time), CAST(N'2022-10-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (65, 6, 5, CAST(N'18:00:00' AS Time), CAST(N'2022-03-13 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (66, 8, 13, CAST(N'16:30:00' AS Time), CAST(N'2022-11-20 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (67, 11, 10, CAST(N'13:30:00' AS Time), CAST(N'2022-12-02 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (68, 9, 1, CAST(N'14:00:00' AS Time), CAST(N'2022-08-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (69, 7, 4, CAST(N'14:00:00' AS Time), CAST(N'2022-10-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (70, 5, 15, CAST(N'08:30:00' AS Time), CAST(N'2022-04-22 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (71, 1, 1, CAST(N'16:30:00' AS Time), CAST(N'2022-11-07 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (72, 2, 4, CAST(N'22:00:00' AS Time), CAST(N'2022-10-09 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (73, 4, 6, CAST(N'21:00:00' AS Time), CAST(N'2022-01-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (74, 8, 11, CAST(N'18:45:00' AS Time), CAST(N'2022-05-03 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (75, 12, 7, CAST(N'14:00:00' AS Time), CAST(N'2022-10-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (76, 3, 1, CAST(N'14:00:00' AS Time), CAST(N'2023-06-02 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (77, 6, 11, CAST(N'19:45:00' AS Time), CAST(N'2024-03-12 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (78, 1, 9, CAST(N'12:45:00' AS Time), CAST(N'2024-04-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (79, 4, 12, CAST(N'22:45:00' AS Time), CAST(N'2024-06-30 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (80, 6, 14, CAST(N'16:45:00' AS Time), CAST(N'2024-01-04 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (81, 6, 19, CAST(N'17:45:00' AS Time), CAST(N'2024-12-16 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (82, 8, 15, CAST(N'13:45:00' AS Time), CAST(N'2024-09-07 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (83, 12, 12, CAST(N'17:45:00' AS Time), CAST(N'2024-10-22 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (84, 9, 13, CAST(N'11:45:00' AS Time), CAST(N'2025-05-24 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (85, 3, 8, CAST(N'23:45:00' AS Time), CAST(N'2025-03-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (86, 6, 2, CAST(N'18:45:00' AS Time), CAST(N'2025-07-25 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (87, 2, 12, CAST(N'19:45:00' AS Time), CAST(N'2025-11-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (88, 10, 20, CAST(N'10:00:00' AS Time), CAST(N'2023-01-07 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (89, 9, 11, CAST(N'11:00:00' AS Time), CAST(N'2023-02-01 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (90, 8, 12, CAST(N'13:00:00' AS Time), CAST(N'2026-03-02 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (91, 8, 14, CAST(N'12:00:00' AS Time), CAST(N'2023-03-03 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (92, 7, 1, CAST(N'12:00:00' AS Time), CAST(N'2024-04-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (93, 6, 2, CAST(N'14:00:00' AS Time), CAST(N'2023-05-23 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (94, 5, 2, CAST(N'14:00:00' AS Time), CAST(N'2024-06-22 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (95, 4, 3, CAST(N'15:00:00' AS Time), CAST(N'2023-07-07 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (96, 3, 4, CAST(N'15:00:00' AS Time), CAST(N'2023-04-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (97, 1, 13, CAST(N'17:10:00' AS Time), CAST(N'2023-03-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (98, 2, 5, CAST(N'18:00:00' AS Time), CAST(N'2024-05-04 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (99, 3, 16, CAST(N'18:27:00' AS Time), CAST(N'2023-01-19 00:00:00.000' AS DateTime), 1500.0000)
GO
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (100, 2, 7, CAST(N'13:30:00' AS Time), CAST(N'2023-03-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (101, 4, 8, CAST(N'13:40:00' AS Time), CAST(N'2023-02-20 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (102, 5, 9, CAST(N'11:00:00' AS Time), CAST(N'2023-11-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (103, 6, 12, CAST(N'14:10:00' AS Time), CAST(N'2023-08-30 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (104, 1, 20, CAST(N'12:00:00' AS Time), CAST(N'2023-02-27 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (105, 1, 11, CAST(N'13:00:00' AS Time), CAST(N'2024-06-26 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (106, 1, 12, CAST(N'14:00:00' AS Time), CAST(N'2024-03-25 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (107, 6, 14, CAST(N'15:00:00' AS Time), CAST(N'2023-09-24 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (108, 12, 20, CAST(N'16:00:00' AS Time), CAST(N'2023-11-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (109, 2, 16, CAST(N'19:00:00' AS Time), CAST(N'2024-02-23 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (110, 9, 20, CAST(N'13:00:00' AS Time), CAST(N'2024-07-22 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (111, 11, 10, CAST(N'14:00:00' AS Time), CAST(N'2023-10-07 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (112, 12, 20, CAST(N'10:00:00' AS Time), CAST(N'2024-04-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (113, 1, 11, CAST(N'11:10:00' AS Time), CAST(N'2024-03-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (114, 2, 20, CAST(N'15:00:00' AS Time), CAST(N'2024-01-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (115, 3, 13, CAST(N'14:27:00' AS Time), CAST(N'2023-01-19 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (116, 2, 20, CAST(N'17:30:00' AS Time), CAST(N'2025-06-28 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (117, 7, 14, CAST(N'19:00:00' AS Time), CAST(N'2024-02-20 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (118, 3, 20, CAST(N'17:00:00' AS Time), CAST(N'2025-11-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (119, 8, 12, CAST(N'14:10:00' AS Time), CAST(N'2023-08-30 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (120, 3, 19, CAST(N'12:00:00' AS Time), CAST(N'2024-03-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (121, 4, 18, CAST(N'13:00:00' AS Time), CAST(N'2024-02-01 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (122, 5, 17, CAST(N'11:30:00' AS Time), CAST(N'2024-03-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (123, 5, 13, CAST(N'15:30:00' AS Time), CAST(N'2023-11-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (124, 4, 16, CAST(N'16:00:00' AS Time), CAST(N'2023-12-01 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (125, 3, 15, CAST(N'16:20:00' AS Time), CAST(N'2024-04-12 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (126, 2, 20, CAST(N'11:00:00' AS Time), CAST(N'2024-12-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (127, 10, 12, CAST(N'19:00:00' AS Time), CAST(N'2023-10-05 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (128, 12, 20, CAST(N'10:00:00' AS Time), CAST(N'2024-05-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (129, 1, 11, CAST(N'11:10:00' AS Time), CAST(N'2026-07-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (130, 2, 10, CAST(N'15:00:00' AS Time), CAST(N'2024-06-07 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (131, 3, 13, CAST(N'14:25:00' AS Time), CAST(N'2023-08-06 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (132, 2, 20, CAST(N'17:30:00' AS Time), CAST(N'2025-09-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (133, 7, 14, CAST(N'19:12:00' AS Time), CAST(N'2024-10-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (134, 3, 20, CAST(N'17:05:00' AS Time), CAST(N'2025-12-11 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (135, 8, 1, CAST(N'10:10:00' AS Time), CAST(N'2023-09-30 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (136, 1, 2, CAST(N'12:30:00' AS Time), CAST(N'2024-01-22 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (137, 2, 4, CAST(N'10:00:00' AS Time), CAST(N'2024-05-18 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (138, 3, 3, CAST(N'14:35:00' AS Time), CAST(N'2025-03-14 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (139, 4, 5, CAST(N'19:30:00' AS Time), CAST(N'2025-12-27 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (140, 5, 8, CAST(N'16:30:00' AS Time), CAST(N'2024-11-22 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (141, 6, 6, CAST(N'17:00:00' AS Time), CAST(N'2024-03-17 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (142, 7, 7, CAST(N'12:00:00' AS Time), CAST(N'2024-04-29 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (143, 8, 1, CAST(N'17:00:00' AS Time), CAST(N'2026-10-31 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (144, 9, 11, CAST(N'18:00:00' AS Time), CAST(N'2024-01-21 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (145, 10, 9, CAST(N'22:00:00' AS Time), CAST(N'2026-10-24 00:00:00.000' AS DateTime), 1500.0000)
INSERT [dbo].[funciones] ([id_funcion], [id_pelicula], [id_sala], [horario], [fecha], [precio]) VALUES (146, 11, 12, CAST(N'23:00:00' AS Time), CAST(N'2024-07-11 00:00:00.000' AS DateTime), 1500.0000)
SET IDENTITY_INSERT [dbo].[funciones] OFF
SET IDENTITY_INSERT [dbo].[idiomas] ON 

INSERT [dbo].[idiomas] ([id_idioma], [descripcion]) VALUES (1, N'Ingles')
INSERT [dbo].[idiomas] ([id_idioma], [descripcion]) VALUES (2, N'Español')
SET IDENTITY_INSERT [dbo].[idiomas] OFF
SET IDENTITY_INSERT [dbo].[medios_pago] ON 

INSERT [dbo].[medios_pago] ([id_medio_pago], [descripcion]) VALUES (1, N'debito')
INSERT [dbo].[medios_pago] ([id_medio_pago], [descripcion]) VALUES (2, N'credito')
INSERT [dbo].[medios_pago] ([id_medio_pago], [descripcion]) VALUES (3, N'efectivo')
SET IDENTITY_INSERT [dbo].[medios_pago] OFF
SET IDENTITY_INSERT [dbo].[peliculas] ON 

INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (1, N'Trolls 3', N'Infantil', 140, 1, N'Juan Gonzales', CAST(N'2023-08-18 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (2, N'La Monja 2', N'Terror', 93, 1, N'Santiago Morales', CAST(N'2023-02-15 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (3, N'Spider-Man: Across the Spider-Verse', N'Super Heroes', 83, 2, N'Bruno Sandler', CAST(N'2023-11-12 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (4, N'Los Juegos del Hambre', N'Acción', 92, 1, N'Bob Es Ponja', CAST(N'2023-01-24 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (5, N'Shang-Chi y la Leyenda de los Diez Anillos', N'Super Heroes', 170, 2, N'Lucas Morales', CAST(N'2013-02-18 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (6, N'Un Lugar Tranquilo Parte II', N'Terror', 95, 1, N'Isabel Gomez', CAST(N'2019-04-06 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (7, N'sdfsdfsdfdsfsdf', N'Super Heroehgjghj', 5656, 2, N'Carlos Sanchezlk,7', CAST(N'2020-12-22 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (8, N'asd', N'Super Hfsderoes', 150454, 1, N'Laura sdfFernandez', CAST(N'2018-03-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (9, N'The Flash', N'Super Heroes', 130, 2, N'Diego Perez', CAST(N'2019-10-09 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (10, N'Venom: Que Hayan Carnicería', N'Super Heroes', 100, 1, N'Silvia Ruiz', CAST(N'2015-06-17 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (11, N'Gritos', N'Terror', 120, 2, N'Raul Garcia', CAST(N'2013-01-28 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[peliculas] ([id_pelicula], [nombre], [categoria], [duracion], [id_idioma], [director], [fec_estreno], [id_estado]) VALUES (12, N'El Hombre del Rey', N'Aventura', 160, 1, N'Julia Hernandez', CAST(N'2015-09-05 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[peliculas] OFF
SET IDENTITY_INSERT [dbo].[reservas] ON 

INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (1, 3, 469, CAST(N'2015-07-04 00:00:00.000' AS DateTime), CAST(N'2023-08-04 00:00:00.000' AS DateTime), 55035)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (2, 22, 783, CAST(N'2021-05-14 00:00:00.000' AS DateTime), CAST(N'2023-06-14 00:00:00.000' AS DateTime), 57281)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (3, 39, 759, CAST(N'2013-11-06 00:00:00.000' AS DateTime), CAST(N'2023-12-06 00:00:00.000' AS DateTime), 55234)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (4, 27, 730, CAST(N'2016-06-14 00:00:00.000' AS DateTime), CAST(N'2023-07-14 00:00:00.000' AS DateTime), 77515)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (5, 24, 424, CAST(N'2014-04-23 00:00:00.000' AS DateTime), CAST(N'2023-05-23 00:00:00.000' AS DateTime), 37289)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (6, 16, 613, CAST(N'2016-06-15 00:00:00.000' AS DateTime), CAST(N'2023-07-15 00:00:00.000' AS DateTime), 38107)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (7, 6, 438, CAST(N'2016-10-18 00:00:00.000' AS DateTime), CAST(N'2023-11-18 00:00:00.000' AS DateTime), 96768)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (8, 19, 1299, CAST(N'2016-02-24 00:00:00.000' AS DateTime), CAST(N'2023-03-24 00:00:00.000' AS DateTime), 23909)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (9, 26, 1407, CAST(N'2023-06-22 00:00:00.000' AS DateTime), CAST(N'2023-07-22 00:00:00.000' AS DateTime), 48346)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (10, 26, 960, CAST(N'2020-08-08 00:00:00.000' AS DateTime), CAST(N'2023-09-08 00:00:00.000' AS DateTime), 45030)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (11, 34, 1045, CAST(N'2018-05-24 00:00:00.000' AS DateTime), CAST(N'2023-06-24 00:00:00.000' AS DateTime), 41627)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (12, 16, 208, CAST(N'2012-06-27 00:00:00.000' AS DateTime), CAST(N'2023-07-27 00:00:00.000' AS DateTime), 77687)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (13, 6, 174, CAST(N'2019-06-06 00:00:00.000' AS DateTime), CAST(N'2023-07-06 00:00:00.000' AS DateTime), 81349)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (14, 16, 357, CAST(N'2011-10-12 00:00:00.000' AS DateTime), CAST(N'2023-11-12 00:00:00.000' AS DateTime), 12573)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (15, 27, 499, CAST(N'2011-09-22 00:00:00.000' AS DateTime), CAST(N'2023-10-22 00:00:00.000' AS DateTime), 36639)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (16, 31, 1688, CAST(N'2019-03-12 00:00:00.000' AS DateTime), CAST(N'2023-04-12 00:00:00.000' AS DateTime), 62015)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (17, 19, 1119, CAST(N'2020-09-26 00:00:00.000' AS DateTime), CAST(N'2023-10-26 00:00:00.000' AS DateTime), 23541)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (18, 24, 685, CAST(N'2014-01-19 00:00:00.000' AS DateTime), CAST(N'2023-02-19 00:00:00.000' AS DateTime), 87305)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (19, 15, 1789, CAST(N'2015-03-08 00:00:00.000' AS DateTime), CAST(N'2023-04-08 00:00:00.000' AS DateTime), 97210)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (20, 6, 1858, CAST(N'2021-07-02 00:00:00.000' AS DateTime), CAST(N'2023-08-02 00:00:00.000' AS DateTime), 39286)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (21, 16, 515, CAST(N'2020-11-03 00:00:00.000' AS DateTime), CAST(N'2023-12-03 00:00:00.000' AS DateTime), 31583)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (22, 37, 137, CAST(N'2019-09-02 00:00:00.000' AS DateTime), CAST(N'2023-10-02 00:00:00.000' AS DateTime), 65812)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (23, 30, 1240, CAST(N'2018-01-02 00:00:00.000' AS DateTime), CAST(N'2023-02-02 00:00:00.000' AS DateTime), 36331)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (24, 26, 541, CAST(N'2016-10-05 00:00:00.000' AS DateTime), CAST(N'2023-11-05 00:00:00.000' AS DateTime), 62224)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (25, 10, 1055, CAST(N'2018-01-23 00:00:00.000' AS DateTime), CAST(N'2023-02-23 00:00:00.000' AS DateTime), 16250)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (26, 12, 166, CAST(N'2019-11-04 00:00:00.000' AS DateTime), CAST(N'2023-12-04 00:00:00.000' AS DateTime), 80112)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (27, 15, 1441, CAST(N'2022-11-13 00:00:00.000' AS DateTime), CAST(N'2023-12-13 00:00:00.000' AS DateTime), 15826)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (28, 12, 800, CAST(N'2022-05-22 00:00:00.000' AS DateTime), CAST(N'2023-06-22 00:00:00.000' AS DateTime), 71012)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (29, 22, 386, CAST(N'2019-04-20 00:00:00.000' AS DateTime), CAST(N'2023-05-20 00:00:00.000' AS DateTime), 79946)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (30, 10, 1779, CAST(N'2023-04-13 00:00:00.000' AS DateTime), CAST(N'2023-05-13 00:00:00.000' AS DateTime), 89173)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (31, 15, 1165, CAST(N'2011-12-12 00:00:00.000' AS DateTime), CAST(N'2012-01-12 00:00:00.000' AS DateTime), 82586)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (32, 26, 626, CAST(N'2015-04-23 00:00:00.000' AS DateTime), CAST(N'2023-05-23 00:00:00.000' AS DateTime), 31627)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (33, 40, 1691, CAST(N'2012-03-20 00:00:00.000' AS DateTime), CAST(N'2023-04-20 00:00:00.000' AS DateTime), 38330)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (34, 34, 1782, CAST(N'2012-04-01 00:00:00.000' AS DateTime), CAST(N'2023-05-01 00:00:00.000' AS DateTime), 55248)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (35, 9, 1554, CAST(N'2021-05-08 00:00:00.000' AS DateTime), CAST(N'2023-06-08 00:00:00.000' AS DateTime), 16500)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (36, 36, 1465, CAST(N'2018-03-19 00:00:00.000' AS DateTime), CAST(N'2023-04-19 00:00:00.000' AS DateTime), 65283)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (37, 22, 1896, CAST(N'2020-04-03 00:00:00.000' AS DateTime), CAST(N'2023-05-03 00:00:00.000' AS DateTime), 48577)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (38, 39, 634, CAST(N'2020-06-16 00:00:00.000' AS DateTime), CAST(N'2023-07-16 00:00:00.000' AS DateTime), 54694)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (39, 32, 1262, CAST(N'2022-04-01 00:00:00.000' AS DateTime), CAST(N'2023-05-01 00:00:00.000' AS DateTime), 48538)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (40, 1, 979, CAST(N'2023-07-17 00:00:00.000' AS DateTime), CAST(N'2023-08-17 00:00:00.000' AS DateTime), 50140)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (41, 10, 347, CAST(N'2014-09-02 00:00:00.000' AS DateTime), CAST(N'2023-10-02 00:00:00.000' AS DateTime), 43537)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (42, 8, 1488, CAST(N'2010-10-07 00:00:00.000' AS DateTime), CAST(N'2023-11-07 00:00:00.000' AS DateTime), 96502)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (43, 30, 20, CAST(N'2016-07-28 00:00:00.000' AS DateTime), CAST(N'2023-08-28 00:00:00.000' AS DateTime), 90646)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (44, 19, 1337, CAST(N'2016-05-19 00:00:00.000' AS DateTime), CAST(N'2023-06-19 00:00:00.000' AS DateTime), 43693)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (45, 31, 948, CAST(N'2017-06-16 00:00:00.000' AS DateTime), CAST(N'2023-07-16 00:00:00.000' AS DateTime), 56686)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (46, 20, 303, CAST(N'2020-12-16 00:00:00.000' AS DateTime), CAST(N'2021-12-16 00:00:00.000' AS DateTime), 26784)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (47, 32, 1117, CAST(N'2017-03-14 00:00:00.000' AS DateTime), CAST(N'2023-04-14 00:00:00.000' AS DateTime), 77815)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (48, 4, 1482, CAST(N'2015-07-07 00:00:00.000' AS DateTime), CAST(N'2023-08-07 00:00:00.000' AS DateTime), 47892)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (49, 34, 547, CAST(N'2014-07-10 00:00:00.000' AS DateTime), CAST(N'2023-08-10 00:00:00.000' AS DateTime), 63360)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (50, 7, 1544, CAST(N'2018-10-13 00:00:00.000' AS DateTime), CAST(N'2023-11-13 00:00:00.000' AS DateTime), 64640)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (51, 18, 1023, CAST(N'2023-01-05 00:00:00.000' AS DateTime), CAST(N'2023-02-05 00:00:00.000' AS DateTime), 40039)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (52, 9, 1786, CAST(N'2017-05-25 00:00:00.000' AS DateTime), CAST(N'2023-06-25 00:00:00.000' AS DateTime), 38376)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (53, 29, 1760, CAST(N'2021-09-18 00:00:00.000' AS DateTime), CAST(N'2023-10-18 00:00:00.000' AS DateTime), 15036)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (54, 10, 97, CAST(N'2019-03-10 00:00:00.000' AS DateTime), CAST(N'2023-04-10 00:00:00.000' AS DateTime), 44690)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (55, 32, 826, CAST(N'2015-04-01 00:00:00.000' AS DateTime), CAST(N'2023-05-01 00:00:00.000' AS DateTime), 49605)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (56, 31, 1689, CAST(N'2016-10-21 00:00:00.000' AS DateTime), CAST(N'2023-11-21 00:00:00.000' AS DateTime), 53986)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (57, 28, 1079, CAST(N'2011-06-14 00:00:00.000' AS DateTime), CAST(N'2023-07-14 00:00:00.000' AS DateTime), 98849)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (58, 19, 295, CAST(N'2022-09-12 00:00:00.000' AS DateTime), CAST(N'2023-10-12 00:00:00.000' AS DateTime), 62677)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (59, 29, 216, CAST(N'2021-11-28 00:00:00.000' AS DateTime), CAST(N'2023-12-28 00:00:00.000' AS DateTime), 65087)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (60, 38, 951, CAST(N'2022-02-26 00:00:00.000' AS DateTime), CAST(N'2023-03-26 00:00:00.000' AS DateTime), 78441)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (61, 23, 1642, CAST(N'2016-04-22 00:00:00.000' AS DateTime), CAST(N'2023-05-22 00:00:00.000' AS DateTime), 42376)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (62, 6, 1664, CAST(N'2018-12-14 00:00:00.000' AS DateTime), CAST(N'2019-12-14 00:00:00.000' AS DateTime), 17419)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (63, 25, 2, CAST(N'2019-09-20 00:00:00.000' AS DateTime), CAST(N'2023-10-20 00:00:00.000' AS DateTime), 88013)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (64, 13, 1288, CAST(N'2020-06-02 00:00:00.000' AS DateTime), CAST(N'2023-07-02 00:00:00.000' AS DateTime), 91731)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (65, 30, 1596, CAST(N'2022-04-23 00:00:00.000' AS DateTime), CAST(N'2023-05-23 00:00:00.000' AS DateTime), 71279)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (66, 39, 1510, CAST(N'2016-09-24 00:00:00.000' AS DateTime), CAST(N'2023-10-24 00:00:00.000' AS DateTime), 63408)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (67, 1, 317, CAST(N'2023-07-17 00:00:00.000' AS DateTime), CAST(N'2023-08-17 00:00:00.000' AS DateTime), 47151)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (68, 36, 1315, CAST(N'2014-11-24 00:00:00.000' AS DateTime), CAST(N'2023-12-24 00:00:00.000' AS DateTime), 24029)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (69, 2, 927, CAST(N'2015-02-20 00:00:00.000' AS DateTime), CAST(N'2023-03-20 00:00:00.000' AS DateTime), 70920)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (70, 6, 70, CAST(N'2022-12-19 00:00:00.000' AS DateTime), CAST(N'2023-12-19 00:00:00.000' AS DateTime), 53308)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (71, 1, 1216, CAST(N'2018-08-13 00:00:00.000' AS DateTime), CAST(N'2023-09-13 00:00:00.000' AS DateTime), 27419)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (72, 38, 1254, CAST(N'2012-10-21 00:00:00.000' AS DateTime), CAST(N'2023-11-21 00:00:00.000' AS DateTime), 21383)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (73, 34, 258, CAST(N'2021-08-07 00:00:00.000' AS DateTime), CAST(N'2023-09-07 00:00:00.000' AS DateTime), 79799)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (74, 1, 668, CAST(N'2013-05-13 00:00:00.000' AS DateTime), CAST(N'2023-06-13 00:00:00.000' AS DateTime), 57347)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (75, 32, 682, CAST(N'2010-09-08 00:00:00.000' AS DateTime), CAST(N'2023-10-08 00:00:00.000' AS DateTime), 65420)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (76, 5, 1189, CAST(N'2014-12-06 00:00:00.000' AS DateTime), CAST(N'2015-12-06 00:00:00.000' AS DateTime), 21916)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (77, 13, 29, CAST(N'2022-01-14 00:00:00.000' AS DateTime), CAST(N'2023-02-14 00:00:00.000' AS DateTime), 30297)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (78, 34, 1298, CAST(N'2018-03-01 00:00:00.000' AS DateTime), CAST(N'2023-04-01 00:00:00.000' AS DateTime), 19003)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (79, 19, 266, CAST(N'2023-02-07 00:00:00.000' AS DateTime), CAST(N'2023-03-07 00:00:00.000' AS DateTime), 95662)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (80, 6, 1733, CAST(N'2012-02-23 00:00:00.000' AS DateTime), CAST(N'2023-03-23 00:00:00.000' AS DateTime), 11258)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (81, 12, 1402, CAST(N'2022-06-24 00:00:00.000' AS DateTime), CAST(N'2023-07-24 00:00:00.000' AS DateTime), 46172)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (82, 8, 527, CAST(N'2020-06-18 00:00:00.000' AS DateTime), CAST(N'2023-07-18 00:00:00.000' AS DateTime), 34297)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (83, 1, 1256, CAST(N'2012-04-23 00:00:00.000' AS DateTime), CAST(N'2023-05-23 00:00:00.000' AS DateTime), 53734)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (84, 27, 971, CAST(N'2010-08-11 00:00:00.000' AS DateTime), CAST(N'2023-09-11 00:00:00.000' AS DateTime), 74371)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (85, 25, 1328, CAST(N'2018-02-21 00:00:00.000' AS DateTime), CAST(N'2023-03-21 00:00:00.000' AS DateTime), 76045)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (86, 1, 1297, CAST(N'2010-07-19 00:00:00.000' AS DateTime), CAST(N'2023-08-19 00:00:00.000' AS DateTime), 55583)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (87, 20, 1073, CAST(N'2015-04-07 00:00:00.000' AS DateTime), CAST(N'2023-05-07 00:00:00.000' AS DateTime), 55664)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (88, 21, 1084, CAST(N'2013-09-07 00:00:00.000' AS DateTime), CAST(N'2023-10-07 00:00:00.000' AS DateTime), 94625)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (89, 2, 1320, CAST(N'2017-04-05 00:00:00.000' AS DateTime), CAST(N'2023-05-05 00:00:00.000' AS DateTime), 18790)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (90, 1, 798, CAST(N'2020-11-13 00:00:00.000' AS DateTime), CAST(N'2023-12-13 00:00:00.000' AS DateTime), 11656)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (91, 5, 21, CAST(N'2015-09-08 00:00:00.000' AS DateTime), CAST(N'2023-10-08 00:00:00.000' AS DateTime), 22958)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (92, 28, 1724, CAST(N'2012-05-27 00:00:00.000' AS DateTime), CAST(N'2023-06-27 00:00:00.000' AS DateTime), 67870)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (93, 39, 91, CAST(N'2010-11-19 00:00:00.000' AS DateTime), CAST(N'2023-12-19 00:00:00.000' AS DateTime), 44698)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (94, 27, 511, CAST(N'2017-07-04 00:00:00.000' AS DateTime), CAST(N'2023-08-04 00:00:00.000' AS DateTime), 51213)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (95, 20, 934, CAST(N'2013-08-06 00:00:00.000' AS DateTime), CAST(N'2023-09-06 00:00:00.000' AS DateTime), 56805)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (96, 22, 983, CAST(N'2016-09-27 00:00:00.000' AS DateTime), CAST(N'2023-10-27 00:00:00.000' AS DateTime), 57549)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (97, 17, 25, CAST(N'2022-03-15 00:00:00.000' AS DateTime), CAST(N'2023-04-15 00:00:00.000' AS DateTime), 27701)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (98, 40, 142, CAST(N'2017-10-28 00:00:00.000' AS DateTime), CAST(N'2023-11-28 00:00:00.000' AS DateTime), 53154)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (99, 3, 962, CAST(N'2013-07-07 00:00:00.000' AS DateTime), CAST(N'2023-08-07 00:00:00.000' AS DateTime), 73587)
GO
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (100, 5, 119, CAST(N'2019-05-06 00:00:00.000' AS DateTime), CAST(N'2023-06-06 00:00:00.000' AS DateTime), 32031)
INSERT [dbo].[reservas] ([id_reserva], [id_funcion], [id_butaca], [fecha_reserva], [fecha_vencimiento], [codigo_reserva]) VALUES (101, 11, 809, CAST(N'2010-04-02 00:00:00.000' AS DateTime), CAST(N'2023-05-02 00:00:00.000' AS DateTime), 21981)
SET IDENTITY_INSERT [dbo].[reservas] OFF
SET IDENTITY_INSERT [dbo].[salas] ON 

INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (1, 1, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (2, 2, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (3, 3, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (4, 4, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (5, 5, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (6, 6, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (7, 7, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (8, 8, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (9, 9, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (10, 10, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (11, 11, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (12, 12, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (13, 13, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (14, 14, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (15, 15, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (16, 16, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (17, 17, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (18, 18, 48, 2)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (19, 19, 48, 1)
INSERT [dbo].[salas] ([id_sala], [numero_sala], [cantidad_butacas], [id_tipo_sala]) VALUES (20, 20, 48, 2)
SET IDENTITY_INSERT [dbo].[salas] OFF
SET IDENTITY_INSERT [dbo].[tipos_publico] ON 

INSERT [dbo].[tipos_publico] ([id_publico], [descripcion]) VALUES (1, N'Menor')
INSERT [dbo].[tipos_publico] ([id_publico], [descripcion]) VALUES (2, N'Adulto')
INSERT [dbo].[tipos_publico] ([id_publico], [descripcion]) VALUES (3, N'Jubilado')
SET IDENTITY_INSERT [dbo].[tipos_publico] OFF
SET IDENTITY_INSERT [dbo].[tipos_sala] ON 

INSERT [dbo].[tipos_sala] ([id_tipo_sala], [descripcion]) VALUES (1, N'2D')
INSERT [dbo].[tipos_sala] ([id_tipo_sala], [descripcion]) VALUES (2, N'3D')
SET IDENTITY_INSERT [dbo].[tipos_sala] OFF
ALTER TABLE [dbo].[butacas]  WITH CHECK ADD  CONSTRAINT [bu_id_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([id_estado])
GO
ALTER TABLE [dbo].[butacas] CHECK CONSTRAINT [bu_id_estado]
GO
ALTER TABLE [dbo].[butacas]  WITH CHECK ADD  CONSTRAINT [bu_id_funcion] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[funciones] ([id_funcion])
GO
ALTER TABLE [dbo].[butacas] CHECK CONSTRAINT [bu_id_funcion]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [fk_cl_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado_cliente] ([id_estado])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [fk_cl_estado]
GO
ALTER TABLE [dbo].[detalles_factura]  WITH CHECK ADD  CONSTRAINT [de_id_butaca] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[butacas] ([id_butaca])
GO
ALTER TABLE [dbo].[detalles_factura] CHECK CONSTRAINT [de_id_butaca]
GO
ALTER TABLE [dbo].[detalles_factura]  WITH CHECK ADD  CONSTRAINT [de_id_descuento] FOREIGN KEY([id_descuento])
REFERENCES [dbo].[descuentos] ([id_descuento])
GO
ALTER TABLE [dbo].[detalles_factura] CHECK CONSTRAINT [de_id_descuento]
GO
ALTER TABLE [dbo].[detalles_factura]  WITH CHECK ADD  CONSTRAINT [de_id_factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[facturas] ([id_factura])
GO
ALTER TABLE [dbo].[detalles_factura] CHECK CONSTRAINT [de_id_factura]
GO
ALTER TABLE [dbo].[detalles_factura]  WITH CHECK ADD  CONSTRAINT [de_id_funcion] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[funciones] ([id_funcion])
GO
ALTER TABLE [dbo].[detalles_factura] CHECK CONSTRAINT [de_id_funcion]
GO
ALTER TABLE [dbo].[detalles_factura]  WITH CHECK ADD  CONSTRAINT [de_id_tipo_publico] FOREIGN KEY([id_tipo_publico])
REFERENCES [dbo].[tipos_publico] ([id_publico])
GO
ALTER TABLE [dbo].[detalles_factura] CHECK CONSTRAINT [de_id_tipo_publico]
GO
ALTER TABLE [dbo].[facturas]  WITH CHECK ADD  CONSTRAINT [fa_id_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[facturas] CHECK CONSTRAINT [fa_id_cliente]
GO
ALTER TABLE [dbo].[facturas]  WITH CHECK ADD  CONSTRAINT [fa_id_medio_pago] FOREIGN KEY([id_medio_pago])
REFERENCES [dbo].[medios_pago] ([id_medio_pago])
GO
ALTER TABLE [dbo].[facturas] CHECK CONSTRAINT [fa_id_medio_pago]
GO
ALTER TABLE [dbo].[funciones]  WITH CHECK ADD  CONSTRAINT [fun_id_pelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[funciones] CHECK CONSTRAINT [fun_id_pelicula]
GO
ALTER TABLE [dbo].[funciones]  WITH CHECK ADD  CONSTRAINT [fun_id_sala] FOREIGN KEY([id_sala])
REFERENCES [dbo].[salas] ([id_sala])
GO
ALTER TABLE [dbo].[funciones] CHECK CONSTRAINT [fun_id_sala]
GO
ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD  CONSTRAINT [fk_estado_pelicula] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado_cliente] ([id_estado])
GO
ALTER TABLE [dbo].[peliculas] CHECK CONSTRAINT [fk_estado_pelicula]
GO
ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD  CONSTRAINT [pel_idioma] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[idiomas] ([id_idioma])
GO
ALTER TABLE [dbo].[peliculas] CHECK CONSTRAINT [pel_idioma]
GO
ALTER TABLE [dbo].[reservas]  WITH CHECK ADD  CONSTRAINT [re_id_butaca] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[butacas] ([id_butaca])
GO
ALTER TABLE [dbo].[reservas] CHECK CONSTRAINT [re_id_butaca]
GO
ALTER TABLE [dbo].[reservas]  WITH CHECK ADD  CONSTRAINT [re_id_funcion] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[funciones] ([id_funcion])
GO
ALTER TABLE [dbo].[reservas] CHECK CONSTRAINT [re_id_funcion]
GO
ALTER TABLE [dbo].[salas]  WITH CHECK ADD  CONSTRAINT [sal_id_sala] FOREIGN KEY([id_tipo_sala])
REFERENCES [dbo].[tipos_sala] ([id_tipo_sala])
GO
ALTER TABLE [dbo].[salas] CHECK CONSTRAINT [sal_id_sala]
GO
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_PELICULA]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_BORRAR_PELICULA]
@id int
as
UPDATE peliculas
set id_estado=2
where id_pelicula=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_USUARIO]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------
create procedure [dbo].[SP_BORRAR_USUARIO]
@id int
as
UPDATE clientes
set id_estado=2
where id_cliente=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_CLIENTES]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------
create procedure [dbo].[SP_BUSCAR_CLIENTES]

@nombre varchar(50),
@apellido varchar(50),
@email varchar(50),
@telefono int
as begin
	select id_cliente,nombre,apellido,mail,nro_tel,fecha_nac,contraseña from clientes
	where nombre like @nombre+'%' and apellido like @apellido+'%' and mail like @email+'%' and id_estado=1 or nro_tel like convert(varchar,@telefono,50)+'%'
end

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_PELICULAS]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_BUSCAR_PELICULAS]
@nombre varchar(50),
@categoria varchar(50),
@director varchar(50),
@fecha_estreno date
as
select id_pelicula,nombre,categoria,duracion,i.descripcion,director,fec_estreno
from peliculas p join idiomas i on i.id_idioma=p.id_idioma
where ((nombre like @nombre+'%' and categoria like @categoria+'%') and (director like @director+'%') and fec_estreno>@fecha_estreno) and id_estado = 1;
GO
/****** Object:  StoredProcedure [dbo].[SP_BUTACASDISP]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------------------------------------------------------------------------------------------------------


create procedure [dbo].[SP_BUTACASDISP]
@id int,
@fec date
as
select nombre 'Pelicula',fecha 'Fecha',horario 'Horario de función',count(id_butaca) 'Butacas Disponibles'
from peliculas p join funciones f on f.id_pelicula=
p.id_pelicula join butacas b on b.id_funcion=f.id_funcion join salas s
on s.id_sala=f.id_sala where b.id_butaca in 
(select id_butaca from butacas where
id_estado=1) and fecha>=@fec and p.id_pelicula=@id
group by nombre,fecha,horario

GO
/****** Object:  StoredProcedure [dbo].[SP_BUTACASDISP2]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_BUTACASDISP2]
@id int,
@fec date
as
select nombre 'Pelicula',fecha 'Fecha',horario 'Horario de función',count(id_butaca) 'Butacas Disponibles'
from peliculas p join funciones f on f.id_pelicula=
p.id_pelicula join butacas b on b.id_funcion=f.id_funcion join salas s
on s.id_sala=f.id_sala where b.id_butaca in 
(select id_butaca from butacas where
id_estado=1) and fecha>=@fec and p.id_pelicula=@id
group by nombre,fecha,horario;


GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_COMBO_FECHA]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------
create procedure [dbo].[SP_CARGAR_COMBO_FECHA]
@id_pelicula int
as
select fecha
from funciones
where id_pelicula=@id_pelicula

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_COMBO_FUNCION]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CARGAR_COMBO_FUNCION]
as
select id_pelicula,nombre
from peliculas 

GO
/****** Object:  StoredProcedure [dbo].[SP_cargar_factura]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------------------------------------
create procedure [dbo].[SP_cargar_factura]
@nom varchar(50),
@ape varchar(50)
as
select nombre,apellido,id_factura,descripcion'id_medio_pago',tipo_venta,fecha
from facturas f join clientes c on c.id_cliente=f.id_cliente
	join medios_pago m on m.id_medio_pago=f.id_medio_pago
	where nombre like @nom+'%' and apellido like @ape+'%'

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_TIPOSSALA]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_CARGAR_TIPOSSALA]
@fec varchar(50),
@hor varchar(50)
as
select descripcion from funciones f join salas s on f.id_sala=s.id_sala join tipos_sala t on t.id_tipo_sala=s.id_tipo_sala
where fecha=@fec and horario=@hor
GO
/****** Object:  StoredProcedure [dbo].[SP_CLIENTES_MEDIO]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------
create procedure [dbo].[SP_CLIENTES_MEDIO]
@nombre varchar(150),
@apellido varchar(150),
@mediopago int,
@duracion int
as
select c.nombre 'Nombre', apellido 'Apellido',m.descripcion 'Medio de pago',p.nombre 'Pelicula',
p.duracion 'Duracion' from clientes c join facturas f on c.id_cliente=f.id_cliente
join medios_pago m on f.id_medio_pago=m.id_medio_pago join detalles_factura d
 on d.id_factura=f.id_factura join funciones fu on fu.id_funcion=d.id_funcion 
 join peliculas p on p.id_pelicula=fu.id_pelicula
 where (c.nombre like @nombre+'%' or apellido like @apellido+'%') and f.id_medio_pago=@mediopago
 and @duracion<p.duracion
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_FUNCION]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------
create procedure [dbo].[SP_CONSULTAR_FUNCION]

@id_funcion int

as
begin 

select *
from funciones
where id_funcion=@id_funcion

end;

GO
/****** Object:  StoredProcedure [dbo].[SP_EDITAR_CLIENTE]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------------
create procedure [dbo].[SP_EDITAR_CLIENTE]
@id int,
@nombre varchar(50),
@apellido varchar(50),
@mail varchar(50),
@tel varchar(50),
@fechanac date,
@contra varchar(150)
as
update clientes
set nombre=@nombre,
apellido=@apellido,
mail=@mail,
nro_tel=@tel,
fecha_nac=@fechanac,
contraseña=@contra
where id_cliente=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_EDITAR_PELICULA]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_EDITAR_PELICULA]
@id int,
@nombre varchar(50),
@categoria varchar(50),
@director varchar(50),
@duracion int,
@fecha_estreno date
as
update peliculas
set 
nombre = @nombre,
categoria = @categoria,
director = @director,
duracion = @duracion,
fec_estreno = @fecha_estreno
where id_pelicula = @id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_factura]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------
create procedure [dbo].[sp_eliminar_factura]
@id int
as
delete facturas where id_factura=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_INGRESOS_POR_DIA]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INGRESOS_POR_DIA]
@diadesde date,
@diahasta date
as
select fecha 'Día', sum(monto) 'Ingresos totales' from funciones f 
join detalles_factura d on f.id_funcion=d.id_funcion
where fecha between @diadesde and @diahasta
group by fecha

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_CLIENTE]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------
create procedure [dbo].[SP_INSERTAR_CLIENTE]

@nombre varchar(80),
@apellido varchar(80),
@mail varchar(200),
@nro_tel varchar(50),
@fecha_nac datetime,
@contraseña varchar(200),
@id_cliente int output

As
Begin

insert into clientes(nombre, apellido, mail, nro_tel,fecha_nac, contraseña,id_estado) 
values(@nombre, @apellido, @mail, @nro_tel, @fecha_nac, @contraseña,1);

set @id_cliente = SCOPE_IDENTITY();

End;

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLE_2]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERTAR_DETALLE_2]
  @id_factura int,
  @monto money,
  @id_funcion int,
  @id_butaca int
  as
  begin
  insert into detalles_factura(id_factura,monto,id_funcion,id_butaca)values(@id_factura,@monto,@id_funcion,@id_butaca);
  update butacas 
  set id_estado = 2
  where id_butaca = @id_butaca
  end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_MAESTRO]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  create procedure [dbo].[SP_INSERTAR_MAESTRO]
@id_medio_pago int,
@id_cliente int,
@fecha datetime,
@id_factura int output
as
insert into facturas(id_medio_pago,id_cliente,fecha) values(@id_medio_pago,@id_cliente,@fecha)
set @id_factura = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_FUNCIONES]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------
CREATE PROCEDURE [dbo].[SP_OBTENER_FUNCIONES]
    @id_pelicula INT
AS
BEGIN
SELECT *
    FROM Funciones
    WHERE id_pelicula = @id_pelicula;
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_PELICULAS]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Crear un procedimiento almacendo que muestre el nombre de la película, los horarios y la cantidad de --butacas disponibles para cada horario. 
CREATE PROCEDURE [dbo].[SP_PELICULAS] 
@PeliculaID INT
 AS
           
 SELECT P.nombre 'NOMBRE',f.fecha 'FECHA',F.horario 'HORARIO',
  S.cantidad_butacas - (SELECT COUNT(*) FROM funciones F2 WHERE F2.id_sala = F.id_sala) 'BUTACAS DISPONIBLES'      
 FROM peliculas P JOIN funciones F ON P.id_pelicula = F.id_pelicula
 JOIN salas S ON F.id_sala = S.id_sala
 WHERE P.id_pelicula = @PeliculaID AND F.fecha >= GETDATE() AND S.cantidad_butacas > 0


GO
/****** Object:  StoredProcedure [dbo].[SP_PELIS_POR_AÑO]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------
create procedure [dbo].[SP_PELIS_POR_AÑO]
@año int,
@tipo_sala int,
@idioma int
as
select p.nombre 'Nombre',p.categoria 'Categoria',p.duracion 'Duracion',p.fec_estreno 'Estreno'
from Peliculas p
join funciones f on p.id_pelicula = f.id_pelicula
join salas s on f.id_sala=s.id_sala
join tipos_sala ts on ts.id_tipo_sala=s.id_tipo_sala 
join idiomas i on i.id_idioma = p.id_idioma
where year(fecha) = @año 
and ts.id_tipo_sala = @tipo_sala
and i.id_idioma = @idioma
order by p.duracion desc

GO
/****** Object:  StoredProcedure [dbo].[SP_REPORTE_JOAQUIN]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------
create procedure [dbo].[SP_REPORTE_JOAQUIN]
@fecd datetime,
@fech datetime
as
select descripcion 'Tipo de publico', SUM(case when MONTH(f.fecha)between 1 and 3
					 or MONTH(f.fecha)=7 then 1 else 0 end)	 'temporada', 
					 SUM(case when MONTH(f.fecha)not between 1 and 3 or MONTH(f.fecha)!=7 then 1 else 0 end) 'fuera de temporada' ,
					 count(id_detalle)
from tipos_publico t join detalles_factura d on d.id_tipo_publico=t.id_publico   
 join funciones f on f.id_funcion=d.id_funcion 
 group by descripcion

GO
/****** Object:  StoredProcedure [dbo].[SP_traer_butacas]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------
create procedure [dbo].[SP_traer_butacas]
@id_funcion int
as
begin 
select fila,columna,id_estado,id_butaca
from butacas
where id_funcion=@id_funcion
end;

GO
/****** Object:  StoredProcedure [dbo].[SP_TRAER_FECHAS]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_TRAER_FECHAS]
@id int
as
select fu.id_funcion,fecha,id_tipo_sala,fu.id_sala from funciones fu join salas s on fu.id_sala=s.id_sala where id_pelicula=@id and 0<(select count(id_butaca) from butacas b join funciones f
															on b.id_funcion=f.id_funcion where f.id_funcion=fu.id_funcion)
GO
/****** Object:  StoredProcedure [dbo].[SP_TRAER_HORARIOS]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------------
create procedure [dbo].[SP_TRAER_HORARIOS]
@id int,
@fec varchar(50)
as
select horario from funciones fu where id_pelicula=@id and fecha=@fec and 0<(select count(id_butaca) from butacas b join funciones f
															on b.id_funcion=f.id_funcion where f.id_funcion=fu.id_funcion and f.horario=fu.horario)

GO
/****** Object:  StoredProcedure [dbo].[SP_traer_id_cliente]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------
create procedure [dbo].[SP_traer_id_cliente]
@usuario varchar(50)
as
select id_cliente
from clientes
where mail=@usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_TRAER_ID_FUNCION]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
create procedure [dbo].[SP_TRAER_ID_FUNCION]
@idp int,
@fecha varchar(50),
@horario varchar(50)
as
select id_funcion from funciones where id_pelicula=@idp and fecha=@fecha and horario=@horario

GO
/****** Object:  StoredProcedure [dbo].[SP_VERIFICAR_CLIENTE]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
create procedure [dbo].[SP_VERIFICAR_CLIENTE]
@usuario varchar(150),
@contra varchar(150)
as
select *
from clientes
where mail=@usuario and contraseña=@contra

GO
/****** Object:  StoredProcedure [dbo].[SP_VERIFICAR_MAIL]    Script Date: 27/11/2023 19:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_VERIFICAR_MAIL]
@usu varchar(200)
as select * from clientes
where mail=@usu and id_estado=1



GO
USE [master]
GO
ALTER DATABASE [cine12] SET  READ_WRITE 
GO
