--1 Show all world records where the record description includes its country in possessive form (China's rocket).
SELECT * from WorldRecord w where w.RecordDesc like '%' + w.country + '''%'
--2 Show all world records where the record description includes quoted 'Gundam Global Challenge'
SELECT * from WorldRecord w where w.RecordDesc like '%''Gundam Global Challenge''%'

--3 Show all inventions that contain a [
SELECT * from Invention i where i.InventionDesc like '%![%' escape '!'