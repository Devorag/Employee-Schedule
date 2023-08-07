/*
-- WorldRecord
do the work in the table source code files
all computed columns should be persisted
add columns without dropping tables
*/
/*  1. The Code column was mistakenly left out of the world record table!!     
       The column is made up of the following information:
            The first 20 characters of the Record Name with all spaces removed
            The year the record was achieved in
        Add the column back in. Make sure to give the column a unique constraint
*/

/* 2. The Guinness Book of World Records has mandated an official description for each record. 
    It should always be used for displaying World Records. Add it to the table and call the column OfficialDesc.
    It's made up of the following information:
        Category followed by a colon and a space
        Record Name followed by a dash
        Amount followed by a space and then the Unit of Measure followed by a period and a space
        Literal text "Achieved By " followed by FullName, followed by a space and then year achieved in parentheses
*/

/*
3 Check out the new columns by selecting all records!
*/