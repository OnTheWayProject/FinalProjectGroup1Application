USE [jspdb]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2021/7/13 上午 12:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[orderId] [int] NOT NULL,
	[items] [varbinary](255) NULL,
	[productamount] [int] NULL,
	[productid] [int] NULL,
	[productname] [varchar](255) NULL,
	[productprice] [int] NULL,
	[productquantity] [int] NULL,
	[item] [varbinary](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInfo]    Script Date: 2021/7/13 上午 12:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInfo](
	[productid] [int] NULL,
	[productname] [nvarchar](50) NULL,
	[productprice] [nvarchar](50) NULL,
	[createdate] [date] NULL,
	[typename] [nvarchar](50) NULL,
	[product_typeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 2021/7/13 上午 12:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[typeid] [int] NOT NULL,
	[typename] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
