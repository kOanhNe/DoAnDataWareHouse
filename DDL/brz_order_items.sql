USE [DataSupplyChain]
GO

/****** Object:  Table [bronze].[order_items]    Script Date: 4/18/2026 10:14:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[order_items](
	[order_item_id] [int] NULL,
	[order_id] [int] NULL,
	[order_item_cardprod_id] [int] NULL,
	[order_item_quantity] [int] NULL,
	[order_item_product_price] [float] NULL,
	[order_item_discount] [float] NULL,
	[order_item_discount_rate] [float] NULL,
	[order_item_total] [float] NULL,
	[order_item_profit_ratio] [float] NULL
) ON [PRIMARY]
GO


