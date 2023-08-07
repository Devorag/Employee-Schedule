use BookstoreDB
go
delete ShelfGenre
delete BookGenre
delete ShelfBook
delete Shelf
delete Book
delete Genre
delete Author
delete Bookstore
go

--1)
--a) populate the tables with (at least 3) bookstores (start code number at 100 and increase by 1 for each store)
insert Bookstore(BookstoreName, BookstoreCode)
select 'Apple Books', 100
union select 'Best Reads', 101
union select 'Crazy Chapters', 102
union select 'Deals Deals Deals', 103

--b)  genres, authors
insert Genre(GenreName)
select 'Fiction'
union select 'Historical Fiction'
union select 'Fantasy'
union select 'Biography'
union select 'True Crime'

insert Author(FirstName, LastName)
select 'Alice', 'Aard'
union select 'Bernard', 'Bijou'
union select 'Cain', 'Creamicesky'
union select 'Donald', 'Doolittle'

--c) books (some authors should have multiple books)
;
with x as (
    select FirstName = 'Alice', LastName = 'Aard', Title = 'Always High', YearPublished = 1999
    union select 'Alice', 'Aard', 'Artificial Times', 2000
    union select 'Alice', 'Aard', 'A Confession', 2001
    union select 'Bernard','Bijou', 'Bad Crime', 1999
    union select 'Bernard','Bijou', 'Better Slow It Down', 1998
    union select 'Donald', 'Doolittle', 'Diminishing Freedom', 2000
    union select 'Donald', 'Doolittle', 'Drag Racing', 1975
    union select 'Donald', 'Doolittle', 'Deadly Adventure', 1978
    union select 'Cain', 'Creamicesky', 'Cream Life', 1970
    union select 'Cain', 'Creamicesky', 'Chocolate Secrets', 1980
    union select 'Cain', 'Creamicesky', 'Child World', 1980
)
insert book(AuthorId, Title, YearPublished)
select a.AuthorId, x.Title, x.YearPublished
from x
join author a
on a.FirstName = x.FirstName
and a.LastName = x.LastName

--d) give all books at least 1 genre, and some multiple genres
;
with x as (
    select Title = 'A Confession',GenreName = 'Biography'
    union select 'A Confession','True Crime'
    union select 'Always High','Biography'
    union select 'Always High','Fantasy'
    union select 'Always High','True Crime'
    union select 'Artificial Times','Fiction'
    union select 'Bad Crime','True Crime'
    union select 'Better Slow It Down','Fiction'
    union select 'Child World','Historical Fiction'
    union select 'Chocolate Secrets','Fantasy'
    union select 'Chocolate Secrets','Fiction'
    union select 'Cream Life','Biography'
    union select 'Deadly Adventure','Fiction'
    union select 'Diminishing Freedom','Historical Fiction'
    union select 'Drag Racing','Fantasy'
)
insert BookGenre(BookId, GenreId)
select b.BookId, g.GenreId
from x
join book b
on b.Title = x.Title
join genre g
on g.GenreName = x.GenreName

--e) give all stores 5 shelves
;
with x as (
    select ShelfSequence = 1
    union select ShelfSequence = 2
    union select ShelfSequence = 3
    union select ShelfSequence = 4
    union select ShelfSequence = 5
)
insert Shelf(BookstoreId, ShelfSequence)
select b.BookstoreId, x.ShelfSequence
from x 
cross join bookstore b

--f) give the store that has the lowest code an additional shelf
insert Shelf(BookstoreId,ShelfSequence)
select top 1 b.BookstoreId, 6
from Bookstore b
order by b.BookstoreCode

--2) for all stores
--a) populate one shelf with all books
insert ShelfBook(bookid, ShelfId, Quantity)
select b.BookId, s.ShelfId, 1
from book b 
cross join shelf s
where s.ShelfSequence = 1

--b) populate one shelf with multiple copies of one book
;
with x as (
    select ShelfSequence= 2, Title = 'Child World', FirstName = 'Cain', LastName = 'Creamicesky'
)
insert ShelfBook(bookid, ShelfId, Quantity)
select b.BookId, s.ShelfId, 2
from x
join book b 
on b.Title = x.Title
join Author a 
on a.LastName = x.LastName
and a.FirstName = x.FirstName
join shelf s
on x.ShelfSequence = s.ShelfSequence

--c) populate one shelf with all books from one author
insert ShelfBook(bookid, ShelfId, Quantity)
select b.BookId, s.ShelfId, 1
from book b 
join Author a 
on a.AuthorId = b.AuthorId
cross join shelf s
where s.ShelfSequence = 3
and a.FirstName = 'Bernard' and a.LastName = 'Bijou'

--d) give some shelves at least one genre and some shelves multiple genres
;
with x as (
    select ShelfSequence = 3, GenreName = 'Biography'
    union select 3, 'Historical Fiction'    
    union select 4, 'Fantasy'    
    union select 5, 'Fiction'    
)
insert ShelfGenre(ShelfId, GenreId)
select s.ShelfId, g.GenreId
from x
join shelf s
on x.ShelfSequence = s.ShelfSequence
join genre g
on g.GenreName = x.GenreName

--e) fill all genre shelves with 5 copies of books that have matching genre
-- NOTE: If the shelf already has a copy of a particular book, you will not be able to INSERT. Instead, add another 5 copies 
update sb
set sb.Quantity += 5 -- Same thing as Quantity = Quantity + 5
from ShelfBook sb
join ShelfGenre sg 
on sg.ShelfId = sb.ShelfId
join bookgenre bg
on bg.GenreId = sg.GenreId -- Get all books that match the shelf genre 
where sb.BookId = bg.BookId -- This book is already on the shelf 

insert ShelfBook(bookid, ShelfId, Quantity)
select bg.BookId, sg.ShelfId, 5
from bookgenre bg
join shelfgenre sg
on bg.GenreId = sg.GenreId -- Match book genre to shelf genre
left join ShelfBook sb
on sb.BookId = bg.BookId
and sb.ShelfId = sg.ShelfId
where sb.ShelfBookId is null -- This book is not already on the shelf

--f) give all stores one shelf without any books, new shelf sequence should be 1 higher than the current highest shelf sequence for the store
insert Shelf(BookstoreId, ShelfSequence)
select b.BookstoreId, max(s.ShelfSequence) + 1
from Bookstore b
left join Shelf s
on b.BookstoreId = s.BookstoreId
group by b.BookstoreId

--g) create a new store (suggested name: Early Bird Books), give it a code 100 more than highest current code
insert Bookstore(BookstoreName, BookstoreCode)
select 'Early Bird Books', max(b.BookstoreCode) + 100 
from Bookstore b
