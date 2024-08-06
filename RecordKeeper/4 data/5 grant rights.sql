use RecordKeeperDB 
go 
--select concat('grant execute  ',r.ROUTINE_NAME, ' to approle')
--from INFORMATION_SCHEMA.ROUTINES r 

grant execute ON SeasonDelete to approle
grant execute ON OlympicMedalUpdate to approle
grant execute ON OlympicMedalGet to approle
grant execute ON OlympicMedalDelete to approle
grant execute ON CountryUpdate to approle
grant execute ON CountryGet to approle
grant execute ON CountryDelete to approle
grant execute ON CityUpdate to approle
grant execute ON CityGet to approle
grant execute ON CityDelete to approle
grant execute ON PresidentMedalGet to approle
grant execute ON PresidentMedalUpdate to approle
grant execute ON PresidentMedalDelete to approle
grant execute ON PresidentSearch to approle
grant execute ON MedalistGet to approle
grant execute ON PartyGet to approle
grant execute ON DashboardGet to approle
grant execute ON PresidentDesc to approle
grant execute ON PartyDesc to approle
grant execute ON IsPresidentDeleteAllowed to approle
grant execute ON PresidentDelete to approle
grant execute ON OlympicsCreateBasedOnPrevious to approle
grant execute ON OlympicsGet to approle
grant execute ON OlympicsSummaryGet to approle
grant execute ON PresidentGet to approle
grant execute ON MedalGet to approle
grant execute ON UpdatePresident to approle
grant execute ON SportUpdate to approle
grant execute ON SportSubCategoryUpdate to approle
grant execute ON SportSubCategoryGet to approle
grant execute ON SportSubCategoryDelete to approle
grant execute ON SportGet to approle
grant execute ON SportDelete to approle
grant execute ON SeasonUpdate to approle
grant execute ON SeasonGet to approle