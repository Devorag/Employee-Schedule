use RecordKeeperDB
go

--show all for Invention Name Airplane, Airship, Automobile, Flying Shuttle, Lawn mower
select * from Invention i where i.InventionName in ('Airplane', 'Airship', 'Automobile', 'flying shuttle', 'lawn mower')
--show all except Dynamite and Carbonated Water
SELECT * from Invention i where i.InventionName not in ('dynamite','carbonated water')
--show all that inventor last name begins with N or higher
SELECT * FROM Invention I WHERE I.InventorLastName >= 'N' order by i.InventorLastName
--show all for USA or England sorted by Year Invented
SELECT * FROM Invention i where i.Country in ('USA','England') order by i.YearInvented
--assuming nobody has last name of one letter
--show all that inventor last name start with letters from N to P
select * from Invention i where i.InventorLastName between 'n' and 'q' order by i.InventorLastName

