--Inventions

--1. For all inventions invented in the USA show all where inventor first name is either John or Eli
SELECT * 
from Invention i 
where I.Country = 'USA'
and i.InventorFirstName in ('John' , 'Eli')
/*2
	England has requested a list of inventions that have been invented in England either before 1800 or after 1900. 
	Beware that some inventions are entered as Great Britain. The list should also include those.
*/ SELECT * 
from Invention i 
where (
	i.Country in ('England' , 'Great Britain')
	and i.YearInvented < 1800 or i.YearInvented > 1900
)



--3. Show all invented in Germany before 1800 or those that were invented in France and inventor died after 1800
SELECT * 
from Invention i 
where (
	i.country = 'Germany'
	and i.YearInvented < 1800
) 
OR (
	I.Country = 'France'
	and i.YearDied > 1800
)
/*4. 
There is a rumor that inventors have been killed within 15 years after their invention has been made public, 
excluding the years between 1810 and 1850.
Could you produce a list of inventions that match that criteria so that it can be investigated?
*/
select YearsAfterInventionDied = i.YearDied - i.YearInvented, * 
from Invention i 
where i.YearDied - i.YearInvented <= 15 and i.YearDied not BETWEEN 1810 and 1859

--5. Show all inventions where inventor last name begins either W or B and is from the USA
SELECT *
from Invention i 
where (i.InventorLastName like 'w%'or i.InventorLastName like 'b%')
and i.Country = 'USA'