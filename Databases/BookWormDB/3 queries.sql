--1) On average, how long did it take for books published during the 21st century to sell?
SELECT AvgDaysToSell = avg(DATEDIFF(day,b.DateBought,b.DateSold))
from book b 
where b.DateSold is not null 
and b.YearPublished between 2000 and 2999
--2) Regarding all my unsold books: 
       -- How many years has it been since they've been published?
        --How long do I have them in my store?
       -- How much did I spend on them?
    SELECT b.BookTitle,
           YearsSincePublished = year(GETDATE()) - b.yearpublished,
           DaysInStore = datediff(day,b.DateBought,GETDATE()),
           b.PriceBought
    from book b 
    where b.DateSold is null  
--3) Before I purchase some more books, I want to know which author brought in the most and which author brought in the least profit. 
        --Show Author's name in one column as LastName, FirstName
    SELECT top 1 MostProfitableAuthor = CONCAT(b.AuthorLastName, ' , ', b.AuthorFirstName), Profit = sum(b.PriceSold)
    from book b 
    where b.DateSold is not null 
    group by CONCAT(b.AuthorLastName, ' , ', b.AuthorFirstName)
    order by sum(b.PriceSold) desc

    SELECT top 1 LeastProfitableAuthor = CONCAT(b.AuthorLastName, ' , ', b.AuthorFirstName), Profit = sum(b.PriceSold)
    from book b 
    where b.DateSold is not null 
    group by CONCAT(b.AuthorLastName, ' , ', b.AuthorFirstName)
    order by sum(b.PriceSold) 
    
--4) I also need a list of books using the official "book club" format, that is distributed to book clubs.
        --The format is Genre - Title (Author First Name Last Name, Year Published).
        --This has to be perfect, I can't risk a typo. Please make sure this is always correct, I don't like it when my staff has to format it every time we need to print the list.-
        SELECT b.BookClubFormat
        from book b 