USE [master]
GO
/****** Object:  Database [EfrpgTest_Settings]    Script Date: 16/01/22 14:09:46 ******/
CREATE DATABASE [EfrpgTest_Settings]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EfrpgTest_Settings', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EfrpgTest_Settings.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EfrpgTest_Settings_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EfrpgTest_Settings_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EfrpgTest_Settings] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EfrpgTest_Settings].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EfrpgTest_Settings] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET ARITHABORT OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EfrpgTest_Settings] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EfrpgTest_Settings] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EfrpgTest_Settings] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EfrpgTest_Settings] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EfrpgTest_Settings] SET  MULTI_USER 
GO
ALTER DATABASE [EfrpgTest_Settings] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EfrpgTest_Settings] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EfrpgTest_Settings] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EfrpgTest_Settings] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EfrpgTest_Settings] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EfrpgTest_Settings', N'ON'
GO
ALTER DATABASE [EfrpgTest_Settings] SET QUERY_STORE = OFF
GO
USE [EfrpgTest_Settings]
GO
/****** Object:  Schema [MultiContext]    Script Date: 16/01/22 14:09:46 ******/
CREATE SCHEMA [MultiContext]
GO
/****** Object:  Table [MultiContext].[Column]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[Column](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DbName] [nvarchar](255) NULL,
	[IsPrimaryKey] [bit] NULL,
	[OverrideModifier] [bit] NULL,
	[EnumType] [nvarchar](255) NULL,
	[TableId] [int] NOT NULL,
	[Attributes] [nvarchar](500) NULL,
	[Test] [varchar](10) NULL,
	[DummyInt] [int] NULL,
	[date_of_birth] [datetime] NULL,
	[PropertyType] [nvarchar](128) NULL,
	[IsNullable] [bit] NULL,
 CONSTRAINT [PK_Column] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MultiContext].[Context]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[Context](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[BaseSchema] [nvarchar](255) NULL,
	[TemplatePath] [nvarchar](500) NULL,
	[Namespace] [nvarchar](128) NULL,
	[Filename] [nvarchar](128) NULL,
 CONSTRAINT [PK_Context] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MultiContext].[Enumeration]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[Enumeration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Table] [nvarchar](255) NOT NULL,
	[NameField] [nvarchar](255) NOT NULL,
	[ValueField] [nvarchar](255) NOT NULL,
	[ContextId] [int] NOT NULL,
 CONSTRAINT [PK_Enumeration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MultiContext].[ForeignKey]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[ForeignKey](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContextId] [int] NOT NULL,
	[ConstraintName] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[ChildName] [nvarchar](128) NULL,
	[PkSchema] [nvarchar](128) NULL,
	[PkTableName] [nvarchar](128) NOT NULL,
	[PkColumn] [nvarchar](128) NOT NULL,
	[FkSchema] [nvarchar](128) NULL,
	[FkTableName] [nvarchar](128) NOT NULL,
	[FkColumn] [nvarchar](128) NOT NULL,
	[Ordinal] [int] NOT NULL,
	[CascadeOnDelete] [bit] NOT NULL,
	[IsNotEnforced] [bit] NOT NULL,
	[HasUniqueConstraint] [bit] NOT NULL,
 CONSTRAINT [PK_ForeignKey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MultiContext].[Function]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[Function](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DbName] [nvarchar](255) NULL,
	[ContextId] [int] NOT NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MultiContext].[StoredProcedure]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[StoredProcedure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DbName] [nvarchar](255) NULL,
	[ReturnModel] [nvarchar](255) NULL,
	[ContextId] [int] NOT NULL,
 CONSTRAINT [PK_StoredProcedure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MultiContext].[Table]    Script Date: 16/01/22 14:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MultiContext].[Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[PluralName] [nvarchar](255) NULL,
	[DbName] [nvarchar](255) NULL,
	[ContextId] [int] NOT NULL,
	[Attributes] [nvarchar](500) NULL,
	[DbSetModifier] [nvarchar](128) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [MultiContext].[Column] ON 
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (1, N'id', NULL, NULL, 0, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (2, N'Name', NULL, NULL, 0, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (3, N'id', NULL, NULL, 0, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (4, N'id', NULL, NULL, 0, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (5, N'MyColumn', NULL, NULL, 0, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (6, N'Dollar', N'$', NULL, 0, NULL, 21, N'[ExampleForTesting("abc")]~[CustomRequired]', N'Hello', 1234, CAST(N'2019-06-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (7, N'Pound', N'[£]', NULL, 0, NULL, 21, N'[ExampleForTesting("def")]~[CustomSecurity(SecurityEnum.Readonly)]', N'World', 5678, CAST(N'2019-06-21T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (8, N'StaticField', N'static', NULL, 0, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (9, N'Day', N'readonly', NULL, 0, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (10, N'Description', NULL, 1, 0, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (11, N'ParentId', NULL, NULL, 0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Column] ([Id], [Name], [DbName], [IsPrimaryKey], [OverrideModifier], [EnumType], [TableId], [Attributes], [Test], [DummyInt], [date_of_birth], [PropertyType], [IsNullable]) VALUES (12, N'ParentName', N'ParentName', NULL, 0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [MultiContext].[Column] OFF
GO
SET IDENTITY_INSERT [MultiContext].[Context] ON 
GO
INSERT [MultiContext].[Context] ([Id], [Name], [Description], [BaseSchema], [TemplatePath], [Namespace], [Filename]) VALUES (11, N'EnumerationDbContext', N'This module is used to extract the enumerations', N'dbo', NULL, NULL, NULL)
GO
INSERT [MultiContext].[Context] ([Id], [Name], [Description], [BaseSchema], [TemplatePath], [Namespace], [Filename]) VALUES (12, N'AppleDbContext', N'Testing apples', NULL, NULL, NULL, NULL)
GO
INSERT [MultiContext].[Context] ([Id], [Name], [Description], [BaseSchema], [TemplatePath], [Namespace], [Filename]) VALUES (13, N'BananaDbContext', N'Testing bananas', N'dbo', NULL, NULL, NULL)
GO
INSERT [MultiContext].[Context] ([Id], [Name], [Description], [BaseSchema], [TemplatePath], [Namespace], [Filename]) VALUES (14, N'CherryDbContext', N'Testing cherries', N'dbo', NULL, N'Cherry', N'CherryDatabaseContext')
GO
INSERT [MultiContext].[Context] ([Id], [Name], [Description], [BaseSchema], [TemplatePath], [Namespace], [Filename]) VALUES (15, N'DamsonDbContext', N'Testing Damson plums', NULL, N'C:\S\Source (open source)\EntityFramework Reverse POCO Code Generator\Tester.Integration.EfCore3\File based templates\Templates.EFCore3', N'Plum', NULL)
GO
SET IDENTITY_INSERT [MultiContext].[Context] OFF
GO
SET IDENTITY_INSERT [MultiContext].[Enumeration] ON 
GO
INSERT [MultiContext].[Enumeration] ([Id], [Name], [Table], [NameField], [ValueField], [ContextId]) VALUES (1, N'DaysOfWeek', N'EnumTest.DaysOfWeek', N'TypeName', N'TypeId', 11)
GO
INSERT [MultiContext].[Enumeration] ([Id], [Name], [Table], [NameField], [ValueField], [ContextId]) VALUES (2, N'CarOptions', N'EnumsWithStringAsValue', N'enum_name', N'value', 11)
GO
SET IDENTITY_INSERT [MultiContext].[Enumeration] OFF
GO
SET IDENTITY_INSERT [MultiContext].[ForeignKey] ON 
GO
INSERT [MultiContext].[ForeignKey] ([Id], [ContextId], [ConstraintName], [ParentName], [ChildName], [PkSchema], [PkTableName], [PkColumn], [FkSchema], [FkTableName], [FkColumn], [Ordinal], [CascadeOnDelete], [IsNotEnforced], [HasUniqueConstraint]) VALUES (1, 15, N'CustomNameForForeignKey', N'ParentFkName', N'ChildFkName', N'dbo', N'NoPrimaryKeys', N'Description', N'Synonyms', N'Parent', N'ParentName', 1, 0, 0, 0)
GO
SET IDENTITY_INSERT [MultiContext].[ForeignKey] OFF
GO
SET IDENTITY_INSERT [MultiContext].[Table] ON 
GO
INSERT [MultiContext].[Table] ([Id], [Name], [Description], [PluralName], [DbName], [ContextId], [Attributes], [DbSetModifier]) VALUES (18, N'Boo', NULL, NULL, N'Stafford.Boo', 12, N'[CustomSecurity(SecurityEnum.Readonly)]', NULL)
GO
INSERT [MultiContext].[Table] ([Id], [Name], [Description], [PluralName], [DbName], [ContextId], [Attributes], [DbSetModifier]) VALUES (19, N'Foo', NULL, NULL, N'Stafford.Foo', 12, NULL, NULL)
GO
INSERT [MultiContext].[Table] ([Id], [Name], [Description], [PluralName], [DbName], [ContextId], [Attributes], [DbSetModifier]) VALUES (20, N'ComputedColumns', NULL, NULL, N'Stafford.ComputedColumns', 13, NULL, NULL)
GO
INSERT [MultiContext].[Table] ([Id], [Name], [Description], [PluralName], [DbName], [ContextId], [Attributes], [DbSetModifier]) VALUES (21, N'ColumnNameAndTypes', NULL, NULL, NULL, 14, NULL, NULL)
GO
INSERT [MultiContext].[Table] ([Id], [Name], [Description], [PluralName], [DbName], [ContextId], [Attributes], [DbSetModifier]) VALUES (22, N'NoPrimaryKeys', NULL, NULL, NULL, 15, NULL, NULL)
GO
INSERT [MultiContext].[Table] ([Id], [Name], [Description], [PluralName], [DbName], [ContextId], [Attributes], [DbSetModifier]) VALUES (23, N'Parent', NULL, NULL, N'[Synonyms].[Parent]', 15, NULL, NULL)
GO
SET IDENTITY_INSERT [MultiContext].[Table] OFF
GO
/****** Object:  Index [IX_Column_TableId]    Script Date: 16/01/22 14:09:46 ******/
CREATE NONCLUSTERED INDEX [IX_Column_TableId] ON [MultiContext].[Column]
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_Column_Name]    Script Date: 16/01/22 14:09:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_Column_Name] ON [MultiContext].[Column]
(
	[TableId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_Context_Name]    Script Date: 16/01/22 14:09:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_Context_Name] ON [MultiContext].[Context]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Enumeration_ContextId]    Script Date: 16/01/22 14:09:46 ******/
