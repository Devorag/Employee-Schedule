--1) Show me a list of stores, shelves, and books (include author's name) sorted by store, author, title, shelf number

--2) Show me a list of stores and shelves with the total number of books per shelf, show zero if no books

--3) Show me a list of stores and a total number books per store, show zero if none

--4) Show me a list of authors and how many titles (not sum of quantity, just the number of titles) they have in my stores. Order by Author Last Name. Omit authors with zero books.

--5) Show me the total number of books per store per genre. Order by Bookstore Code, then Genre. Omit genre with no books

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

/*
7) We are organizing the shelves by genre. Show the following reports in one result set. 
        Columns: Bookstore Code, Bookstore Name, Shelf Sequence, and a Shelf Status column (specified below for each result set) . 
        Also sort by these columns.
*/
--a) Shelves that have no genre. Shelf Status = 'No Genre'

--b) Shelves that have multiple genres. Shelf Status = 'Multiple Genres'

/*
c) Shelves containing books that do not have ALL of the shelf genres
   Shelf Status = 'Mismatch book and shelf genre'
   Ex: Book = History and Shelf = Fiction, Book = History and Shelf = History + Biography
*/

/*
8. Bookstore 100 would like to publish an informative flyer to increase interest in old books. 
Please display the earliest year published per author and all books that the author published in that year (repeat the year published for each book). 
Only for books in stock at bookstore 100.
Show Author's First and Last Name, Title, Year Published, and ISBN
*/
