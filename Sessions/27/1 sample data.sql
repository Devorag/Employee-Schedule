/*
--1)
--a) populate the tables with (at least 3) bookstores (start code number at 100 and increase by 1 for each store)
'Apple Books', 100
'Best Reads', 101
'Crazy Chapters', 102
'Deals Deals Deals', 103

--b)  genres, authors
'Fiction'
'Historical Fiction'
'Fantasy'
'Biography'
'True Crime'

--authors
'Alice', 'Aard'
'Bernard', 'Bijou'
'Cain', 'Creamicesky'
'Donald', 'Doolittle'

--c) books (some authors should have multiple books)
--books
'Alice', 'Aard', 'Always High', 1999
'Alice', 'Aard', 'Artificial Times', 2000
'Alice', 'Aard', 'A Confession', 2001
'Bernard','Bijou', 'Bad Crime', 1999
'Bernard','Bijou', 'Better Slow It Down', 1998
'Donald', 'Doolittle', 'Diminishing Freedom', 2000
'Donald', 'Doolittle', 'Drag Racing', 1975
'Donald', 'Doolittle', 'Deadly Adventure', 1978
'Cain', 'Creamicesky', 'Cream Life', 1970
'Cain', 'Creamicesky', 'Chocolate Secrets', 1980
'Cain', 'Creamicesky', 'Child World', 1980
*/
--d) give all books at least 1 genre, and some multiple genres

--e) give all stores 5 shelves

--f) give the store that has the lowest code an additional shelf

--2) for all stores
--a) populate one shelf with all books

--b) populate one shelf with multiple copies of one book

--c) populate one shelf with all books from one author

--d) give some shelves at least one genre and some shelves multiple genres

--e) fill all genre shelves with 5 copies of books that have matching genre
-- NOTE: If the shelf already has a copy of a particular book, you will not be able to INSERT. Instead, add another 5 copies

--f) give all stores one shelf without any books, new shelf sequence should be 1 higher than the current highest shelf sequence for the store

--g) create a new store (suggested name: Early Bird Books), give it a code 100 more than highest current code
