--World records

--1. Show all records where record breaker's first or middle name ends with ng or gg.
select * from WorldRecord w where w.FullName like '%[ng]g %'
--2. For all Arts and Crafts or Food category show records with description that has a numeric value followed by ft
SELECT * from WorldRecord w where w.Category in ('arts and crafts' , 'food') and w.RecordDesc like '%[0-9]ft%'
--3. Show all where record name has at least 3 words and it begins with F, L or M
SELECT * from WorldRecord w where w.RecordName  like '[FLM] % % %'
--4. Show all records where record description contains the unit of measure followed by a comma or period
SELECT * from WorldRecord w where w.RecordDesc like '%' + w.UnitOfMeasure + '[,.]%'
--5. Show all record where description has at least 3 commas and the name includes letters c or h
SELECT * from WorldRecord w where w.RecordDesc like '%,%,%,%' and w.RecordName like '%[ch]%'
--6. Show all records that has a word that begins with a B and ends with G in the description.
SELECT * from WorldRecord w where w.RecordDesc like '%b g%'

