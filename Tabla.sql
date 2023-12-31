USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 4/12/2023 22:15:55 ******/
CREATE DATABASE [Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Proyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Proyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Proyecto] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Proyecto] SET QUERY_STORE = ON
GO
ALTER DATABASE [Proyecto] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Proyecto]
GO
/****** Object:  Table [dbo].[coursesdb]    Script Date: 4/12/2023 22:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coursesdb](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionsdb]    Script Date: 4/12/2023 22:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionsdb](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[label] [varchar](255) NULL,
	[question_option] [varchar](255) NULL,
	[subjectid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjectdb]    Script Date: 4/12/2023 22:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjectdb](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[author] [varchar](255) NULL,
	[creation_date] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[points] [float] NOT NULL,
	[id_course] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userdb]    Script Date: 4/12/2023 22:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userdb](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[old] [datetime2](6) NULL,
	[password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[coursesdb] ON 

INSERT [dbo].[coursesdb] ([course_id], [name]) VALUES (1, N'Ciencias')
INSERT [dbo].[coursesdb] ([course_id], [name]) VALUES (2, N'Español')
INSERT [dbo].[coursesdb] ([course_id], [name]) VALUES (3, N'Matematicas')
INSERT [dbo].[coursesdb] ([course_id], [name]) VALUES (4, N'Estudios Sociales')
SET IDENTITY_INSERT [dbo].[coursesdb] OFF
GO
SET IDENTITY_INSERT [dbo].[questionsdb] ON 

INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (1, N'1-¿Cual es la capital de Francia?', N'[    {"texto": "Londres", "correcta": false},    {"texto": "París", "correcta": true},    {"texto": "Madrid", "correcta": false},    {"texto": "Berlín", "correcta": false} ]', 4)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (3, N'2-¿Cual es la capital de España?', N'[    {"texto": "Londres", "correcta": false},    {"texto": "París", "correcta": false},    {"texto": "Madrid", "correcta": true},    {"texto": "Berlín", "correcta": false}  ]', 4)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (4, N'3-¿Cual es la capital de Inglaterra? ', N'[    {"texto": "Londres", "correcta": true},    {"texto": "París", "correcta": false},    {"texto": "Madrid", "correcta": false},    {"texto": "Berlín", "correcta": false}  ]', 4)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (5, N'4-¿Cual es la capital de Alemania? ', N'[
  {"texto": "Londres", "correcta": false},
  {"texto": "París", "correcta": false},
  {"texto": "Madrid", "correcta": false},
  {"texto": "Berlín", "correcta": true}
]', 4)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (6, N'5-¿Cual es la capital de Japón?', N'[
  {"texto": "Tokio", "correcta": true},
  {"texto": "París", "correcta": false},
  {"texto": "Madrid", "correcta": false},
  {"texto": "Berlín", "correcta": false}
]', 4)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (7, N'1-¿Cuanto es 1+1?', N'[
  {"texto": "2", "correcta": true},
  {"texto": "3", "correcta": false},
  {"texto": "4", "correcta": false},
  {"texto": "5", "correcta": false}
]', 5)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (10, N'2-¿Cuanto es 2+1?', N'[
  {"texto": "2", "correcta": false},
  {"texto": "3", "correcta": true},
  {"texto": "4", "correcta": false},
  {"texto": "5", "correcta": false}
]', 5)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (12, N'3-¿Cuanto es 3+1? ', N'[
  {"texto": "2", "correcta": false},
  {"texto": "3", "correcta": false},
  {"texto": "4", "correcta": true},
  {"texto": "5", "correcta": false}
]', 5)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (13, N'4-¿Cuanto es 4+1?', N'[
  {"texto": "2", "correcta": false},
  {"texto": "3", "correcta": false},
  {"texto": "4", "correcta": false},
  {"texto": "5", "correcta": true}
]', 5)
INSERT [dbo].[questionsdb] ([question_id], [label], [question_option], [subjectid]) VALUES (14, N'5-¿Cuanto es 5+1?', N'[
  {"texto": "2", "correcta": false},
  {"texto": "3", "correcta": false},
  {"texto": "4", "correcta": false},
  {"texto": "6", "correcta": true}
]', 5)
SET IDENTITY_INSERT [dbo].[questionsdb] OFF
GO
SET IDENTITY_INSERT [dbo].[subjectdb] ON 

INSERT [dbo].[subjectdb] ([subject_id], [author], [creation_date], [name], [points], [id_course]) VALUES (2, N'Marce', N'23-03-30', N'Celulas', 5, 1)
INSERT [dbo].[subjectdb] ([subject_id], [author], [creation_date], [name], [points], [id_course]) VALUES (3, N'Marce', N'23-03-30', N'Mayusculas', 5, 2)
INSERT [dbo].[subjectdb] ([subject_id], [author], [creation_date], [name], [points], [id_course]) VALUES (4, N'Marce', N'23-03-30', N'Capitales', 5, 4)
INSERT [dbo].[subjectdb] ([subject_id], [author], [creation_date], [name], [points], [id_course]) VALUES (5, N'Marce', N'23-03-30', N'Sumas', 5, 3)
SET IDENTITY_INSERT [dbo].[subjectdb] OFF
GO
SET IDENTITY_INSERT [dbo].[userdb] ON 

INSERT [dbo].[userdb] ([userid], [email], [last_name], [name], [old], [password]) VALUES (1, N'd@e.com', NULL, N'Al', CAST(N'2005-03-22T18:00:00.0000000' AS DateTime2), N'444')
INSERT [dbo].[userdb] ([userid], [email], [last_name], [name], [old], [password]) VALUES (3, N't@e.com', N'Sanabria', N'Al', CAST(N'2005-03-22T18:00:00.0000000' AS DateTime2), N'444')
SET IDENTITY_INSERT [dbo].[userdb] OFF
GO
ALTER TABLE [dbo].[subjectdb]  WITH CHECK ADD  CONSTRAINT [FKwndgr74a5rwtwolignmrad3n] FOREIGN KEY([id_course])
REFERENCES [dbo].[coursesdb] ([course_id])
GO
ALTER TABLE [dbo].[subjectdb] CHECK CONSTRAINT [FKwndgr74a5rwtwolignmrad3n]
GO
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
