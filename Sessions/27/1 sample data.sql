
--1)
--a) populate the tables with (at least 3) bookstores (start code number at 100 and increase by 1 for each store)
use bookstoreDB 
go 
delete bookstore 
go 
insert Bookstore(BookstoreName, BookStoreCode)
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


--authors
insert Author(FirstName, LastName)
select 'Alice', 'Aard'
union select 'Bernard', 'Bijou'
union select 'Cain', 'Creamicesky'
union select 'Donald', 'Doolittle'

--c) books (some authors should have multiple books)
--books
;
with x as(
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
insert Book(AuthorId, title, yearpublished)
select a.authorId, x.title, x.yearpublished 
from x 
join author a 
on a.firstname = x.firstname 
and a.lastname = x.lastname 
*/
--d) give all books at least 1 genre, and some multiple genres
;
with x as(
    select Title = 'Artificial Times', GenreName = 'Fiction'
    union select 'Always High', 'Fiction'
    union select 'A Confession', 'Historical Fiction'
    union select 'Bad Crime', 'Fantasy'
    union select 'Better Slow it Down', 'Fantasy'
    union select 'Diminishing Freedom', 'Biography'
    union select 'Drag Racing', 'Biography'
    union select 'Deadly Adventure', 'True Crime'
    union select 'Cream Life', 'True Crime'
    union select 'Chocolate Secrets', 'Fiction'
    union select 'Chocolate Secrets', 'Fantasy'
    union select 'Chocolate secrets', 'True Crime'
    union select 'Child World', 'Historical Fiction'
    union select 'Child World', 'Fiction'
)
insert BookGenre(BookId, GenreId)
select b.bookId, g.genreId
from x 
join book b 
on b.title = x.title
join genre g 
on g.genreName = x.genreName
--e) give all stores 5 shelves
;
with x as(
    select ShelfSequence = 1
    union select 2 
    union select 3 
    union select 4 
    union select 5 
)
insert Shelf(BookStoreId, ShelfSequence)
select b.bookstoreId, x.ShelfSequence 
from x 
cross join bookstore bs 
--f) give the store that has the lowest code an additional shelf
insert Shelf(BookstoreId, ShelfSequence)
select top 1 BookStoreCode, 6
from boookstore bs 
order by bookstorecode 
--2) for all stores
--a) populate one shelf with all books
insert ShelfBook(BookId, ShelfId, Quantity)
select b.bookId, s.shelfId, 1
from book b 
cross join shelf s 
where s.ShelfSequenceNumber =1 
--b) populate one shelf with multiple copies of one book
;
with x as(
    select Title = 'Cream Life', ShelfSequenceNumber = 2, FirstName = 'Alice', LastName = 'Aard'
)
insert ShelfBook(BookId, ShelfId, Quantity)
select b.bookId, s.sheldId, 2
from x
join book b 
on b.title = x.title 
join shelf s 
on s.ShelfSequenceNumber = x.ShelfSequenceNumber 
join author a 
on a.LastName = x.LastName 
and a.FirstName = x.FirstName 
--c) populate one shelf with all books from one author
insert ShelfBook(BookId, ShelfId, Quantity)
select b.bookId, s.shelfId, 1 
from book b 
join author a 
on a.AuthorId = b.authorId 
cross join shelf s 
where s.ShelfSequenceNumber = 3 
and a.FirstName = 'Donald'
and a.LastName = 'Doolittle'
--d) give some shelves at least one genre and some shelves multiple genres
;
with x as(
    Select ShelfSequenceNumber = 3, GenreName = 'Fiction'
    3, 'Fantasy'
    3, 'True Crime'
    4, 'Historical Fiction'
    5, 'Biography'
)
insert ShelfGenre(ShelfId, GenreId)
select s.shelfId, g.GenreId 
from x 
join shelf s 
on s.ShelfSequenceNumber = x.shelfsequencenumber
join genre g 
on x.genreName = g.GenreName
--e) fill all genre shelves with 5 copies of books that have matching genre
-- NOTE: If the shelf already has a copy of a particular book, you will not be able to INSERT. Instead, add another 5 copies
update sb 
set sb.quantity += 5
from shelfbook sb 
join ShelfGenre sg 
on sg.ShelfId = sb.ShelfId
join BookGenre bg 
on bg.BookId = sb.BookId
where sb.BookId = bg.BookId 

insert ShelfBook(ShelfId, BookId, Quantity)
select bg.bookId, sg.shelfId, 5 
from bookgenre bg 
join ShelfGenre sg 
on bg.GenreId = sg.GenreId 
left join shelfbook sb 
on sb.ShelfId = sg.ShelfId
where sb.ShelfBookId is null 

--f) give all stores one shelf without any books, new shelf sequence should be 1 higher than the current highest shelf sequence for the store
insert Shelf(BookstoreId, ShelfSequenceNumber)
select b.bookstoreId, max(s.shelfsequencenumber) + 1
from bookstore b 
left join shelf s 
on b.BookStoreId = s.BookStoreId 
group by b.BookStoreId 
--g) create a new store (suggested name: Early Bird Books), give it a code 100 more than highest current code
insert BookStore(BookStoreName, BookStoreCode)
select 'Early Bird Books', max(b.bookstorecode) + 100 
from bookstore b 