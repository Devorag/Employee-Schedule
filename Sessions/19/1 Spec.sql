/*
Rehab manager: I manage a rehabilitation facility for patients that have unfortunately suffered a traumatic event 
that has left them with some loss of functionality. Due to federally mandated law, we are now required to keep electronic records. 

We would like to start with a patient roster. 
We need to record patient name (last, first, middle), date of birth, gender (M/F), SSN, date admitted and discharged, floor and room number

For audits we need to record the date and time that the record was saved in the roster.

We would also like to track the condition of each patient upon admission contrasted to condition upon discharge. 
Use the following rank system:

1 = Good Health
2 = Minor Loss of Functionality
3 = Major Loss of Functionality
4 = Deceased

Use the text description of the condition in the reports.

Obviously, nobody would be admitted to our facility with a rank of 1 or 4. 
We certainly hope that all patients are discharged quickly with rank 1. But that is not always the case.

Questions:
Q: Do you need to record the time of the date admitted and discharged?
A: No need, date is enough 

Q: How many floors do you have in your rehab?
A: We have 4 floors, the first floor is only used for offices and storage space.

Q: Are patients ever admitted in advance?
A: Sometimes we need to wait for a patient to be transfered, so we do know they're coming in advance 
   but we only enter them into our system when they actually arrive at our faciilty.

Reports: 
1) For government audit: list of all patients discharged, presented as: last name, first name, date of admit, date of discharge, condition upon admit and discharge.
	We want to show our success stories on top, order by condition at discharge
2) For facility admin: show list of patients whose condition deteriorated under our care, include condition descriptions
3) Show me the average days patients stayed at our facility, per condition at admit. For patients that are not discharged yet calculate average days from the current date.
4) Show me the numeric change of condition from admit to discharge and the number of patients with that change.

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