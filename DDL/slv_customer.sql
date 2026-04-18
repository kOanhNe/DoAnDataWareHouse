USE [DataSupplyChain]
GO

/****** Object:  Table [silver].[customer]    Script Date: 4/18/2026 10:18:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [silver].[customer](
	[customer_id] [int] NULL,
	[customer_fname] [varchar](100) NULL,
	[customer_lname] [varchar](100) NULL,
	[customer_email] [varchar](100) NULL,
	[customer_segment] [varchar](50) NULL,
	[customer_city] [varchar](100) NULL,
	[customer_state] [varchar](20) NULL,
	[customer_country] [varchar](100) NULL,
	[customer_street] [varchar](200) NULL,
	[customer_zipcode] [varchar](20) NULL
) ON [PRIMARY]
GO


