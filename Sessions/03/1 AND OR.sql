--WorldRecord

--1 show all categories for USA and category of animals in any country, where the unit of measure is years
SELECT * 
from WorldRecord w
where w.unitofmeasure = 'years'
and (
    w.country = 'USA'
    or w.category = 'animals'
)
--2 show all wherwe record name contains either sculpture or structure, and was achieved before 2017
SELECT * 
from WorldRecord w
where (w.record name like '%sculpture%' or w.recordname like '%structure%') 
and w.yearachieved > 2017
--3 show all where category is either speed or technology and the amount is greater than 50
SELECT * 
from WorldRecord w
where w.Category in ('speed' , 'technology') and w.Amount > 50
--4 show all where name contains either cat or dog, and it is either less than 100 centimetres or measured in metres
SELECT * 
from WorldRecord w
where (w.RecordName like '%cat%' or w.RecordName like '%dog%') 
and (
    (w.Amount < 100 
    and w.UnitOfMeasure = "centimetres")
    or w.UnitOfMeasure = 'metres'
)    
--5 show all that name starts with long or short for category anmimals, or starts with heaviest for category of food
SELECT * 
from WorldRecord w
where (
    (w.RecordName like 'long%' or w.RecordName like 'short%')
    or w.Category = 'animals'
)
or (
    w.RecordDesc like 'heaviest%' and w.Category = 'food'
) 