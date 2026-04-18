IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'etl')
    EXEC('CREATE SCHEMA etl');
GO

IF OBJECT_ID('etl.etl_watermark', 'U') IS NULL
BEGIN
    CREATE TABLE etl.etl_watermark
    (
        PipelineName NVARCHAR(200) NOT NULL PRIMARY KEY,
        LastValue    BIGINT        NOT NULL,
        LastRunAt    DATETIME2(0)  NULL
    );
END
GO

IF NOT EXISTS (SELECT 1 FROM etl.etl_watermark WHERE PipelineName = 'Load Silver Orders')
BEGIN
    INSERT INTO etl.etl_watermark (PipelineName, LastValue, LastRunAt)
    VALUES ('Load Silver Orders', 0, NULL);
END
GO