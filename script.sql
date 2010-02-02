USE [alexandria]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ImageUrl] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (1, N'DSLSs in Boo', N'http://www.manning.com/rahien/rahien_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (2, N'DSLs in Action', N'http://www.manning.com/ghosh/ghosh_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (3, N'NHibernate in Action', N'http://www.manning.com/kuate/kuate_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (4, N'Real-World Functional Programming', N'http://www.manning.com/petricek/petricek_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (5, N'The Art of Unit Testing', N'http://www.manning.com/osherove/osherove_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (6, N'Brownfield Application Development in .NET', N'http://www.manning.com/baley/baley_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (7, N'C# in Depth', N'http://www.manning.com/skeet/skeet_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (8, N'Hibernate Search in Action', N'http://www.manning.com/bernard/bernard_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (9, N'Java Persistence with Hibernate', N'http://www.manning.com/bauer2/bauer2_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (10, N'Erlang and OTP in Action', N'http://www.manning.com/logan/logan_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (11, N'CouchDB in Action', N'http://www.manning.com/chandler/chandler_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (12, N'Algorithms of the Intelligent Web', N'http://www.manning.com/marmanis/marmanis_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (13, N'Lucene in Action', N'http://www.manning.com/hatcher3/hatcher3_cover150.jpg')
INSERT [dbo].[Books] ([Id], [Name], [ImageUrl]) VALUES (14, N'Event Processing in Action', N'http://www.manning.com/etzion/etzion_cover150.jpg')
/****** Object:  Table [dbo].[Authors]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (1, N'Ayende Rahien')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (13, N'Christian Bauer')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (9, N'Christopher Chandler')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (24, N'Debasish Ghosh')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (8, N'Dmitry Babenko')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (21, N'Donald Belcham')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (17, N'Emmanuel Bernard')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (11, N'Eric Merritt')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (4, N'Erik Hatcher')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (14, N'Gavin King')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (7, N'Haralambos Marmanis')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (18, N'John Griffin')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (19, N'Jon Skeet')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (20, N'Kyle Baley')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (10, N'Martin Logan')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (6, N'Michael McCandless')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (2, N'Opher Etzion')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (5, N'Otis Gospodnetić')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (3, N'Peter Niblett')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (16, N'Pierre Henri Kuaté')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (12, N'Richard Carlsson')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (22, N'Roy Osherove')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (15, N'Tobin Harris')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (23, N'Tomas Petricek')
/****** Object:  Table [dbo].[Users]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Street] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](255) NULL,
	[HouseNumber] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([Id], [Name], [Street], [Country], [City], [ZipCode], [HouseNumber]) VALUES (1, N'Oren Eini', N'Sikui', N'Israel', N'Haser', N'39191', N'15')
/****** Object:  Table [dbo].[hibernate_unique_key]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hibernate_unique_key](
	[next_hi] [bigint] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[hibernate_unique_key] ([next_hi]) VALUES (1)
/****** Object:  Table [dbo].[UsersWaitingBooks]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersWaitingBooks](
	[User] [bigint] NOT NULL,
	[Book] [bigint] NOT NULL,
	[Index] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[Index] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsersWaitingBooks] ([User], [Book], [Index]) VALUES (1, 4, 0)
INSERT [dbo].[UsersWaitingBooks] ([User], [Book], [Index]) VALUES (1, 5, 1)
INSERT [dbo].[UsersWaitingBooks] ([User], [Book], [Index]) VALUES (1, 6, 2)
/****** Object:  Table [dbo].[UsersRecommendedBooks]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersRecommendedBooks](
	[User] [bigint] NOT NULL,
	[Book] [bigint] NOT NULL,
	[Index] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[Index] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsersRecommendedBooks] ([User], [Book], [Index]) VALUES (1, 7, 0)
INSERT [dbo].[UsersRecommendedBooks] ([User], [Book], [Index]) VALUES (1, 8, 1)
INSERT [dbo].[UsersRecommendedBooks] ([User], [Book], [Index]) VALUES (1, 9, 2)
INSERT [dbo].[UsersRecommendedBooks] ([User], [Book], [Index]) VALUES (1, 10, 3)
INSERT [dbo].[UsersRecommendedBooks] ([User], [Book], [Index]) VALUES (1, 11, 4)
INSERT [dbo].[UsersRecommendedBooks] ([User], [Book], [Index]) VALUES (1, 12, 5)
/****** Object:  Table [dbo].[UsersReadingBooks]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersReadingBooks](
	[Book] [bigint] NOT NULL,
	[User] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[Book] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsersReadingBooks] ([Book], [User]) VALUES (1, 1)
INSERT [dbo].[UsersReadingBooks] ([Book], [User]) VALUES (2, 1)
INSERT [dbo].[UsersReadingBooks] ([Book], [User]) VALUES (3, 1)
/****** Object:  Table [dbo].[BooksAuthors]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BooksAuthors](
	[Book] [bigint] NOT NULL,
	[Author] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Book] ASC,
	[Author] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (1, 1)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (2, 24)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (3, 13)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (3, 14)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (3, 15)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (3, 16)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (4, 19)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (4, 23)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (5, 22)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (6, 20)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (6, 21)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (7, 19)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (8, 17)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (8, 18)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (9, 13)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (9, 14)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (10, 10)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (10, 11)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (10, 12)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (11, 9)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (12, 7)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (12, 8)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (13, 4)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (13, 5)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (13, 6)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (14, 2)
INSERT [dbo].[BooksAuthors] ([Book], [Author]) VALUES (14, 3)
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 02/02/2010 22:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[Id] [bigint] NOT NULL,
	[NumberOfPossibleBooksOut] [int] NOT NULL,
	[CreditCard] [nvarchar](255) NOT NULL,
	[MonthlyCost] [decimal](19, 5) NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[User] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Subscriptions] ([Id], [NumberOfPossibleBooksOut], [CreditCard], [MonthlyCost], [Start], [End], [User]) VALUES (1, 3, N'xxxx-xxxx-xxx-8901', CAST(21.00000 AS Decimal(19, 5)), CAST(0x00009B8400000000 AS DateTime), CAST(0x00009E5E00000000 AS DateTime), 1)
/****** Object:  ForeignKey [FKBF5E66AF26F632C9]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[BooksAuthors]  WITH CHECK ADD  CONSTRAINT [FKBF5E66AF26F632C9] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[BooksAuthors] CHECK CONSTRAINT [FKBF5E66AF26F632C9]
GO
/****** Object:  ForeignKey [FKBF5E66AF4CBDFC5D]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[BooksAuthors]  WITH CHECK ADD  CONSTRAINT [FKBF5E66AF4CBDFC5D] FOREIGN KEY([Author])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[BooksAuthors] CHECK CONSTRAINT [FKBF5E66AF4CBDFC5D]
GO
/****** Object:  ForeignKey [FKCA9B8A3CB63F0675]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[BooksAuthors]  WITH CHECK ADD  CONSTRAINT [FKCA9B8A3CB63F0675] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[BooksAuthors] CHECK CONSTRAINT [FKCA9B8A3CB63F0675]
GO
/****** Object:  ForeignKey [FKCA9B8A3CD9009E55]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[BooksAuthors]  WITH CHECK ADD  CONSTRAINT [FKCA9B8A3CD9009E55] FOREIGN KEY([Author])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[BooksAuthors] CHECK CONSTRAINT [FKCA9B8A3CD9009E55]
GO
/****** Object:  ForeignKey [FKAC7E7D546BDD1425]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FKAC7E7D546BDD1425] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FKAC7E7D546BDD1425]
GO
/****** Object:  ForeignKey [FK2AEDA86BDD1425]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersReadingBooks]  WITH CHECK ADD  CONSTRAINT [FK2AEDA86BDD1425] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersReadingBooks] CHECK CONSTRAINT [FK2AEDA86BDD1425]
GO
/****** Object:  ForeignKey [FK2AEDA8B63F0675]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersReadingBooks]  WITH CHECK ADD  CONSTRAINT [FK2AEDA8B63F0675] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[UsersReadingBooks] CHECK CONSTRAINT [FK2AEDA8B63F0675]
GO
/****** Object:  ForeignKey [FKC217F9D426F632C9]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersReadingBooks]  WITH CHECK ADD  CONSTRAINT [FKC217F9D426F632C9] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[UsersReadingBooks] CHECK CONSTRAINT [FKC217F9D426F632C9]
GO
/****** Object:  ForeignKey [FKC217F9D42708A597]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersReadingBooks]  WITH CHECK ADD  CONSTRAINT [FKC217F9D42708A597] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersReadingBooks] CHECK CONSTRAINT [FKC217F9D42708A597]
GO
/****** Object:  ForeignKey [FK49F2C02E26F632B0]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersRecommendedBooks]  WITH CHECK ADD  CONSTRAINT [FK49F2C02E26F632B0] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[UsersRecommendedBooks] CHECK CONSTRAINT [FK49F2C02E26F632B0]
GO
/****** Object:  ForeignKey [FK49F2C02E2708B591]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersRecommendedBooks]  WITH CHECK ADD  CONSTRAINT [FK49F2C02E2708B591] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersRecommendedBooks] CHECK CONSTRAINT [FK49F2C02E2708B591]
GO
/****** Object:  ForeignKey [FKF207F7916BDD1425]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersRecommendedBooks]  WITH CHECK ADD  CONSTRAINT [FKF207F7916BDD1425] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersRecommendedBooks] CHECK CONSTRAINT [FKF207F7916BDD1425]
GO
/****** Object:  ForeignKey [FKF207F791B63F0675]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersRecommendedBooks]  WITH CHECK ADD  CONSTRAINT [FKF207F791B63F0675] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[UsersRecommendedBooks] CHECK CONSTRAINT [FKF207F791B63F0675]
GO
/****** Object:  ForeignKey [FK49F2C02E26F632C9]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersWaitingBooks]  WITH CHECK ADD  CONSTRAINT [FK49F2C02E26F632C9] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[UsersWaitingBooks] CHECK CONSTRAINT [FK49F2C02E26F632C9]
GO
/****** Object:  ForeignKey [FK49F2C02E2708A597]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersWaitingBooks]  WITH CHECK ADD  CONSTRAINT [FK49F2C02E2708A597] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersWaitingBooks] CHECK CONSTRAINT [FK49F2C02E2708A597]
GO
/****** Object:  ForeignKey [FKE0B262536BDD1425]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersWaitingBooks]  WITH CHECK ADD  CONSTRAINT [FKE0B262536BDD1425] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersWaitingBooks] CHECK CONSTRAINT [FKE0B262536BDD1425]
GO
/****** Object:  ForeignKey [FKE0B26253B63F0675]    Script Date: 02/02/2010 22:36:56 ******/
ALTER TABLE [dbo].[UsersWaitingBooks]  WITH CHECK ADD  CONSTRAINT [FKE0B26253B63F0675] FOREIGN KEY([Book])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[UsersWaitingBooks] CHECK CONSTRAINT [FKE0B26253B63F0675]
GO
