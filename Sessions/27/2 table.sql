/*
I have a chain of Bookstores and I need software to manage Bookstore inventory and shelving. 
Each Bookstore should have a name and a unique numeric code for quick reference.
That also allows for us to have two Bookstores with the same name.
You don't need to record any location information about the Bookstore; we have a separate system for that 
and will use the Bookstore code in the other system.
A book has an author, title, year published, ISBN (use a GUID for the ISBN). 
No two authors can have the same first name and last name.
An author cannot have two books with the same title.
Each store has shelves, each shelf has a numerical sequence number.
The system should be able to record and report which books are on which shelves.
Some shelves have a mix of books, a shelf can have multiple copies of one book.
Books and shelves can have one or more categories. That allows us to keep similar books on a shelf.
*/
use BookStoreDB 
go 
drop table if exists BookGenre
drop table if exists ShelfGenre
drop table if exists ShelfBook
drop table if exists Shelf 
drop table if exists Book 
drop table if exists Genre
drop table if exists Author
drop table if exists Bookstore 
go 
create table dbo.Bookstore(
    BookStoreId int not null identity primary key, 
    BookStoreName varchar(200) not null constraint Ck_BookStore_BookStoreName_cannot_be_blank CHECK(BookStoreName <> ''),
    BookStoreCode int not null 
    CONSTRAINT ck_BookStore_BookStoreCode_must_be_Greater_than_zero check(BookStoreCode > 0)
    constraint u_BookStore_BookStoreCode unique 
)
go 
create table dbo.Author(
    AuthorId int not null identity primary key,
    FirstName varchar(100) not null constraint ck_author_firstname_cannot_be_Blank check(FirstName <> ''),
    LastName varchar(100) not null constraint ck_author_lastname_Cannot_be_blank check(lastname <> '')
    constraint u_author_firstname_lastname unique(firstname, lastname)
)
go 
create table dbo.Genre(
    GenreId int not null identity primary key,
    GenreName varchar(100) not null constraint ck_genre_GenreName_cannot_be_blank check(GenreName <> '')
    constraint u_genre_GenreName unique 
)
go 
create table dbo.book(
    BookId int not null identity primary key,
    AuthorID int not null constraint f_author_book foreign key references author(authorId),
    Title varchar(300) not null constraint ck_Book_title_cannot_be_Blank check(title <> ''),
    YearPublished int not null constraint ck_Book_yearpublished_cannot_be_future_date check(yearpublished < getdate()),
    ISBN uniqueidentifier not null default newid() constraint u_Book_ISBN unique,
    constraint u_book_authorId_title unique(AuthorID, Title)
)
go
create table dbo.Shelf(
    ShelfId int not null identity primary key, 
    BookStoreId int not null constraint f_bookstore_shelf foreign key references bookstore(BookstoreId),
    ShelfSequenceNumber int not null 
    constraint ck_shelf_shelfsequencenumber_must_be_greater_than_Zero check(ShelfSequenceNumber > 0)
    constraint u_Shelf_BookStoreId_ShelfSequenceNumber unique(BookStoreId, ShelfSequenceNumber)
)
go 
create table dbo.ShelfBook(
    ShelfBookId int not null identity primary key, 
    BookId int not null constraint f_Book_ShelfBook foreign key references Book(BookId),
    ShelfId int not null constraint f_Shelf_ShelfBook foreign key references Shelf(ShelfId),
    Quantity int not null constraint ck_shelfbook_quantity_must_be_greater_than_Zero check(quantity > 0)
    constraint u_ShelfBook_BookId_ShelfId unique(BookId, ShelfId)
)
go 
create table dbo.BookGenre(
    BookGenreId int not null identity primary key,
    BookId int not null constraint f_book_bookgenre foreign key references Book(BookId),
    GenreId int not null constraint f_genre_bookgenre foreign key references Genre(GenreId)
)
go
create table dbo.ShelfGenre(
    ShelfGenreId int not null identity primary key,
    ShelfId int not null constraint f_Shelf_ShelfGenre foreign key references Shelf(ShelfId),
    GenreId int not null constraint f_Genre_ShelfGenre foreign key references Genre(GenreID)
    constraint u_ShelfGenre_ShelfId_GenreId unique(ShelfId, GenreId)
)
go 