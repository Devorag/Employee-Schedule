/*
We need to change the political party schema to incorporate some new information. Make all changes in Tables and Data files.
1) Parties already have colors, but now parties need to be able to choose from a dropdown of Color values. 
2) Colors may be shared between parties.
3) Not every party has a color.
3) There are three parties that we didnt know about since their members were never elected as President but we still need to record them: 
    Black Panther, 1966, Black
    Socialist Party of America, 1901, no color
    Prohibition, 1869, Red

Update the current parties so that their colors are now selected from master list of colors.
*/

--Reports: For all reports never show null, rather show blank or 0 depending on data type
--1) Show all parties sorted in the descending order of amount of members elected to President. Include those with no presidents. Show party name, color and president count. 

--2) Show all Presidents (Number, First name, Last name) and their party's color, sort by number

--3) Show the parties that have not had any members elected as President

--4) Breaking News!! Someone from the Prohibition Party was just elected president! Insert the new president (you make up the info, do not include in  "data president" file)

/*
5) The Times of CPU hired an investigative journalist to research any correlation between a Party's color and the amount of Executive Orders issued. 
    The investigator needs the following information: Show a list of colors and number of executive orders for each color, sort by highest number of executive orders to the lowest
*/

