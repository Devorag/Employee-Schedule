/*
Write a function called xcrypt that takes a phrase and can either encrypt or decrypt it.
The encryption method is to change each character in the phrase to a different character in the ascii chart, based on the number passed in.
For example if the phrase is "hello world" and the user specifies 5 then the result would be "jgnnq"yqtnf"
because j has the ascii value of h + 5, and so on for the rest of the chars.

You should be able to call the function like this: let x = xcrypt("hello world",5) to encrypt and xcrypt(x,-5) to decrypt. The function should return the value and use console.log outside the function to show it's results, like this:

let x = xcrypt("hello world",5)
console.log(x);
let y = xcrypt(x,5);
console.log(y);

*/

