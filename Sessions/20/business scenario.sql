/*
As the secretary of a very successful hair stylist, I would like a clear organized list of all our past and upcoming appointments. 
We would need to record the client's first name, last name, their maritul/ single status, phone number, date of appointment, and what they are coming for. 
We provide the following services:
hair cuts at $20
pro-addictions at $350 
keratins at $400 
hair styled for occasions at $65
wig wash at $50
and wig styled at $100 
Please add an additional column that should record their required fee. 

Q: Do you need to record the time of the appointment as well?
A: Of course, we must have the time!

Q: Can you have two appointments at the same time?
A: No, we like to give each customer their full attention and service needed.

Q: Can they come for more then one need?
A: They can. However, it must be recorded seperately.

Q: Do you offer any family or holiday discounts?
A: No need for you to record that, we'll take care of the sales.

Reports:
1) A list of all clients who's total charge is less than $125
2) The average profit earned in the 1990's
3) The number of patients who's last name has an 'e' or their phone number has a '6' or '7' as per government audits.
4) The Max amount of hair cuts per month.


please use all info from the medalist table 
First Name: Although not all the inventors were females, for the purpose of sample info for this table let's assume they are all women.
However, please exlude those that say 'mens ....' by the sports subcategory.
Status: if age at time of medal is >= 23, married.
Phone Number: concat( '845', '-', yearborn, '-', first 3 integers of the olympic year)
Date of appointment: should be date recorded and year should be 10 years after year born
Appointment Desc: Pro-addiction for those who won gold medal
                  Keratin for those who won more than once
                  Hair cut for the summer season
                  Wig Wash if age at time of medal is between 25 - 50
                  Else - the other options available

*/