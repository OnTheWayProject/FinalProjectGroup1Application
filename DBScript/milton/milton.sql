USE [jspdb]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2021/7/17 下午 12:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[orderId] [int] NULL,
	[productid] [int] NOT NULL,
	[productname] [nvarchar](50) NOT NULL,
	[productquantity] [int] NOT NULL,
	[productprice] [int] NOT NULL,
	[productamount] [int] NOT NULL,
	[productinfo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInfo]    Script Date: 2021/7/17 下午 12:20:10 ******/
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
/****** Object:  Table [dbo].[ProductType]    Script Date: 2021/7/17 下午 12:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[typeid] [int] NOT NULL,
	[typename] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (1, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (2, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (3, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (4, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (5, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (6, 2, N'福華飯店', 1, 10000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (7, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (8, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (9, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (10, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (11, 2, N'福華飯店', 1, 10000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (12, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (13, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (14, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (15, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (16, 2, N'福華飯店', 1, 10000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 2, N'福華飯店', 1, 10000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (0, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (17, 1, N'晶華飯店', 1, 5000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (18, 2, N'福華飯店', 1, 10000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (19, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (20, 4, N'尋寶活動', 1, 500, 0, NULL)
INSERT [dbo].[Cart] ([orderId], [productid], [productname], [productquantity], [productprice], [productamount], [productinfo]) VALUES (NULL, 3, N'Toyota-ALTIS', 1, 2000, 0, NULL)
INSERT [dbo].[ProductInfo] ([productid], [productname], [productprice], [createdate], [typename], [product_typeId]) VALUES (1, N'晶華飯店', N'5000', CAST(N'2020-06-28' AS Date), N'住', 0)
INSERT [dbo].[ProductInfo] ([productid], [productname], [productprice], [createdate], [typename], [product_typeId]) VALUES (2, N'福華飯店', N'10000', CAST(N'2020-01-02' AS Date), N'住', 0)
INSERT [dbo].[ProductInfo] ([productid], [productname], [productprice], [createdate], [typename], [product_typeId]) VALUES (3, N'Toyota-ALTIS', N'2000', CAST(N'2020-05-02' AS Date), N'行', 1)
INSERT [dbo].[ProductInfo] ([productid], [productname], [productprice], [createdate], [typename], [product_typeId]) VALUES (4, N'尋寶活動', N'500', CAST(N'2020-01-02' AS Date), N'娛', 2)
INSERT [dbo].[ProductType] ([typeid], [typename]) VALUES (0, N'住')
INSERT [dbo].[ProductType] ([typeid], [typename]) VALUES (1, N'行')
INSERT [dbo].[ProductType] ([typeid], [typename]) VALUES (2, N'娛')
