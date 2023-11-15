/*
patients


PatientId int not null identity primary key
PatientFirstName varchar(30) not null  
    not ''
    unique
PatientLastName varchar(30) not null 
    not ''
DateOfBirh DATE not null 
    not ''
Gender varchar(1) not null
    must be either M or F
SocialSecurityNumber not null
    termstart, number of terms served, year born 
    no space 
DateAdmitted date not null 
    month and day of birthday 
    x years after they were born x= president number
DateDischarged date null 
    must be January 7th 
    10 years after termstart
FloorNumber int not null 
     Floor 2: presidents who were younger than 50 at the start of their term 
     Floor 3: presidents who were between 50 and 65 at the start of their term
     Floor 4: all other presidents
RoomNumber int not null 
    termstart - yearborn
ConditionAdmitted int not null 
    2 for presidents with a middle initial
    3 for rest of the presidents
ConditionDischarged int null
    1 for presidents from parties other than Democrat or Republican
    2 for presidents who died from 50 - 58 years old
    3 for presidents who died from 70 - 73 years old
    4 for presidents who died from 75 - 77 years old
    The rest are still under our care. 
DateRecordSaved datetime not null 
    default getdate
ConditionDischargeDesc
    1 = Good Health
    2 = Minor Loss of Functionality
    3 = Major Loss of Functionality
    4 = Deceased
multicolumnconstraints
    datedischarged > dateadmitted
    datedischarged and conditiondischarged and contrast all null or all have value

*/
