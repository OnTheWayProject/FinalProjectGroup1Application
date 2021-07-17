USE [Lab1]
GO
/****** Object:  Table [dbo].[GameV1]    Script Date: 2021/7/17 下午 03:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameV1](
	[number] [int] NOT NULL,
	[nickname] [nvarchar](50) NOT NULL,
	[boxname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[longitude] [float] NOT NULL,
	[latitude] [float] NOT NULL,
	[tip1] [nvarchar](50) NOT NULL,
	[tip2] [nvarchar](50) NOT NULL,
	[tip3] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GameV1] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GameV1] ([number], [nickname], [boxname], [email], [longitude], [latitude], [tip1], [tip2], [tip3]) VALUES (911222333, N'小丸子', N'記憶烙金石', N'HIHI@gmail.com', 25.047986799721262, 121.52013577091823, N'曲徑通幽', N' 遊園驚夢', N'屹立不搖')
INSERT [dbo].[GameV1] ([number], [nickname], [boxname], [email], [longitude], [latitude], [tip1], [tip2], [tip3]) VALUES (912345678, N'張鮭魚', N'都會之矩', N'coco0730@gmail.com', 25.056201240372133, 121.52124599790143, N'城市綠洲', N'信步迴廊', N'一方天地')
INSERT [dbo].[GameV1] ([number], [nickname], [boxname], [email], [longitude], [latitude], [tip1], [tip2], [tip3]) VALUES (933786518, N'小新', N'所羅門王的寶藏', N'AAA@gmail.com', 25.897199, 121.56667, N'金光閃閃', N'冒險犯難', N'炫光奪目')
INSERT [dbo].[GameV1] ([number], [nickname], [boxname], [email], [longitude], [latitude], [tip1], [tip2], [tip3]) VALUES (933786520, N'小新', N'所羅門王的寶藏', N'AAA@gmail.com', 25.897199, 121.56667, N'金光閃閃', N'冒險犯難', N'炫光奪目')
INSERT [dbo].[GameV1] ([number], [nickname], [boxname], [email], [longitude], [latitude], [tip1], [tip2], [tip3]) VALUES (986754312, N'維娜斯', N'足尖下的繆思', N'ssssss@gmail.com', 25.072703320290479, 121.52482092673785, N'游於藝', N'高處不勝', N'企予望之')
GO
