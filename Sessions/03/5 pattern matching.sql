--Inventions

--1. Show all inventions where invention name is included in the invention description and inventor first name begins with either J or T
SELECT * from invention i where i.InventionDesc like '%' + InventionName + '%'and i.InventorFirstName like '[jt]%'
--2. Show all inventions that contain the word 'and' twice in the invention desc in 2 different sentences (assuming a period is the end of a sentence)
SELECT * from Invention i where i.Inventiondesc like '%and%.%and%'
--3. Show all inventions that have numbers in the description followed by the letter s or a comma
SELECT * from Inventions i where i.Inventiondesc like '[0-9][s,]'
--4. Show all inventions that begin with either A or T and have 2 words in the name
SELECT* from Inventions i where i.InventionName like '[AT}% %' 
--5. Show all inventions where the third character in invention name is the letter N
SELECT * FROM Invention I WHERE I.InventionName like '  n%' 