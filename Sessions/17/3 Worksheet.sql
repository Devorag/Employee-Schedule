/*
World Record
do the work in the table source code files
add columns without dropping tables
*/
/* 1. Add a new column called RecordBreakerAddress.
      This column does not allow nulls but since it is not required it can be defaulted to blank.
*/

/* 2. Add a new bit column called RecordBroken. It shouldn't allow nulls and should be defaulted to zero.
      If someone else breaks the same record afterwards, then the old one's RecordBroken column will have to be updated to a one.
*/

-- 3. Test the new default values. Insert a record without specifying values for those columns, and then select the new record
