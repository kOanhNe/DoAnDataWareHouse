USE [DataSupplyChain]
GO

/****** Object:  Table [silver].[orders]    Script Date: 4/18/2026 10:21:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [silver].[orders](
	[order_id] [int] NULL,
	[order_date_dateorders] [varchar](50) NULL,
	[order_customer_id] [int] NULL,
	[order_status] [varchar](50) NULL,
	[order_city] [varchar](100) NULL,
	[order_state] [varchar](100) NULL,
	[order_country] [varchar](100) NULL,
	[order_region] [varchar](100) NULL,
	[market] [varchar](50) NULL,
	[order_profit_per_order] [float] NULL
) ON [PRIMARY]
GO


