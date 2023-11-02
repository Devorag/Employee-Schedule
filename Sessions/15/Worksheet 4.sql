-- 1. Use the Bank Database
use bankDB
go
-- 2. Drop the bank account table 
drop table if exists bankaccount
go
/* 3. Create a table called BankAccount in the BankDB. 
   Include the following columns: 
   The name of the bank, the user's: bank account number, first name, last name, date of birth, address.
   Then add two more columns; one for the checking account balance and the other for the savings account balance.
*/
create table dbo.bankaccount(
      BankAccountId int not null primary key,
      NameofBank varchar (100),
      BankAccountNumber varchar (5),
      FirstName varchar(25),
      LastName varchar (25),
      DateOfBirth date,
      HomeAddress varchar (100),
      CheckingsBalance DECIMAL(15,2),
      SavingsBalance decimal (15,2)
)
GO

insert bankaccount(NameofBank, BankAccountNumber, FirstName, LastName, DateOfBirth, HomeAddress, CheckingsBalance, SavingsBalance)
 SELECT 'Chase', '12345', 'John', 'Smith', '01-02-1980', '12 Main St. Houston Texas', 5000, 20000
union select 'TD Bank', '2367', 'Samantha', 'Dunkin', '09-12-2001', '56 North Pl. Denver Colorado', 12000, 67000
union select 'Wells Fargo', 67890, 'Ted', 'Jones', '08-03-1999', '89 America Ave. Brooklyn N.Y', 10, 100
union select 'Chase', '67834', 'Greg', 'O''Toole', '07-02-1991', '67 1st St. Buffalo N.Y', 10000, 200000
union select 'PNC', '89076', 'Kate', 'Benson', '03-05-1973', '78 Hello Ave. Los Angeles California', 3000, 50000
union select 'Wells Fargo', '45789', 'Nick', 'Gunther', '08-02-2000', '8907 Grassin Dr. Portland Oregon', 100, 30000

/* 4. Populate the table with the following sample data:

       Chase, 12345, John, Smith, 01-02-1980, 12 Main St. Houston Texas, $5000, $20000
      TD Bank, 2367, Samantha, Dunkin, 09-12-2001, 56 North Pl. Denver Colorado, $12000, $67000
      Wells Fargo, 67890, Ted, Jones, 08-03-1999, 89 America Ave. Brooklyn N.Y, $10, $100
      Chase, 67834, Greg, O'Toole, 07-02-1991, 67 1st St. Buffalo N.Y, $10000, $200000
      PNC, 89076, Kate, Benson, 03-05-1973, 78 Hello Ave. Los Angeles California, $3000, $50000
      Wells Fargo, 45789, Nick, Gunther, 08-02-2000, 8907 Grassin Dr. Portland Oregon, $100, $30000

      Add four more of your own examples.
*/


-- 5. Show a list of all the bank accounts sorted by Bank Name Z-A
select * from bankaccount b 
order by b.NameofBank desc
-- 6. Display a new column called Total Balance for each user. Sort by highest to lowest balance.
select TotalBalance = CheckingsBalance + SavingsBalance, * 
from bankaccount b
order by TotalBalance desc 
-- 7. Show the average, min, and max total balance for all users.
select AVG(CheckingsBalance + SavingsBalance), 
MIN(CheckingsBalance + SavingsBalance), 
MAX(CheckingsBalance + SavingsBalance),
 *
  from bankaccount b 
-- 8. Show the total amount of money that each bank is currently holding.
select TotalAmount = SUM(SavingsBalance+CheckingsBalance), b.NameofBank 
from bankaccount b
group by b.NameofBank 
--note from editor: This question is different than initally shown on video, it has been corrected as will be explained on video.
/* 9. Someone has decided to donate $500 to the checking accounts of the poorest people. 
      Add the money into the accounts of people who have less than $1000 total.
*/
UPDATE b 
set b.CheckingsBalance = b.CheckingsBalance + 500
--select * 
from bankaccount b
where (b.CheckingsBalance + b.SavingsBalance) < 1000 

/* 10. PNC bank is closing down! They are transferring all their customers over to CitiBank. 
      Complete the customer transfer by inserting new records into the table and then deleting all the users who have PNC as their bank.
      Note: CitiBank requires all their users' first names to be capitalized and last names to be in lowercase.
*/
insert bankaccount(NameofBank, BankAccountNumber, FirstName, LastName, DateOfBirth, HomeAddress, CheckingsBalance, SavingsBalance)
select 'CitiBank', b.BankAccountNumber, upper(b.firstname), LOWER(b.LastName), b.DateOfBirth, b.HomeAddress, b.CheckingsBalance, b.SavingsBalance
from bankaccount b 
where b.NameofBank = 'PNC'

delete b 
from bankaccount b 
where b.NameofBank = 'PNC'
/* 11. A few banks are changing their names to a more official version. Modify the following: Chase should be J.P. Morgan Chase,
      TD Bank should be Toronto-Dominion Bank, CitiBank is becoming The City Bank. All other banks are keeping their names as is.
      Do with one SQL statement.
*/
update b 
set b.nameofbank =
case b.nameofbank
when 'TD' then 'Toronto-Dominion'
when 'Chase' then 'J.P Morgan Chase'
when 'CitiBank' then 'The City Bank'
else b.nameofbank
end
from bankaccount b 