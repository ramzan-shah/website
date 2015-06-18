
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2015 17:29:10
-- Generated from EDMX file: C:\Users\Ramzan\Documents\Visual Studio 2013\Projects\WebApplication2\WebApplication2\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[doctor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[doctor];
GO
IF OBJECT_ID(N'[dbo].[pats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[pats];
GO
IF OBJECT_ID(N'[dbo].[users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'doctors'
CREATE TABLE [dbo].[doctors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [fname] varchar(50)  NULL,
    [lname] varchar(50)  NULL,
    [dept] varchar(50)  NULL,
    [sepecialization] varchar(50)  NULL,
    [experiance] int  NULL,
    [area] varchar(50)  NULL,
    [hospital] varchar(50)  NULL,
    [pwd] varchar(50)  NOT NULL
);
GO

-- Creating table 'pats'
CREATE TABLE [dbo].[pats] (
    [fname] varchar(50)  NULL,
    [lname] varchar(50)  NULL,
    [deasease] varchar(50)  NULL,
    [age] int  NULL,
    [pwd] varchar(50)  NOT NULL,
    [username] varchar(50)  NOT NULL
);
GO

-- Creating table 'users'
CREATE TABLE [dbo].[users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(50)  NULL,
    [pwd] varchar(50)  NULL,
    [status] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'doctors'
ALTER TABLE [dbo].[doctors]
ADD CONSTRAINT [PK_doctors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [username] in table 'pats'
ALTER TABLE [dbo].[pats]
ADD CONSTRAINT [PK_pats]
    PRIMARY KEY CLUSTERED ([username] ASC);
GO

-- Creating primary key on [Id] in table 'users'
ALTER TABLE [dbo].[users]
ADD CONSTRAINT [PK_users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------