/* 1. 
Show all world records with a description of their amounts:
	1-50 achieved before 2015 = low, 50-1000 achieved after and including 2015 = medium, 
	1000-2000 not in 2020 = high, anything above 2000 = off the charts, anything else blank
The new column should be displayed first and then all other columns
*/

/* 2. Display a Code Column:
    Any record with a desc length
		greater than 300 and an h in the name gets an h,
		less than 300 and a name that starts with a d get a d, 
    all whose names contain an e or an i get an e
	all others get an x
*/

/* 3. 
	  Hack the WorldRecord Table
	  Update the category column based on the following conditions: 
	  when record was achieved between 2000 and 2005 and category starts with an a then reverse the category,
      when record was achieved from 2006 to 2015 and category starts with s then category should just say the first initial, 
	  when record was achieved after 2015 and category has a space in it then change category to uppercase. 
	  For everything else, change category to lowercase.
*/

/* 4. Update the Amount column based on the following conditions: 
	  	When unit of measure is Total Number and country is USA or England add 100. 
	  	When unit of measure is People and country is India take away 1000. 
	  	When unit of measure is metres and country is Germany, Italy or Japan add 1000. 
	  	For all other cases add 10. 
	Ensure that no records end up with a zero or less in their amount column.
*/
