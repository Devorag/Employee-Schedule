-- Invention 
/* 1. Show all inventions with a new column called Seperator Description based on these conditions:
      When Invention Name and Description both have a dash it should say dash. 
      When Invention Name contains an e and the Description has a paranthesis, it should say paranthesis.
      When Invention Name has a space and Description has a comma, it should say comma.
      For anything else, it should say unspecified.
*/

/* 2. Show all inventions with a new column CenturyName (e.g. 1700s is the Eighteenth Century).
      Show for any inventions invented in the Seventeenth through Twentieth Centuries.
      Only show CenturyName if the inventor lived longer than the average life span of that century.
      For the 1600's the average life span was 30 years and for each century after ten more years were added to
      the average life span. For all other inventions, the CenturyName should be blank.
*/

/* 3. Hack the Invention Table. 
      Mess up the last names in the following way: 
      If the first name starts with a T and the last name contains an e then Uppercase the Last Name. 
      If the first name is more than 6 characters and the last name has a space then reverse the last name. 
      If the first name is John, James or William and the last name is less than five characters then add an exclamation mark to the last name.
      Any other inventor's last name should not be affected.
*/

/* 4. You are still hacking the Invention Table but have now decided to mess up the Inventors' First Names. 
      If the inventor was under 30 at the time of his invention and the year invented was sometime between 1600 and 1800 
            then his First Name should only show the first letter. 
      If he was somewhere from 31 - 50 and the Year Invented doesn't end in a 5 then his First Name should show the first two letters.
      If he was over fifty and the Year Invented was before 2000 then his First Name should show the first three letters. 
      In all other cases, the first name should just show the first letter followed by a period.
*/
