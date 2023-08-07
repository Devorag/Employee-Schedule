/*
--WorldRecord
Provide values for all of the columns except the primary key (Id). 
World Record Name and Code must be unique. 
Values have to "fit" into the columns. String (varchar) value cannot exceed max length, data types have to be compatible
Unless otherwise specified "make up" the data
*/

--1 using the values clause insert a new world record for "Smallest Computer"

--2 using the values clause insert 3 new records: "Fastest Computer", "Slowest Computer", "Lightest Computer"

--3 delete the 3 new records from number 2, and re-insert it using a union select statement

--4 all French inventors are being awarded a world record, use literal values for any column that does not have a match in the Invention table

/*5 
All world records that are measured in Metres were broken by the very same people 1 year later, they did the same stunt twice as large/high. 
Insert new world records for them. Prefix the record name with the word "Super"
*/


--common errors
--5 do not provide enough values for the insert statement

--6 do not provide enough columns for the insert statement

--7 attempt to insert the primary key

--8 insert a value that is too long for one of the columns

--9 insert a value of the wrong data type (eg varchar/string into an int/number)

--10 insert using union select, but forget to use the word union so that the select produces two result sets

