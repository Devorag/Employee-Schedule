-- SM Excellent! 100%
use rehabDB
go
drop table if exists dbo.patient
go 
create table dbo.patient(
    PatientId int not null identity primary key,
    PatientFirstName varchar(30) not null  
        CONSTRAINT ck_patient_first_name_cannot_be_blank CHECK(PatientFirstName <> ''),
    PatientMiddleName varchar(30) not null DEFAULT '',
    PatientLastName varchar(30) not null
        constraint ck_patient_last_name_cannot_be_blank CHECK(PatientLastName <> ''),
    DateOfBirth DATE not null,
        CONSTRAINT ck_patient_date_of_birth_cannot_be_future_Date CHECK(DateOfBirth < getdate()),
    Gender char(1) not null
        constraint ck_patient_gender_must_be_either_M_or_F CHECK(Gender in ('M', 'F')),
    SSN char(9) not null, 
        constraint ck_patients_SSN_can_only_allow_numeric_value_and_must_only_be_9_digits check(SSN like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    DateAdmitted date not null,
        CONSTRAINT ck_patient_date_admitted_cannot_be_future_Date CHECK(dateadmitted < getdate()),
    DateDischarged date null, 
        CONSTRAINT ck_patient_date_discharged_cannot_be_future_Date CHECK(datedischarged < getdate()),
    FloorNumber int not null, 
        CONSTRAINT ck_patients_floor_number_must_be_between_2_and_4 CHECK(FloorNumber between 2 and 4),
    RoomNumber int not null,
        CONSTRAINT ck_patients_room_number_must_be_greater_than_zero CHECK(RoomNumber > 0),
    ConditionAdmitted int not null,
        CONSTRAINT ck_patients_condition_admitted_must_be_greater_than_zero CHECK(ConditionAdmitted in (2,3)),
    ConditionDischarged int null,
        CONSTRAINT ck_patients_condition_discharged_must_Be_Between_1_and_4 CHECK(conditiondischarged between 1 and 4),
    DateRecordSaved datetime not null DEFAULT GETDATE(),  
    ConditionAdmittedDesc as case ConditionAdmitted when 2 then 'Minor Loss of Functionality' when 3 then 'Major Loss of Functionality' end persisted,
    ConditionDischargedDesc as case ConditionDischarged when 1 then 'Good Health' when 2 then 'Minor Loss of Functionality' when 3 then 'Major Loss of Functionality' when 4 then 'Deceased' end persisted,
    constraint ck_patients_date_discharged_must_be_after_dateadmitted CHECK(dateadmitted < datedischarged),
    constraint ck_patients_date_discharged_and_condition_discharge_must_all_be_null_or_must_all_have_value CHECK((datedischarged is null and conditiondischarged is null) or (datedischarged is not null and conditiondischarged is not null)),
)
go


