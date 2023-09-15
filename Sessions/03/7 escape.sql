--Inventions

--1 Show all where the invention description includes a possessive word ('s or s')
SELECT * from Invention i where i.InventionDesc like '%''s%'
--2 Show all where invention description includes a percentage less than 10%.
SELECT * from Invention i where i.InventionDesc like '% [1-9]!%' ESCAPE '!'
--3 Show all with more than 4 percentages in the invention description.
SELECT * from Invention i where i.InventionDesc like '%!%%!%%!%%!%%%' escape '!'