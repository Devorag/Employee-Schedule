--1) 
--a) Add a new fantasy book by a new author. 
--b) For store 100, put 3 copies on the shelf that has the fewest books. 
--c) For store 101, create a new shelf  and give it that genre (Fantasy), set the shelf sequence to 1 higher than highest current sequence, and put 5 copies of the new book there

--a)
insert Author(FirstName, LastName)
select 'Newt', 'Netherman'

insert Book(AuthorId, Title, YearPublished)
select a.AuthorId, 'New Look at Never Never Land', 2022
from Author a 
where a.FirstName = 'Newt' and LastName = 'Netherman'

insert BookGenre(BookId, GenreId)
select k.BookId, g.GenreId
from Genre g
cross join book k
where k.Title = 'New Look at Never Never Land'
and g.GenreName = 'Fantasy'

--b)
;with fewestBooks as (
    select top 1 s.ShelfId, TotalBooks = sum(sb.Quantity)
    from ShelfBook sb
    join Shelf s
    on s.ShelfId = sb.ShelfId
    join Bookstore bs
    on bs.BookstoreId = s.BookstoreId
    where bs.BookstoreCode = 100
    group by s.ShelfId
    order by TotalBooks
)
insert ShelfBook(BookId, ShelfId, Quantity)
select b.BookId, fb.ShelfId, 3
from fewestBooks fb
cross join Book b
where b.Title = 'New Look at Never Never Land'

--c)
insert Shelf(BookstoreId, ShelfSequence)
select bs.BookstoreId, max(s.ShelfSequence) + 1
from Bookstore bs
join Shelf s
on s.BookstoreId = bs.BookstoreId
where bs.BookstoreCode = 101
group by bs.BookstoreId

insert ShelfGenre(ShelfId, GenreId)
select top 1 s.ShelfId, g.GenreId
from Shelf s 
join Bookstore bs
on bs.BookstoreId = s.BookstoreId
cross join Genre g
where bs.BookstoreCode = 101
and g.GenreName = 'Fantasy'
order by s.ShelfSequence desc

insert ShelfBook(ShelfId, BookId, Quantity)
select top 1 s.ShelfId, b.BookId, 5
from Shelf s 
join Bookstore bs
on bs.BookstoreId = s.BookstoreId
cross join Book b
where bs.BookstoreCode = 101
and b.Title = 'New Look at Never Never Land'
order by s.ShelfSequence desc

/*
2) We would like to dedicate shelf 1 in all stores for "New Releases"
a) Add new editions of the all books that are older than the average age of all books. 
    The new edition should be by the same author, released the current year. 
    The title should be "The All New [Old Title]"
b) Clear out shelf 1 for all stores
c) Populate shelf 1 with all books that were written in the current year. 
*/
--a)
;with AvgYearPublished as (
    select AvgYearPublished = avg(YearPublished)
    from Book
)
insert Book(AuthorId, Title, YearPublished)
select b.AuthorId, 'The All New ' + b.Title, year(getdate())
from Book b
join AvgYearPublished a
on b.YearPublished < a.AvgYearPublished
order by b.YearPublished

--b)
delete sb
from Shelf s
join ShelfBook sb
on s.ShelfId = sb.ShelfId
where s.ShelfSequence = 1

--c)
insert ShelfBook(BookId, ShelfId, Quantity)
select b.BookId, s.shelfid, 1
from shelf s
cross join Book b 
where s.ShelfSequence = 1
and b.YearPublished = year(getdate())

--3) There was an uptick in crime and it may be related to information that criminals have gotten from books in the "True Crime" genre.
--Remove any books with this genre from the shelves. (Don't remove the books from the book table, just from the shelves.)
delete sb
from ShelfBook sb
join Book b
on b.BookId = sb.BookId
join BookGenre bg
on bg.BookId = b.BookId
join Genre g
on g.GenreId = bg.GenreId
where g.GenreName = 'True Crime'

/*
4) Bookstore 101 is closing, and our system is no longer tracking any of its data. Delete the bookstore and all its data. 
*/

--a)
delete sg 
from ShelfGenre sg
join Shelf s
on sg.ShelfId = s.ShelfId
join Bookstore b
on s.BookstoreId = b.BookstoreId
where b.BookstoreCode = 101

delete sb 
from ShelfBook sb
join Shelf s
on sb.ShelfId = s.ShelfId
join Bookstore b
on s.BookstoreId = b.BookstoreId
where b.BookstoreCode = 101

delete s 
from Shelf s
join Bookstore b
on s.BookstoreId = b.BookstoreId
where b.BookstoreCode = 101

delete b
from Bookstore b
where b.BookstoreCode = 101

