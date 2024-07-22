delete PresidentMedal;

insert PresidentMedal(PresidentId, MedalId)
select p.PresidentId, m.MedalId
from Medal m
cross join President p 


--select * from medal