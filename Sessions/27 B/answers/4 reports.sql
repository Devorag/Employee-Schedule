--I. REPORTS
--1) Show me a list of stores, shelves, and books (include author's name) sorted by store, author, title, shelf number
select s.BookstoreName, f.ShelfSequence, b.Title, a.FirstName, a.LastName
from Bookstore s 
join shelf f 
on f.BookstoreId = s.BookstoreId
join ShelfBook sb 
on sb.ShelfId = f.ShelfId
join book b 
on b.BookId = sb.BookId
join Author a 
on a.AuthorId = b.AuthorId
order by s.BookstoreCode, a.LastName, a.FirstName, b.Title, f.ShelfSequence

--2) Show me a list of stores and shelves with the total number of books per shelf, show zero if no books
select bs.BookstoreName, bs.BookstoreCode, s.ShelfSequence, TotalBooksPerShelf = isnull(sum(sb.Quantity),0)
from Bookstore bs 
join Shelf s 
on s.BookstoreId = bs.BookstoreId
left join ShelfBook sb 
on sb.ShelfId = s.ShelfId
left join book b 
on sb.BookId = b.BookId
group by s.ShelfSequence, bs.BookstoreName, bs.BookstoreCode
order by bs.BookstoreCode, s.ShelfSequence

--3) Show me a list of stores and a total number books per store, show zero if none
select bs.BookstoreName, bs.BookstoreCode, CountOfBooksPerStore = isnull(sum(sb.Quantity),0)
from Bookstore bs 
left join Shelf s 
on s.BookstoreId = bs.BookstoreId
left join ShelfBook sb 
on sb.ShelfId = s.ShelfId
left join Book b 
on b.BookId = sb.BookId
group by bs.BookstoreCode, bs.BookstoreName
order by bs.BookstoreCode

--4) Show me a list of authors and how many titles (not sum of quantity, just the number of titles) they have in my stores. Order by Author Last Name. Omit authors with zero books.
select a.FirstName, a.LastName, CountofBooksPerAuthor = count(distinct b.Title)
from author a
join book b 
on b.AuthorId = a.AuthorId
group by a.FirstName, a.LastName
order by a.LastName, a.FirstName

--5) Show me the total number of books per store per genre. Order by Bookstore Code, then Genre. Omit genre with no books
select bs.BookstoreName, bs.BookstoreCode, g.GenreName, CountOfBooksPerStoreAndGenre = sum(sb.Quantity)
from Bookstore bs 
join shelf s 
on s.BookstoreId = bs.BookstoreId
join ShelfBook sb 
on sb.ShelfId = s.ShelfId
join book b 
on b.BookId = sb.BookId
join BookGenre bg 
on bg.BookId = b.BookId
join Genre g 
on g.GenreId = bg.GenreId
group by bs.BookstoreName, bs.BookstoreCode, g.GenreName
order by bs.BookstoreCode, g.GenreName

/*
6) We would like to host a major book signing for the author who has the most books (copies, not just titles) in our stores. 
We will print a flyer showing the books written by this author. 
Please prepare a list showing the title, year published, ISBN, and copies in stock (for office use only). Order by Title.

Although we have GUIDs rather than real ISBNs in our system, we need to follow the ISBN standard with a specific format of numbers and dashes. 
ISBNs consist of 13 digits and may be in this format: 000-0-000-00000-0. 
GUIDS consist of 32 characters in this format: 00000000-0000-0000-0000-000000000000. 
There are 5 "sections" separated by dashes. 

Use the following values to tranform the guid to ISBN:
- The first 3 digits should be 978
- 1st character of the guid
- Characters 1-3 of "Section 2" of the guid 
- Characters 1-5 of "Section 5" of the guid
- Last character of the guid
E.g. GUID '10000000-2220-3333-4444-555555555559' => ISBN '978-1-222-55555-9'

HINT: You can use the character position to parse out sections of the guid, but you need to convert to VARCHAR to use the SUBSTRING function
BONUS: Replace any alpha characters (can only be A-F) with their equivalent digit (A=1, B=2 etc.). HINT: Try the TRANSLATE function
*/
;with TotalBooks as (
    select top 1 a.AuthorId, a.FirstName, a.LastName, BooksInStock = sum(sb.Quantity)
    from Bookstore bs
    join Shelf s
    on s.BookstoreId = bs.BookstoreId
    join ShelfBook sb
    on sb.ShelfId = s.ShelfId
    join book b
    on b.BookId = sb.BookId
    join Author a
    on a.AuthorId = b.AuthorId
    group by a.AuthorId, a.FirstName, a.LastName
    order by BooksInStock desc
)
select 
    b.Title, 
    b.YearPublished,
    ISBN = translate(
        concat(
            '978-',
            left(b.ISBN,1),
            substring(convert(varchar(36),b.ISBN),9,4),
            substring(convert(varchar(36),b.ISBN),24,6),
            '-',
            right(b.ISBN,1)
        ),
        'abcdef','123456'
    ),
    BooksInStock = sum(sb.Quantity)
