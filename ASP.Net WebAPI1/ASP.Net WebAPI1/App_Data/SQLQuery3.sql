-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/09/2018 12:20:16
-- Generated from EDMX file: C:\Users\User\source\repos\ASP.Net WebAPI1\ASP.Net WebAPI1\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [C:\USERS\USER\SOURCE\REPOS\ASP.NET WEBAPI1\ASP.NET WEBAPI1\APP_DATA\PHONEDB.MDF];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CompanyPhone]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhoneSet] DROP CONSTRAINT [FK_CompanyPhone];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CompanySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanySet];
GO
IF OBJECT_ID(N'[dbo].[PhoneSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhoneSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PhoneSet'
CREATE TABLE [dbo].[PhoneSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Model] nvarchar(max)  NOT NULL,
    [Price] int  NOT NULL,
    [IsActual] bit  NOT NULL,
    [Year] datetime  NOT NULL,
    [CompanyId] int  NOT NULL
);
GO

-- Creating table 'CompanySet'
CREATE TABLE [dbo].[CompanySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [DataOfFund] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'PhoneSet'
ALTER TABLE [dbo].[PhoneSet]
ADD CONSTRAINT [PK_PhoneSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CompanySet'
ALTER TABLE [dbo].[CompanySet]
ADD CONSTRAINT [PK_CompanySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CompanyId] in table 'PhoneSet'
ALTER TABLE [dbo].[PhoneSet]
ADD CONSTRAINT [FK_CompanyPhone]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[CompanySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyPhone'
CREATE INDEX [IX_FK_CompanyPhone]
ON [dbo].[PhoneSet]
    ([CompanyId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------