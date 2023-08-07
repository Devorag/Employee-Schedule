-- World Record

-- 1. All columns should block nulls
-- 3. Block blank values for all varchar column
-- 4. Block negative numbers for int columns
-- 5. Rerun the World Record data

--6 Test your constraints! Try inserting bad data to ensure that your table is protected
/*
--block blank and negative
insert WorldRecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
select '', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', '', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', '', 'Mr. Jones', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', '', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', -2, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, '', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', -1, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', 2020, ''
--block nulls
union select null, 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', null, 'truly amazing', 'Mr. Jones', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', null, 'Mr. Jones', 2.5, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', null, 2.5, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', null, 'Inches', 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, null, 2020, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', null, 'USA'
union select 'Animals', 'Coolest Record', 'truly amazing', 'Mr. Jones', 2.5, 'Inches', 2020, null
*/
