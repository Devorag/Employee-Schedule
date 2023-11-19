-- SM Excellent work! See comment, no need to resubmit.
--Reports: 
--1) For government audit: list of all patients discharged, presented as: last name, first name, date of admit, date of discharge, condition upon admit and discharge.
	--We want to show our success stories on top, order by condition at discharge

SELECT ConcatList = Concat(p.PatientLastName, ' , ', p.DateAdmitted, ' , ', p.DateDischarged, ' , ', p.ConditionAdmitted, ' , ', p.ConditionDischarged), p.ConditionAdmitted, p.ConditionDischarged
from patients p
where p.DateDischarged is not null 
order by ConditionAdmitted - ConditionDischarged desc, p.ConditionDischarged
--2) For facility admin: show list of patients whose condition deteriorated under our care, include condition descriptions
select ChangeOfCondition = p.ConditionAdmitted - p.ConditionDischarged, p.ConditionAdmittedDesc, p.ConditionDischargedDesc, *
from patients p  
where p.ConditionAdmitted - p.ConditionDischarged < 0 --ConditionDischarged > ConditionAdmitted
--3) Show me the average days patients stayed at our facility, per condition at admit. For patients that are not discharged yet calculate average days from the current date.
-- SM Should be datediff(day)
SELECT AvgDaysPatientStay = avg(DATEDIFF(year, p.dateadmitted, isnull(p.DateDischarged, getdate()))), p.ConditionAdmitted
from patients p 
group by ConditionAdmitted

--4) Show me the numeric change of condition from admit to discharge and the number of patients with that change.
SELECT NumericChangeOfCondition = p.ConditionAdmitted - p.conditiondischarged, NumOfPatientsWithChange = COUNT(p.ConditionAdmitted - p.conditiondischarged) 
from patients p 
where p.ConditionDischarged is not null 
group by p.ConditionAdmitted - p.conditiondischarged
order by NumericChangeOfCondition