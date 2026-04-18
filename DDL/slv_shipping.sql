USE [DataSupplyChain]
GO

/****** Object:  Table [silver].[shipping]    Script Date: 4/18/2026 10:21:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [silver].[shipping](
	[order_id] [int] NULL,
	[shipping_date_dateorders] [varchar](50) NULL,
	[shipping_mode] [varchar](50) NULL,
	[delivery_status] [varchar](50) NULL,
	[late_delivery_risk] [int] NULL,
	[days_for_shipping_real] [int] NULL,
	[days_for_shipment_scheduled] [int] NULL
) ON [PRIMARY]
GO


