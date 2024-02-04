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
use BookstoreDB
go

drop table if exists ShelfGenre
drop table if exists BookGenre
drop table if exists ShelfBook
drop table if exists Shelf
drop table if exists Book
drop table if exists Genre
drop table if exists Author
drop table if exists Bookstore
go

create table dbo.Bookstore(
    BookstoreId int not null identity primary key,
    BookstoreName varchar(100) not null constraint ck_bookStorename_cannot_be_blank check(BookstoreName <> ''),
    BookstoreCode int not null 
        constraint ck_Bookstore_BookstoreCode_must_be_greater_than_0 check(BookstoreCode > 0)
        constraint u_Bookstore_BookstoreCode unique
)
go
create table dbo.Author(
    AuthorId int not null identity primary key, 
    FirstName varchar(35) not null constraint ck_Author_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(35) not null constraint ck_Author_LastName_cannot_be_blank check(LastName <> ''),
    constraint u_Author_firstname_lastname unique(FirstName, LastName) 
)
go 
create table dbo.Genre(
    GenreId int not null identity primary key,
    GenreName varchar(20) not null
        constraint ck_Genre_GenreName_cannot_be_blank check(GenreName <> '')
        constraint u_Genre_GenreName unique
)
go
create table dbo.Book(
    BookId int not null identity primary key,
    AuthorId int not null constraint f_Author_Book foreign key references Author(AuthorId),
    Title varchar(150) not null constraint ck_Book_Title_cannot_be_blank check(Title <> ''),
    YearPublished int not null constraint ck_Book_YearPublished_must_be_greater_than_0 check(YearPublished > 0),
    ISBN uniqueidentifier not null default newid() constraint u_Book_ISBN unique,
        constraint u_Book_Author_Title unique(AuthorId, Title)
)
go
create table dbo.Shelf(
    ShelfId int not null identity primary key,
    BookstoreId int not null constraint f_Bookstore_Shelf foreign key references Bookstore(BookstoreId),
    ShelfSequence int not null constraint ck_Shelf_ShelfSequence_must_be_greater_than_0 check(ShelfSequence > 0),
        constraint u_Shelf_BookstoreId_ShelfSequence unique(BookstoreId, ShelfSequence)
)
go 
create table dbo.ShelfBook(
    ShelfBookId int not null identity primary key,
    BookId int not null constraint f_Book_ShelfBook foreign key references Book(BookId), 
    ShelfId int not null constraint f_Shelf_ShelfBook foreign key references Shelf(ShelfId),  
    Quantity int not null constraint ck_ShelfBook_Quantity_must_be_greater_than_0 check(Quantity > 0),
        constraint u_ShelfBook_Book_Shelf unique(BookId, ShelfId)
)
go
create table dbo.BookGenre(
    BookGenreId int not null identity primary key,
    BookId int not null constraint f_Book_BookGenre foreign key references Book(BookId),
    GenreId int not null constraint f_Genre_BookGenre foreign key references Genre(GenreId),
        constraint u_BookGenre_Book_Genre unique(BookId, GenreId)
)
go 
create table dbo.ShelfGenre(
    ShelfGenreId int not null identity primary key,
    ShelfId int not null constraint f_Shelf_ShelfGenre foreign key references Shelf(ShelfId),
    GenreId int not null constraint f_Genre_ShelfGenre foreign key references Genre(GenreId),
    constraint u_ShelfGenre_Shelf_Genre unique(ShelfId, GenreId)
)
go
