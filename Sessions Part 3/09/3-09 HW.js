/*
You are working on a pricing system function that allows the calling code to 
pass in a function that modifies the price of a specified item. 

The function, named calculatePrice (as shown below), accepts an item name, its price, and another function.
calculatePrice applies the provided function to the price and then logs the result in the following format:
"Base price for [itemname] is [original price] changed to [new price]. Calculated with [price change description]." 
For example : Base price for toy is 100 changed to 90. Calculated with ten_percent_off.

To get the "price change description" use the name of the function or the name of the variable containing the function.
The name should be multiple words joined with underscores, as shown in the example.

To obtain the name of the function or the variable containing the function, use f.name. 
If an inline arrow function is used, f.toString() will provide the body of the function. 

Complete the function implementation and demonstrate its use in three ways:
1) A classical function that discounts based on the item name. If the item name contains 'a' or 'e' (case-insensitive), provide a 10% discount; otherwise, provide a 20% discount.
   The price change description should read "discount_based_on_name".
2) A function expression using the function keyword but without a specific function name, that applies a random surcharge. The price change description should be "random_surcharge".
   Utilize Math.floor(Math.random() * 100) to generate a random integer. Math.random() produces a decimal value less than 1. By multiplying it by 100, you obtain a value greater than zero. Math.floor() then truncates the decimal portion.
3) An arrow function that offers a 50% discount. The price change description should be "fifty_percent_discount".
*/

function calculatePrice(itemname, price, f) {

}