CREATE NONCLUSTERED INDEX [IX_Enumeration_ContextId] ON [MultiContext].[Enumeration]
(
	[ContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_Enumeration_Name]    Script Date: 16/01/22 14:09:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_Enumeration_Name] ON [MultiContext].[Enumeration]
(
	[ContextId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ForeignKey_ContextId]    Script Date: 16/01/22 14:09:46 ******/
CREATE NONCLUSTERED INDEX [IX_ForeignKey_ContextId] ON [MultiContext].[ForeignKey]
(
	[ContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Function_ContextId]    Script Date: 16/01/22 14:09:46 ******/
CREATE NONCLUSTERED INDEX [IX_Function_ContextId] ON [MultiContext].[Function]
(
	[ContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_Function_Name]    Script Date: 16/01/22 14:09:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_Function_Name] ON [MultiContext].[Function]
(
	[ContextId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StoredProcedure_ContextId]    Script Date: 16/01/22 14:09:46 ******/
CREATE NONCLUSTERED INDEX [IX_StoredProcedure_ContextId] ON [MultiContext].[StoredProcedure]
(
	[ContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_StoredProcedure_Name]    Script Date: 16/01/22 14:09:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_StoredProcedure_Name] ON [MultiContext].[StoredProcedure]
(
	[ContextId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Table_ContextId]    Script Date: 16/01/22 14:09:46 ******/
CREATE NONCLUSTERED INDEX [IX_Table_ContextId] ON [MultiContext].[Table]
(
	[ContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_Table_Name]    Script Date: 16/01/22 14:09:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_Table_Name] ON [MultiContext].[Table]
(
	[ContextId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [MultiContext].[ForeignKey] ADD  DEFAULT ((0)) FOR [HasUniqueConstraint]
GO
ALTER TABLE [MultiContext].[Column]  WITH CHECK ADD  CONSTRAINT [FK_Column_Table_TableId] FOREIGN KEY([TableId])
REFERENCES [MultiContext].[Table] ([Id])
GO
ALTER TABLE [MultiContext].[Column] CHECK CONSTRAINT [FK_Column_Table_TableId]
GO
ALTER TABLE [MultiContext].[Enumeration]  WITH CHECK ADD  CONSTRAINT [FK_Enumeration_Context_ContextId] FOREIGN KEY([ContextId])
REFERENCES [MultiContext].[Context] ([Id])
GO
ALTER TABLE [MultiContext].[Enumeration] CHECK CONSTRAINT [FK_Enumeration_Context_ContextId]
GO
ALTER TABLE [MultiContext].[ForeignKey]  WITH CHECK ADD  CONSTRAINT [FK_ForeignKey_Context_ContextId] FOREIGN KEY([ContextId])
REFERENCES [MultiContext].[Context] ([Id])
GO
ALTER TABLE [MultiContext].[ForeignKey] CHECK CONSTRAINT [FK_ForeignKey_Context_ContextId]
GO
ALTER TABLE [MultiContext].[Function]  WITH CHECK ADD  CONSTRAINT [FK_Function_Context_ContextId] FOREIGN KEY([ContextId])
REFERENCES [MultiContext].[Context] ([Id])
GO
ALTER TABLE [MultiContext].[Function] CHECK CONSTRAINT [FK_Function_Context_ContextId]
GO
ALTER TABLE [MultiContext].[StoredProcedure]  WITH CHECK ADD  CONSTRAINT [FK_StoredProcedure_Context_ContextId] FOREIGN KEY([ContextId])
REFERENCES [MultiContext].[Context] ([Id])
GO
ALTER TABLE [MultiContext].[StoredProcedure] CHECK CONSTRAINT [FK_StoredProcedure_Context_ContextId]
GO
ALTER TABLE [MultiContext].[Table]  WITH CHECK ADD  CONSTRAINT [FK_Table_Context_ContextId] FOREIGN KEY([ContextId])
REFERENCES [MultiContext].[Context] ([Id])
GO
ALTER TABLE [MultiContext].[Table] CHECK CONSTRAINT [FK_Table_Context_ContextId]
GO
USE [master]
GO
ALTER DATABASE [EfrpgTest_Settings] SET  READ_WRITE 
GO
