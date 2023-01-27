USE [royal-library]
GO
/****** Object:  Table [dbo].[books]    Script Date: 1/27/2023 4:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[total_copies] [int] NOT NULL,
	[copies_in_use] [int] NOT NULL,
	[type] [varchar](50) NULL,
	[isbn] [varchar](80) NULL,
	[category] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[books] ON 
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (1, N'Pride and Prejudice', N'Jane', N'Austen', 100, 80, N'Hardcover', N'1234567891', N'Fiction')
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (2, N'To Kill a Mockingbird', N'Harper', N'Lee', 75, 65, N'Paperback', N'1234567892', N'Fiction')
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (3, N'The Catcher in the Rye', N'J.D.', N'Salinger', 50, 45, N'Hardcover', N'1234567893', N'Fiction')
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (4, N'The Great Gatsby', N'F. Scott', N'Fitzgerald', 50, 22, N'Hardcover', N'1234567894', N'Non-Fiction')
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (5, N'The Alchemist', N'Paulo', N'Coelho', 50, 35, N'Hardcover', N'1234567895', N'Biography')
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (6, N'The Book Thief', N'Markus', N'Zusak', 75, 11, N'Hardcover', N'1234567896', N'Mystery')
GO
INSERT [dbo].[books] ([book_id], [title], [first_name], [last_name], [total_copies], [copies_in_use], [type], [isbn], [category]) VALUES (7, N'Bride and Justice', N'Jimmy', N'Mcgill', 100, 80, N'Hardcover', N'1234567898', N'Lawyers')
GO
SET IDENTITY_INSERT [dbo].[books] OFF
GO
ALTER TABLE [dbo].[books] ADD  DEFAULT ((0)) FOR [total_copies]
GO
ALTER TABLE [dbo].[books] ADD  DEFAULT ((0)) FOR [copies_in_use]
GO
