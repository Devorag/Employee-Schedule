
/*
Bookstore
    Name varchar(100)
    Code int unique
Author
    First Name varchar(35)
    Last Name varchar(35)
    unique first last name
Genre
    Genre name varchar (20) unique
Book
    AuthorId (fk author)
    Title varchar(150)
    Year Published int
    ISBN uniqueidentifier
    unique author, title
Shelf
    BookstoreId (fk Bookstore)
    Sequence int
    unique BookstoreId, sequence
ShelfBook
    BookId (fk book)
    ShelfId (fk shelf)
    Qty
    unique BookId, ShelfId
BookGenre
    BookId (fk book)
    GenreId (fk genre)
    unique bookid, genreid
ShelfGenre
    ShelfId (fk shelf)
    GenreId (fk genre)
    unique shelfid, genreid
*/