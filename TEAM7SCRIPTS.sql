USE [trialproject]
GO
/****** Object:  Table [dbo].[Awarded]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Awarded](
	[ID_Award] [int] NOT NULL,
	[ID_Person] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Awarded] PRIMARY KEY CLUSTERED 
(
	[ID_Award] ASC,
	[ID_Person] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Awards]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Awards](
	[Award_ID] [int] IDENTITY(1,1) NOT NULL,
	[Award_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Awards] PRIMARY KEY CLUSTERED 
(
	[Award_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[directed]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[directed](
	[Director_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_directed] PRIMARY KEY CLUSTERED 
(
	[Director_ID] ASC,
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genre]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genre](
	[ID_movie] [int] NOT NULL,
	[movie_type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_genre] PRIMARY KEY CLUSTERED 
(
	[ID_movie] ASC,
	[movie_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[head]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[head](
	[ID_comany] [int] NOT NULL,
	[city] [nchar](100) NOT NULL,
 CONSTRAINT [PK_head] PRIMARY KEY CLUSTERED 
(
	[ID_comany] ASC,
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Stars]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Stars](
	[Star_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[famousquote] [varchar](max) NULL,
 CONSTRAINT [PK_Movie_Stars] PRIMARY KEY CLUSTERED 
(
	[Star_ID] ASC,
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Movie_ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Release_Date] [date] NULL,
	[Duration] [int] NULL,
	[Language] [varchar](50) NULL,
	[Dist_by] [varchar](50) NULL,
	[Budget] [int] NULL,
	[Box_office] [int] NULL,
	[Country] [varchar](50) NULL,
	[img_file] [varchar](max) NULL,
	[Plot] [varchar](max) NULL,
	[composer] [varchar](100) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Person_ID] [int] IDENTITY(1,1) NOT NULL,
	[DOB] [date] NULL,
	[First_name] [varchar](50) NOT NULL,
	[M_init] [varchar](50) NOT NULL,
	[Last_name] [varchar](50) NOT NULL,
	[Net_worth] [int] NULL,
	[career_start] [date] NULL,
	[nationality] [varchar](50) NULL,
	[image_file] [varchar](max) NULL,
	[sex] [nchar](10) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prod.comp]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prod.comp](
	[Com_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Founded_In] [date] NULL,
 CONSTRAINT [PK_prod.comp] PRIMARY KEY CLUSTERED 
(
	[Com_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prodBY]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodBY](
	[ID_movie] [int] NOT NULL,
	[id_production] [int] NOT NULL,
 CONSTRAINT [PK_prodBY] PRIMARY KEY CLUSTERED 
(
	[ID_movie] ASC,
	[id_production] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ratings]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ratings](
	[ID_movie] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[rate] [int] NOT NULL,
 CONSTRAINT [PK_ratings] PRIMARY KEY CLUSTERED 
(
	[ID_movie] ASC,
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/11/2021 7:30:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[Person_ID] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[user_type] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (4, 42, 2019)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (4, 44, 2018)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (4, 47, 2012)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (4, 48, 2010)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (5, 39, 2018)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (5, 50, 2017)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (6, 40, 2000)
INSERT [dbo].[Awarded] ([ID_Award], [ID_Person], [Year]) VALUES (7, 49, 2017)
GO
SET IDENTITY_INSERT [dbo].[Awards] ON 

INSERT [dbo].[Awards] ([Award_ID], [Award_name]) VALUES (4, N'best director from MTV')
INSERT [dbo].[Awards] ([Award_ID], [Award_name]) VALUES (5, N'best actor in usa')
INSERT [dbo].[Awards] ([Award_ID], [Award_name]) VALUES (6, N'best leadeing role')
INSERT [dbo].[Awards] ([Award_ID], [Award_name]) VALUES (7, N'best sub leading role')
INSERT [dbo].[Awards] ([Award_ID], [Award_name]) VALUES (8, N'best performanec')
INSERT [dbo].[Awards] ([Award_ID], [Award_name]) VALUES (9, N'best real actor')
SET IDENTITY_INSERT [dbo].[Awards] OFF
GO
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (42, 6)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (42, 7)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (42, 9)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (42, 10)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (44, 6)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (44, 7)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (47, 12)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (48, 8)
INSERT [dbo].[directed] ([Director_ID], [Movie_ID]) VALUES (48, 11)
GO
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (6, N'action')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (6, N'horror')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (6, N'thriller')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (7, N'love')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (8, N'action')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (9, N'thriller')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (10, N'motivation')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (11, N'life')
INSERT [dbo].[genre] ([ID_movie], [movie_type]) VALUES (12, N'drama')
GO
INSERT [dbo].[Movie_Stars] ([Star_ID], [Movie_ID], [famousquote]) VALUES (39, 6, N'life is good')
INSERT [dbo].[Movie_Stars] ([Star_ID], [Movie_ID], [famousquote]) VALUES (40, 12, N'dont give up')
INSERT [dbo].[Movie_Stars] ([Star_ID], [Movie_ID], [famousquote]) VALUES (49, 11, N'life is tough')
INSERT [dbo].[Movie_Stars] ([Star_ID], [Movie_ID], [famousquote]) VALUES (50, 9, N'dont let some body tell you stop')
INSERT [dbo].[Movie_Stars] ([Star_ID], [Movie_ID], [famousquote]) VALUES (50, 10, NULL)
INSERT [dbo].[Movie_Stars] ([Star_ID], [Movie_ID], [famousquote]) VALUES (50, 11, N'i love life')
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (6, N'Harry Potter and the goblet of fire', CAST(N'2001-09-02' AS Date), 123, N'english', N'20bros', 125, 500, N'usa', NULL, NULL, N'')
INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (7, N'love in the air', CAST(N'2001-09-03' AS Date), 145, N'english', N'warners', 233, 500, N'usa', NULL, NULL, N'magdy')
INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (8, N'paris in winter', CAST(N'2002-08-03' AS Date), 178, N'french', N'20bros', 127, 800, N'england', NULL, NULL, N'peter stone')
INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (9, N'warzone', CAST(N'2009-09-03' AS Date), 200, N'english', N'warners', 290, 900, N'canada', NULL, NULL, N'kori steel')
INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (10, N'interstellar', CAST(N'2001-09-04' AS Date), 300, N'english', N'united', 400, 980, N'usa', NULL, NULL, N'hans zimmer')
INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (11, N'the pursuit of happiness', CAST(N'2008-01-04' AS Date), 190, N'english', N'20bros', 467, 1000, N'usa', NULL, NULL, N'jemmie roy')
INSERT [dbo].[Movies] ([Movie_ID], [Title], [Release_Date], [Duration], [Language], [Dist_by], [Budget], [Box_office], [Country], [img_file], [Plot], [composer]) VALUES (12, N'kalam elnas', CAST(N'2010-05-09' AS Date), 289, N'arabic', N'united', 10, 30, N'egypt', NULL, NULL, N'hani sameh')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (39, CAST(N'2000-01-01' AS Date), N'Peter', N'parker', N'philip', 213, CAST(N'2009-08-05' AS Date), N'egyptian', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (40, CAST(N'2000-02-09' AS Date), N'Amir', N'Adel', N'nawar', 1, CAST(N'2009-01-02' AS Date), N'egyptian', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (41, CAST(N'2001-03-04' AS Date), N'doli', N'hania', N'clare', 23, CAST(N'2010-11-11' AS Date), N'american', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (42, CAST(N'1999-09-01' AS Date), N'nancy', N'peolsi', N'george', 15, CAST(N'2019-09-03' AS Date), N'english', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (43, CAST(N'1980-09-07' AS Date), N'daniel', N'kori', N'jacob', 6, CAST(N'2020-01-02' AS Date), N'canadian', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (44, CAST(N'1999-02-03' AS Date), N'sandy', N'samuel', N'mahmoud', 1, CAST(N'2020-02-02' AS Date), N'egyptian', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (45, CAST(N'1978-09-03' AS Date), N'pogba', N'samuel', N'bolluci', 16, CAST(N'2000-09-02' AS Date), N'french', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (46, CAST(N'1992-09-02' AS Date), N'momo', N'salah', N'karim', 17, CAST(N'2000-01-03' AS Date), N'egyptian', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (47, CAST(N'1978-02-03' AS Date), N'ghada', N'magdy', N'adel', 37, CAST(N'2020-09-01' AS Date), N'egyptian', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (48, CAST(N'1995-09-08' AS Date), N'maria', N'sterling', N'jay', 15, CAST(N'2013-03-03' AS Date), N'american', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (49, CAST(N'1999-05-02' AS Date), N'eddie', N'scottfield', N'ranmaigh', 188, CAST(N'2020-03-01' AS Date), N'danish', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (50, CAST(N'1999-08-04' AS Date), N'ahmed', N'magdy', N'hossam', 1, CAST(N'2017-09-02' AS Date), N'egyptian', NULL, N'male      ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (51, CAST(N'1987-02-03' AS Date), N'magol', N'peter', N'ali', 4, CAST(N'2018-02-03' AS Date), N'english', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (52, CAST(N'2001-09-03' AS Date), N'amira ', N'magdy', N'ali', 1, CAST(N'2015-09-07' AS Date), N'egyptian', NULL, N'female    ')
INSERT [dbo].[People] ([Person_ID], [DOB], [First_name], [M_init], [Last_name], [Net_worth], [career_start], [nationality], [image_file], [sex]) VALUES (53, CAST(N'2000-05-03' AS Date), N'bincharki', N'ranil', N'bozyad', 5, CAST(N'2019-03-05' AS Date), N'morocco', NULL, N'male      ')
SET IDENTITY_INSERT [dbo].[People] OFF
GO
INSERT [dbo].[ratings] ([ID_movie], [User_ID], [rate]) VALUES (6, 14, 5)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (14, 39, N'peterparker23', N'peter', 2)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (15, 40, N'mero', N'mero1', 2)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (16, 42, N'nancy', N'nosa', 3)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (17, 44, N'sand', N'sandol', 3)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (18, 47, N'ghada', N'ghadao', 3)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (19, 48, N'maria', N'mero', 3)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (20, 49, N'eddie2', N'dodo', 2)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (21, 50, N'hoda', N'ahmed2', 2)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (22, 53, N'bino', N'binowow', 4)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (23, 51, N'magol', N'mego', 4)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (24, 52, N'amira54', N'amira34', 4)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (25, 41, N'doll', N'doldol', 4)
INSERT [dbo].[Users] ([User_ID], [Person_ID], [username], [password], [user_type]) VALUES (26, 45, N'main', N'main1', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Awarded]  WITH CHECK ADD  CONSTRAINT [FK_Awarded_Awards] FOREIGN KEY([ID_Award])
REFERENCES [dbo].[Awards] ([Award_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Awarded] CHECK CONSTRAINT [FK_Awarded_Awards]
GO
ALTER TABLE [dbo].[Awarded]  WITH CHECK ADD  CONSTRAINT [FK_Awarded_People] FOREIGN KEY([ID_Person])
REFERENCES [dbo].[People] ([Person_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Awarded] CHECK CONSTRAINT [FK_Awarded_People]
GO
ALTER TABLE [dbo].[directed]  WITH CHECK ADD  CONSTRAINT [FK_directed_Movies] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movies] ([Movie_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[directed] CHECK CONSTRAINT [FK_directed_Movies]
GO
ALTER TABLE [dbo].[directed]  WITH CHECK ADD  CONSTRAINT [FK_directed_People] FOREIGN KEY([Director_ID])
REFERENCES [dbo].[People] ([Person_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[directed] CHECK CONSTRAINT [FK_directed_People]
GO
ALTER TABLE [dbo].[genre]  WITH CHECK ADD  CONSTRAINT [FK_genre_Movies] FOREIGN KEY([ID_movie])
REFERENCES [dbo].[Movies] ([Movie_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[genre] CHECK CONSTRAINT [FK_genre_Movies]
GO
ALTER TABLE [dbo].[head]  WITH CHECK ADD  CONSTRAINT [FK_head_prod.comp] FOREIGN KEY([ID_comany])
REFERENCES [dbo].[prod.comp] ([Com_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[head] CHECK CONSTRAINT [FK_head_prod.comp]
GO
ALTER TABLE [dbo].[Movie_Stars]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Stars_Movies] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movies] ([Movie_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Stars] CHECK CONSTRAINT [FK_Movie_Stars_Movies]
GO
ALTER TABLE [dbo].[Movie_Stars]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Stars_People] FOREIGN KEY([Star_ID])
REFERENCES [dbo].[People] ([Person_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Stars] CHECK CONSTRAINT [FK_Movie_Stars_People]
GO
ALTER TABLE [dbo].[prodBY]  WITH CHECK ADD  CONSTRAINT [FK_prodBY_Movies] FOREIGN KEY([ID_movie])
REFERENCES [dbo].[Movies] ([Movie_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prodBY] CHECK CONSTRAINT [FK_prodBY_Movies]
GO
ALTER TABLE [dbo].[prodBY]  WITH CHECK ADD  CONSTRAINT [FK_prodBY_prod.comp] FOREIGN KEY([id_production])
REFERENCES [dbo].[prod.comp] ([Com_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prodBY] CHECK CONSTRAINT [FK_prodBY_prod.comp]
GO
ALTER TABLE [dbo].[ratings]  WITH CHECK ADD  CONSTRAINT [FK_ratings_Movies] FOREIGN KEY([ID_movie])
REFERENCES [dbo].[Movies] ([Movie_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ratings] CHECK CONSTRAINT [FK_ratings_Movies]
GO
ALTER TABLE [dbo].[ratings]  WITH CHECK ADD  CONSTRAINT [FK_ratings_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ratings] CHECK CONSTRAINT [FK_ratings_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_People] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[People] ([Person_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_People]
GO
