/*
Use the president table for sample data:

Technical Note: To select from a table in a database other than the one you are working in, prefix the source table with the database name and dbo like this:
--select * from RecordKeeperDB.dbo.president

SSN: concatination of term start, number of terms served (term = 4 years in office), year born. Do not store the SSN with dashes, just 9 digits.
Floor Num: Floor 2: presidents who were younger than 50 at the start of their term 
           Floor 3: presidents who were between 50 and 65 at the start of their term
           Floor 4: all other presidents
Room Num: Age they became a president (more than one president can share a room, at the rehab there is no presidential suite)
DateAdmitted: month and day of DOB, year should be X years after the year they were born (X = President Number)
Condition Admitted: 2 for presidents with a middle initial
                    3 for rest of the presidents
Condition Discharged: 1 for presidents from parties other than Democrat or Republican
                      2 for presidents who died from 50 - 58 years old
                      3 for presidents who died from 70 - 73 years old
                      4 for presidents who died from 75 - 77 years old
                      The rest are still under our care. 
DateDischarged: For those discharged, date discharged should be January 7th of 10 years after term start. 
*/

DELETE patients 
go 

use rehabDB
go
insert patients(PatientFirstName, PatientLastName, gender, DateOfBirth, SSN, floorNumber, RoomNumber, DateAdmitted, ConditionAdmitted, ConditionDischarged, datedischarged)
select p.firstname, p.lastname, 'M', p.dateborn, 
concat(p.termstart, p.NumberOfFullTermsServed, year(p.DateBorn)),
    case 
        when p.TermStart - year(p.DateBorn) < 50 then 2 
        when p.TermStart - year(p.DateBorn) between 50 and 65 then 3 
        else 4 
    end,
p.termstart - year(p.dateborn),
DATEADD(year,p.num,p.DateBorn),
    case 
        when p.FirstName like '% %' then 2 
        else 3 
    end,
        case 
            when p.party not in ('Democrat', 'Republican') then 1 
            when p.AgeAtDeath between 50 and 58 then 2 
            when p.AgeAtDeath between 70 and 73 then 3 
            when p.AgeAtDeath between 75 and 77 then 4 
            else null 
        end,
            case 
                when p.party not in ('Democrat', 'Republican') or p.AgeAtDeath between 50 and 58 or p.AgeAtDeath between 70 and 73 or p.AgeAtDeath between 75 and 77 then datefromparts(p.termstart + 10,01,07)
                else null
        end
from recordkeeperdb..president p


