-- SM See comments.
use RecordKeeperDB
go
delete orders 
delete president
delete party
delete colors

insert colors(Color)
      select 'Red'
union select 'Blue'
union select 'Orange'
union select 'Yellow'
union select 'White'
union select 'Green'
union select 'Purple'
union select 'Violet'
union select 'Red'
union select 'Pink'


insert party(ColorId, PartyName, YearBegan)
      select c.colorId, 'Republican', 1854 from colors c where c.color = 'Red' 
union select c.colorId, 'Democratic', 1828 from colors c where c.color = 'Blue'
union select c.colorId, 'Federalist', 1791 from colors c where c.color = 'Orange'
union select c.colorId, 'Whig', 1833 from colors c where c.color = 'Yellow'
union select c.colorId, 'None, Federalist', 1789 from colors c where c.color = 'White'
union select c.colorId, 'National Union', 1864 from colors c where c.color = 'Green'
union SELECT c.colorId, 'Democratic-Republican', 1792 from colors c where c.color = 'Purple'
union select c.colorId, 'Black Panther', 1966 from colors c where c.color = 'Black'
union select null,  'Socialist Party of America', 1901 
union select c.colorId, 'Prohibition', 1869 from colors c where c.color = 'Red'

-- SM Not all presidents get inserted.
insert president(PartyId, Num, FirstName, LastName, dateBorn, DateDied, TermStart, TermEnd)
      select pt.partyID, 1, 'George', 'Washington', '1732-02-22', '1799-12-14', 1789, 1797 from party pt where pt.partyname = 'None, Federalist'
