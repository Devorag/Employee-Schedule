use RecordKeeperDB
go
delete president

go
insert president(Num, FirstName, LastName, YearBorn, YearDied, Party, TermStart, TermEnd)
select 1,'George', 'Washington',1732,1799,'None, Federalist',1789,1797
union select 2,'John', 'Adams',1735,1826,'Federalist', 1797,1801
union select 3,'Thomas', 'Jefferson',1743,1826,'Democratic-Republican',1801,1809
union select 4,'James', 'Madison',1751,1836,'Democratic-Republican', 1809,1817
union select 5,'James', 'Monroe',1758,1831,'Democratic-Republican',1817,1825
union select 6,'John Quincy', 'Adams',1767,1848,'Democratic-Republican',1825,1829
union select 7,'Andrew', 'Jackson',1767,1845,'Democrat',1829,1837
union select 8,'Martin', 'van Buren',1782,1862,'Democrat',1837,1841
union select 9,'William H.', 'Harrison',1773,1841,'Whig',1841,1841
union select 10,'John', 'Tyler',1790,1862,'Whig',1841,1845
union select 11,'James K.', 'Polk',1795,1849,'Democrat',1845,1849
union select 12,'Zachary', 'Taylor',1784,1850,'Whig',1849,1850
union select 13,'Millard', 'Fillmore',1800,1874,'Whig',1850,1853
union select 14,'Franklin', 'Pierce',1804,1869,'Democrat',1853,1857
union select 15,'James', 'Buchanan',1791,1868,'Democrat', 1857,1861
union select 16,'Abraham', 'Lincoln',1809,1865,'Republican', 1861,1865
union select 17,'Andrew', 'Johnson',1808,1875,'National Union', 1865,1869
union select 18,'Ulysses S.', 'Grant',1822,1885,'Republican', 1869,1877
union select 19,'Rutherford', 'Hayes',1822,1893,'Republican', 1877,1881
union select 20,'James', 'Garfield',1831,1881,'Republican', 1881,1881
union select 21,'Chester', 'Arthur',1829,1886,'Republican',1881,1885
union select 22,'Grover', 'Cleveland',1837,1908,'Democrat',1885,1889
union select 23,'Benjamin', 'Harrison',1833,1901,'Republican',1889,1893
union select 24,'Grover', 'Cleveland',1837,1908,'Democrat',1893,1897
union select 25,'William', 'McKinley',1843,1901,'Republican',1897,1901
union select 26,'Theodore', 'Roosevelt',1858,1919,'Republican',1901,1909
union select 27,'William', 'Taft',1857,1930,'Republican',1909,1913
union select 28,'Woodrow', 'Wilson',1856,1924,'Democrat',1913,1921
union select 29,'Warren', 'Harding',1865,1923,'Republican',1921,1923
union select 30,'Calvin', 'Coolidge',1872,1933,'Republican',1923,1929
union select 31,'Herbert C.', 'Hoover',1874,1964,'Republican',1929,1933
union select 32,'Franklin Delano', 'Roosevelt',1882,1945,'Democrat',1933,1945
union select 33,'Harry S', 'Truman',1884,1972,'Democrat', 1945,1953
union select 34,'Dwight David', 'Eisenhower',1890,1969,'Republican', 1953,1961
union select 35,'John Fitzgerald', 'Kennedy',1917,1963,'Democrat', 1961,1963
union select 36,'Lyndon Baines', 'Johnson',1908,1973,'Democrat', 1963,1969
union select 37,'Richard Milhous', 'Nixon',1913,1994,'Republican', 1969,1974
union select 38,'Gerald R.', 'Ford',1913,1977,'Republican', 1974,1977
union select 39,'James Earl', 'Carter',1924,null,'Democrat', 1977,1981
union select 40,'Ronald Wilson', 'Reagan',1911, 2004,'Republican',1981,1989
union select 41,'George H. W.', 'Bush',1924,null,'Republican', 1989,1993
union select 42,'William Jefferson', 'Clinton',1946,null,'Democrat',1993,2001
union select 43,'George W.', 'Bush',1946,null,'Republican', 2001,2009
union select 44,'Barack', 'Obama',1961,null,'Democrat',2009,2017