from Bookstore bs
join Shelf s
on s.BookstoreId = bs.BookstoreId
join ShelfBook sb
on sb.ShelfId = s.ShelfId
join book b
on b.BookId = sb.BookId
join TotalBooks tb
on tb.AuthorId = b.AuthorId
group by b.Title, b.YearPublished, b.ISBN
order by b.Title

/*
7) We are organizing the shelves by genre. Show the following reports in one result set. 
        Columns: Bookstore Code, Bookstore Name, Shelf Sequence, and a Shelf Status column (specified below for each result set) . 
        Also sort by these columns.
*/
--a) Shelves that have no genre. Shelf Status = 'No Genre'
select b.BookstoreCode, b.BookstoreName, s.ShelfSequence, ShelfStatus = 'No genre'
from Shelf s
join Bookstore b
on b.BookstoreId = s.BookstoreId
left join ShelfGenre sg
on s.ShelfId = sg.ShelfId
where sg.GenreId is null
--b) Shelves that have multiple genres. Shelf Status = 'Multiple Genres'
union select b.BookstoreCode, b.BookstoreName, s.ShelfSequence, ShelfStatus = 'Multiple Genres'
from Shelf s
join Bookstore b
on b.BookstoreId = s.BookstoreId
join ShelfGenre sg
on s.ShelfId = sg.ShelfId
group by s.ShelfId, b.BookstoreCode, b.BookstoreName, s.ShelfSequence
having count(*) >= 2
--c) Shelves containing books that are not for the Shelf Genre. Shelf Status = 'Mismatch book and shelf genre'
union select distinct bs.BookstoreCode, bs.BookstoreName, s.ShelfSequence, ShelfStatus = 'Mismatch book and shelf genre'
from Shelf s
join Bookstore bs
on bs.BookstoreId = s.BookstoreId
join ShelfGenre sg
on s.ShelfId = sg.ShelfId
join ShelfBook sb
on sb.ShelfId = s.ShelfId
join Book b
on b.BookId = sb.BookId
left join BookGenre bg
on bg.BookId = b.BookId
and bg.GenreId = sg.GenreId
where bg.BookGenreId is null
order by BookstoreCode, BookstoreName, ShelfSequence, ShelfStatus

--8. Bookstore 100 would like to publish an informative flyer to increase interest in old books. 
--Please display the earliest year published per author and all books that the author published in that year (repeat the year published for each book). 
--Only for books in stock at bookstore 100.
--Show Author's First and Last Name, Title, Year Published, and ISBN
;with authorMinYear as (
    select a.AuthorId, MinYearPublished = min(b.YearPublished)
    from Book b
    join Author a 
    on a.AuthorId = b.AuthorId
    join ShelfBook sb
    on sb.BookId = b.BookId
    join Shelf s
    on s.ShelfId = sb.ShelfId
    join Bookstore bs
    on bs.BookstoreId = s.BookstoreId
    where bs.BookstoreCode = 100
    group by a.AuthorId
)
select distinct a.FirstName, a.LastName, b.Title, b.YearPublished, b.ISBN
from Book b
join Author a 
on a.AuthorId = b.AuthorId
join ShelfBook sb
on sb.BookId = b.BookId
join Shelf s
on s.ShelfId = sb.ShelfId
join Bookstore bs
on bs.BookstoreId = s.BookstoreId
join authorMinYear amy
on amy.AuthorId = a.AuthorId
and amy.MinYearPublished = b.YearPublished
where bs.BookstoreCode = 100