union select pt.partyId, 2, 'John', 'Adams', '1735-10-30', '1826-07-04', 1797, 1801 from party pt where pt.partyname = 'Federalist'
union select pt.partyId, 3, 'Thomas', 'Jefferson', '1743-04-13', '1826-07-04', 1801, 1809 from party pt where pt.partyname = 'Democratic-Republican'
union select pt.PartyId, 4,  'James', 'Madison', '1751-03-16', '1836-06-28', 1809, 1817 from party pt where pt.partyname = 'Democratic-Republican'
union select pt.partyId, 5, 'James', 'Monroe', '1758-04-28', '1831-07-04', 1817, 1825 from party pt where pt.partyname = 'Democratic-Republican'
union select pt.partyId, 6, 'John Quincy', 'Adams', '1767-07-11', '1848-02-23', 1825, 1829 from party pt where pt.partyname = 'Democratic-Republican'
union select pt.PartyId, 7, 'Andrew', 'Jackson', '1767-03-15', '1845-06-08', 1829, 1837 from party pt where pt.partyname = 'Democratic'
union select pt.PartyId, 8, 'Martin', 'van Buren', '1782-12-05', '1862-07-24', 1837, 1841 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 9, 'William H.', 'Harrison', '1773-02-09', '1841-04-04', 1841, 1841 from party pt where pt.partyname = 'Whig'
union select pt.partyId, 10, 'John', 'Tyler', '1790-03-29', '1862-01-18', 1841, 1845 from party pt where pt.partyname = 'Whig'
union select pt.partyId, 11, 'James K.', 'Polk',  '1795-11-02', '1851-06-15', 1845, 1849 from party pt where pt.partyname = 'Democratic'
union select pt.PartyId, 12, 'Zachary', 'Taylor', '1784-11-24', '1850-07-09', 1849, 1850 from party pt where pt.partyname = 'Whig'
union select pt.partyId, 13, 'Millard', 'Fillmore', '1800-01-07', '1874-03-08', 1850, 1853 from party pt where pt.partyname = 'Whig'
union select pt.partyId, 14, 'Franklin', 'Pierce', '1804-11-23', '1869-10-08', 1853, 1857 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 15, 'James', 'Buchanan', '1791-04-23', '1868-06-01', 1857, 1861 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 16, 'Abraham', 'Lincoln', '1809-02-12', '1865-04-15', 1861, 1865  from party pt where pt.partyname = 'Republican'
union select pt.partyId, 17, 'Andrew', 'Johnson',  '1808-12-29', '1875-07-31', 1865, 1869 from party pt where pt.partyname = 'National Union'
union select pt.partyId, 18, 'Ulysses S.', 'Grant', '1822-04-27', '1885-07-23', 1869, 1877 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 19, 'Rutherford', 'Hayes', '1822-10-04', '1893-01-17', 1877, 1881 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 20, 'James', 'Garfield', '1831-11-19', '1881-09-19', 1881, 1881 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 21, 'Chester', 'Arthur', '1829-10-05', '1886-11-18', 1881, 1885 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 22, 'Grover', 'Cleveland', '1837-03-18', '1908-06-24', 1885, 1889 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 23, 'Benjamin', 'Harrison', '1833-08-20', '1901-03-13', 1889, 1893 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 25, 'William', 'McKinley', '1843-01-29', '1901-09-14', 1897, 1901 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 26, 'Theodore', 'Roosevelt', '1858-10-27', '1919-01-06', 1901, 1909 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 27, 'William', 'Taft', '1857-09-15', '1930-03-08', 1909, 1913 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 28, 'Woodrow', 'Wilson', '1856-12-28', '1924-02-03', 1913, 1921 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 29, 'Warren', 'Harding', '1865-11-02', '1923-08-02', 1921, 1923 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 30, 'Calvin', 'Coolidge', '1872-07-04', '1933-01-05', 1923, 1929 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 31, 'Herbert C.', 'Hoover', '1874-08-10', '1964-10-20', 1929, 1933 from party pt where pt.partyname = 'Republican'
union select pt.PartyId, 32, 'Franklin Delano', 'Roosevelt', '1882-01-30', '1945-04-12', 1933, 1945 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 33, 'Harry S', 'Truman', '1884-05-08', '1972-12-26', 1945, 1953 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 34, 'Dwight David', 'Eisenhower', '1890-10-14', '1969-03-28', 1953, 1961 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 35, 'John Fitzgerald', 'Kennedy', '1917-05-29', '1963-11-22', 1961, 1963 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 36, 'Lyndon Baines', 'Johnson', '1908-08-27', '1973-01-22', 1963, 1969 from party pt where pt.partyname = 'Democratic'
union select pt.PartyId, 37, 'Richard Milhous', 'Nixon', '1913-01-09', '1994-04-22', 1969, 1974 from party pt where pt.partyname = 'Republican'
union select pt.PartyId, 38, 'Gerald R.', 'Ford',  '1913-07-14', '2006-12-26', 1974, 1977 from party pt where pt.partyname = 'Republican'
union select pt.PartyId, 39, 'James Earl', 'Carter', '1924-10-01', null, 1977, 1981 from party pt where pt.partyname = 'Democratic'
union select pt.PartyId, 40, 'Ronald Wilson', 'Reagan', '1911-02-06', '2004-06-05', 1981, 1989 from party pt where pt.partyname = 'Democratic' 
union select pt.PartyId, 41, 'George H. W.', 'Bush',  '1924-06-12', '2018-11-30', 1989, 1993 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 42, 'William Jefsferson', 'Clinton', '1946-08-19', null, 1993, 2001 from party pt where pt.partyname = 'Democratic'
union select pt.PartyId, 43, 'George W.', 'Bush', '1946-07-06', null, 2001, 2009 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 44, 'Barack', 'Obama', '1961-08-04', null, 2009, 2017 from party pt where pt.partyname = 'Democratic'
union select pt.partyId, 45, 'Donald', 'Trump',  '1942-11-20', null, 2017,2021 from party pt where pt.partyname = 'Republican'
union select pt.partyId, 46, 'Joe', 'Biden', '1946-06-14', null, 2021, null from party pt where pt.partyname = 'Democratic'
-- SM Don't include this here...


insert orders(PresidentId, OrderNumber, VolumeNumber, CodeName, PageNumber, YearIssued, OrderName, OrderUpheld, DateRecorded)
select p.presidentId, 6103, 3,  'C.F.R.', 5, 1862, 'Establishing a Provisional Court in Louisiana', 1, GETDATE() from president p where p.DateBorn = '1809-02-12'
union select p.presidentId, 6104, 3, 'C.F.R.', 6, 1863, 'Respecting Soldiers Absent Without Leave', 1, GETDATE() from president p where p.DateBorn = '1809-02-12' 
union select p.presidentId, 6105, 3, 'C.F.R.', 7, 1865, 'Rewards for the Arrest of Felons from Foreign Countries Committing Felonies in The United States', 0, GETDATE() from president p where p.DateBorn = '1809-02-12'
union select p.presidentId, 13984, 3, 'C.F.R.', 8, 2021, 'Taking Additional Steps To Address the National Emergency With Respect to Significant Malicious Cyber - Enabled Activities', 1, GETDATE() from president p where p.dateborn = '1942-11-20'
union select p.presidentId, 2194, 3, 'C.F.R.', 9, 1962, 'Delegating Emergency Preparedness Responsibilities', 1, GETDATE() from president p where p.dateborn = '1946-06-14'
union SELECT p.presidentId, 11452, 3, 'c.F.R.', 10, 1969, 'Establishing the council for Urban Affairs', 0, GETDATE() from president p where p.DateBorn =  '1913-01-09'

