--Invention, re-insert rows after each delete
--1. Delete all rows using the shorthand syntax
delete Invention

select * from Invention i
--2. Delete all rows in the table, using the longhand syntax
delete i from Invention i
--3. Delete all where the description contains the word "war", either separate or as a compound word like "warfare". First do as select, then convert to delete
DELETE i
--SELECT *
from Invention i 
where i.InventionDesc like '% war%'
--4 Delete all where the inventor has two first names, do not delete records with multiple inventors
delete i
--SELECT * 
from Invention i 
where i.InventorFirstName like '% %'
and i.InventorFirstName not like '% & %'