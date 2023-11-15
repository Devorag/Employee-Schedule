
--I need to record the genre and date it was first published.
--I also want to know when I got the book, when I sold it, how much I bought and sold it for and the date and time the book was entered into the system
--Sample data is in the following order: Book Title, Author, Year Published, Genre, Date bought, Date Sold, Price bought, Price sold
--4) I also need a list of books using the official "book club" format, that is distributed to book clubs.
        --The format is Genre - Title (Author First Name Last Name, Year Published).

drop table if exists dbo.book
go 
create table dbo.book(
    BookId int not null identity primary key,
    BookTitle varchar(100) not null 
        constraint ck_book_title_cannot_be_blank check(BookTitle > '') 
        constraint u_book_title unique,
    AuthorFirstName varchar(30) not null 
        constraint ck_author_first_name_cannot_be_blank check(authorfirstname > ''),
    AuthorLastName varchar(30) not null 
        constraint ck_author_last_name_cannot_be_blank check(authorlastname > ''),
    YearPublished int not null 
        constraint ck_book_year_published_must_be_1700_or_later CHECK(YearPublished >= 1700),
    genre VARCHAR(20) not null 
        CONSTRAINT ck_book_genre_cannot_Be_blank check(genre > ''),
    DateBought date not null 
        constraint ck_book_date_bought_cannot_be_future_date check(DateBought <= GETDATE()),
    DateSold date null
        constraint ck_book_date_sold_cannot_be_future_date check(Datesold <= GETDATE()),
    PriceBought decimal(7,2) not null 
        constraint ck_book_price_bought_must_be_greater_than_zero check(PriceBought > 0),
    PriceSold decimal(7,2) null
        constraint ck_book_price_sold_must_be_greater_than_zero check(PriceSold > 0),
    BookClubFormat as concat(genre, ' - ', Booktitle, ' (', authorfirstname, ', ', authorlastname, ' ,', yearpublished, ').' ),
    DateRecorded DATETIME not null  DEFAULT GETDATE(),
    CONSTRAINT ck_sold_date_and_price_both_null_or_both_have_Value CHECK((DateSold is null and PriceSold = 0) or (datesold > '' and pricesold > 0)),
    CONSTRAINT ck_date_sold_must_be_after_date_bought CHECK(DateSold >= DateBought),
    constraint ck_date_bought_must_be_After_year_published CHECK(year(DateBought) >= yearpublished)

)
GO



select * 
from book b 