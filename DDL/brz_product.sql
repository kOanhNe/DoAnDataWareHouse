USE [DataSupplyChain]
GO

/****** Object:  Table [bronze].[product]    Script Date: 4/18/2026 10:15:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[product](
	[product_card_id] [int] NULL,
	[product_name] [varchar](255) NULL,
	[product_price] [float] NULL,
	[product_status] [int] NULL,
	[product_category_id] [int] NULL
) ON [PRIMARY]
GO


