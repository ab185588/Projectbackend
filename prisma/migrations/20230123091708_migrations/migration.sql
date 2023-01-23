BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[NoloOrdersVolume] (
    [ServerName] VARCHAR(125) NOT NULL,
    [DatabaseName] VARCHAR(125) NOT NULL,
    [OrderDateMonth] DATETIME,
    [Frequency] INT
);

-- CreateTable
CREATE TABLE [dbo].[OrderTable] (
    [Region] NVARCHAR(10) NOT NULL,
    [CustomerName] VARCHAR(500) NOT NULL,
    [OrderDate] DATETIME,
    [AttemptedOrders] INT,
    [CompletedOrders] INT,
    [TotalOrders] INT,
    [_data_import_date] DATETIME NOT NULL,
    [_ServerName] VARCHAR(125)
);

-- CreateTable
CREATE TABLE [dbo].[OrderTableMonthly] (
    [ServerName] VARCHAR(125) NOT NULL,
    [DatabaseName] VARCHAR(125) NOT NULL,
    [OrderDateMonth] DATETIME,
    [Frequency] INT
);

-- CreateTable
CREATE TABLE [dbo].[OrderTableReportMaster] (
    [Region] NVARCHAR(10) NOT NULL,
    [CustomerName] VARCHAR(500) NOT NULL,
    [OrderDate] DATETIME,
    [AttemptedOrders] INT,
    [CompletedOrders] INT,
    [TotalOrders] INT,
    [_data_import_date] DATETIME NOT NULL,
    [_ServerName] VARCHAR(125)
);

-- CreateTable
CREATE TABLE [dbo].[sysdiagrams] (
    [name] NVARCHAR(128) NOT NULL,
    [principal_id] INT NOT NULL,
    [diagram_id] INT NOT NULL IDENTITY(1,1),
    [version] INT,
    [definition] VARBINARY(max),
    CONSTRAINT [PK__sysdiagr__C2B05B6148A68344] PRIMARY KEY CLUSTERED ([diagram_id]),
    CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id],[name])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
