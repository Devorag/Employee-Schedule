     --No president's term can begin before 1776 when America became a country--
insert president(Num, FirstName, LastName, Party, dateBorn, DateDied, TermStart, TermEnd)
 select top (1) 1, 'George', 'Washington', 'None, Federalist', '1732-02-22', '1799-12-14', 1773, 1797


 --Term end cannot be before term start.
insert president(Num, FirstName, LastName, Party, dateBorn, DateDied, TermStart, TermEnd)
select top (1) 7, 'Andrew', 'Jackson', 'Democrat', '1767-03-15', '1845-06-08', 1829, 1827


    --A president must be at least 35 years old.
insert president(Num, FirstName, LastName, Party, dateBorn, DateDied, TermStart, TermEnd)
 select top (1) 5, 'James', 'Monroe', 'Democratic-Republican', '1758-04-28', '1831-07-04', 1788, 1789

select age = p.TermStart- year(p.dateborn), *
from president p 
order by age desc

-- SM Don't allow future date.
insert president(Num, FirstName, LastName, Party, dateBorn, DateDied, TermStart, TermEnd)
 select top (1) 5, 'James', 'Monroe', 'Democratic-Republican', '1877-04-28', '2024-07-04', 1788, 1789