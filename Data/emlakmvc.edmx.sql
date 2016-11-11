
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/11/2016 21:59:30
-- Generated from EDMX file: C:\Users\husey\Desktop\EMLAK MVC\Emlak\Data\emlakmvc.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [emlakmvc];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserTypeUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet] DROP CONSTRAINT [FK_UserTypeUser];
GO
IF OBJECT_ID(N'[dbo].[FK_KategoriIlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IlanSet] DROP CONSTRAINT [FK_KategoriIlan];
GO
IF OBJECT_ID(N'[dbo].[FK_UserSikayet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SikayetSet] DROP CONSTRAINT [FK_UserSikayet];
GO
IF OBJECT_ID(N'[dbo].[FK_IlanDetayIlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IlanSet] DROP CONSTRAINT [FK_IlanDetayIlan];
GO
IF OBJECT_ID(N'[dbo].[FK_UserIlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IlanSet] DROP CONSTRAINT [FK_UserIlan];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[UserTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserTypeSet];
GO
IF OBJECT_ID(N'[dbo].[IlanSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IlanSet];
GO
IF OBJECT_ID(N'[dbo].[IlanDetaySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IlanDetaySet];
GO
IF OBJECT_ID(N'[dbo].[LogSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LogSet];
GO
IF OBJECT_ID(N'[dbo].[KategoriSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KategoriSet];
GO
IF OBJECT_ID(N'[dbo].[SikayetSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SikayetSet];
GO
IF OBJECT_ID(N'[dbo].[Entity2Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entity2Set];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserTypeId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Mail] nvarchar(max)  NOT NULL,
    [Telefon] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserTypeSet'
CREATE TABLE [dbo].[UserTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'IlanSet'
CREATE TABLE [dbo].[IlanSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Fiyat] nvarchar(max)  NOT NULL,
    [MetreKare] int  NOT NULL,
    [Tarih] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [KategoriId] int  NOT NULL,
    [IlanDetayId] int  NOT NULL
);
GO

-- Creating table 'IlanDetaySet'
CREATE TABLE [dbo].[IlanDetaySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Kat] nvarchar(max)  NOT NULL,
    [OdaSayi] nvarchar(max)  NOT NULL,
    [BanyoSayi] nvarchar(max)  NOT NULL,
    [Isitma] nvarchar(max)  NOT NULL,
    [Esyalimi] nvarchar(max)  NOT NULL,
    [Aciklama] nvarchar(max)  NOT NULL,
    [Adres] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LogSet'
CREATE TABLE [dbo].[LogSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'KategoriSet'
CREATE TABLE [dbo].[KategoriSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [KategoriAdi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SikayetSet'
CREATE TABLE [dbo].[SikayetSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Aciklama] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Entity2Set'
CREATE TABLE [dbo].[Entity2Set] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserTypeSet'
ALTER TABLE [dbo].[UserTypeSet]
ADD CONSTRAINT [PK_UserTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IlanSet'
ALTER TABLE [dbo].[IlanSet]
ADD CONSTRAINT [PK_IlanSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IlanDetaySet'
ALTER TABLE [dbo].[IlanDetaySet]
ADD CONSTRAINT [PK_IlanDetaySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LogSet'
ALTER TABLE [dbo].[LogSet]
ADD CONSTRAINT [PK_LogSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KategoriSet'
ALTER TABLE [dbo].[KategoriSet]
ADD CONSTRAINT [PK_KategoriSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SikayetSet'
ALTER TABLE [dbo].[SikayetSet]
ADD CONSTRAINT [PK_SikayetSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entity2Set'
ALTER TABLE [dbo].[Entity2Set]
ADD CONSTRAINT [PK_Entity2Set]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserTypeId] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [FK_UserTypeUser]
    FOREIGN KEY ([UserTypeId])
    REFERENCES [dbo].[UserTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTypeUser'
CREATE INDEX [IX_FK_UserTypeUser]
ON [dbo].[UserSet]
    ([UserTypeId]);
GO

-- Creating foreign key on [KategoriId] in table 'IlanSet'
ALTER TABLE [dbo].[IlanSet]
ADD CONSTRAINT [FK_KategoriIlan]
    FOREIGN KEY ([KategoriId])
    REFERENCES [dbo].[KategoriSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KategoriIlan'
CREATE INDEX [IX_FK_KategoriIlan]
ON [dbo].[IlanSet]
    ([KategoriId]);
GO

-- Creating foreign key on [UserId] in table 'SikayetSet'
ALTER TABLE [dbo].[SikayetSet]
ADD CONSTRAINT [FK_UserSikayet]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserSikayet'
CREATE INDEX [IX_FK_UserSikayet]
ON [dbo].[SikayetSet]
    ([UserId]);
GO

-- Creating foreign key on [IlanDetayId] in table 'IlanSet'
ALTER TABLE [dbo].[IlanSet]
ADD CONSTRAINT [FK_IlanDetayIlan]
    FOREIGN KEY ([IlanDetayId])
    REFERENCES [dbo].[IlanDetaySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IlanDetayIlan'
CREATE INDEX [IX_FK_IlanDetayIlan]
ON [dbo].[IlanSet]
    ([IlanDetayId]);
GO

-- Creating foreign key on [UserId] in table 'IlanSet'
ALTER TABLE [dbo].[IlanSet]
ADD CONSTRAINT [FK_UserIlan]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserIlan'
CREATE INDEX [IX_FK_UserIlan]
ON [dbo].[IlanSet]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------