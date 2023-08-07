/*
    You buy toys wholesale from China and sell to local toy stores. 
    You are trying to organize your inventory, and create a system to track how much you are spending and earning.
*/

-- 1. Create a database called ToyDB

/* 2. Create a table called Toy to store the data. 
      This is the information that needs to be recorded: 
		name of the toy, item number, the purchase price per unit, date purchased, quantity purchased, sold (true or false), price per unit sold, date sold.
	  Note that in this business the entire stock of each toy is sold together, so we do not need to record the quantity sold.
	  Note that the maximum price for a toy purchased and sold is $9999.99

*/

/* 3. Populate the table with sample data. 
      Add the following toys and then add two more of your own:
      Baby Doll, item number - 12389, bought 500 for $12 each on Jan 15 2021, sold for $20 each on Feb 19 2021
      Monopoly, item number - 25678, bought 1000 for $15 each on Feb 9 2021, sold on April 18 2021 for $22 each 
      Fire Truck, item number - 89076, bought 250 for $5 each on Jan 9 2020, sold on Feb 8 2021 for $15 each 
      Lego Police Station, item number - 09865, bought 400 for $20 each on October 9 2021, sold for $40 each on Oct 12 2021
      Silly Putty, item number - 87645, bought 1000 for $0.25 each on Oct 15 2021, sold for $1 on Oct 19 2021
      Playmobil Hospital, item number - 98234, bought 50 for $30 each on Sept 8 2019, sold on Oct 1 2019 for $50 each 
      Doll House, item number - 23897, bought 300 for $18 each on Sept 7 2021, not sold yet
      Basketball, item number - 36098, bought 500 for $5 each on Feb 9 2021, not sold yet   
*/

-- 4. Show a list of toys sorted by quantity purchased, exclude toys not sold at all

-- 5. Show the top 4 toys that were sold for at least five dollars more per unit than they were purchased for. Display the profit as well

-- 6. Show a new column called SoldOrNot. For any toys that have not sold at all, display the words unsold, otherwise display the price the toy sold for.

/* 7. Show how many days each toy sat in the warehouse until it was sold, ordered by fastest selling to slowest selling.
      If it is still in stock show how long it has been gathering dust for.
      Use two SQL statements. 
*/


/* 8. A new worker recently joined your staff and made two mistakes in logging the inventory:
        1.  Baseballs, not basketballs were bought for $5 each on Feb 9 2021
        2.  There was never any Silly Putty bought or sold by your company.
     Correct the data using two SQL statements.
*/
