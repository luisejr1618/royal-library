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
INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('Pride and Prejudice', 'Jane', 'Austen', 100, 80, 'Hardcover', '1234567891', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('To Kill a Mockingbird', 'Harper', 'Lee', 75, 65, 'Paperback', '1234567892', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Catcher in the Rye', 'J.D.', 'Salinger', 50, 45, 'Hardcover', '1234567893', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Great Gatsby', 'F. Scott', 'Fitzgerald', 50, 22, 'Hardcover', '1234567894', 'Non-Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Alchemist', 'Paulo', 'Coelho', 50, 35, 'Hardcover', '1234567895', 'Biography');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Book Thief', 'Markus', 'Zusak', 75, 11, 'Hardcover', '1234567896', 'Mystery');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Chronicles of Narnia', 'C.S.', 'Lewis', 100, 14, 'Paperback', '1234567897', 'Sci-Fi');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Da Vinci Code', 'Dan', 'Brown', 50, 40, 'Paperback', '1234567898', 'Sci-Fi');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Grapes of Wrath', 'John', 'Steinbeck', 50, 35, 'Hardcover', '1234567899', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Hitchhiker''s Guide to the Galaxy', 'Douglas', 'Adams', 50, 35, 'Paperback', '1234567900', 'Non-Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('Moby-Dick', 'Herman', 'Melville', 30, 8, 'Hardcover', '8901234567', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('To Kill a Mockingbird', 'Harper', 'Lee', 20, 0, 'Paperback', '9012345678', 'Non-Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Catcher in the Rye', 'J.D.', 'Salinger', 10, 1, 'Hardcover', '0123456789', 'Non-Fiction');

SET IDENTITY_INSERT [dbo].[books] OFF
GO
ALTER TABLE [dbo].[books] ADD  DEFAULT ((0)) FOR [total_copies]
GO
ALTER TABLE [dbo].[books] ADD  DEFAULT ((0)) FOR [copies_in_use]
GO
