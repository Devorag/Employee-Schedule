let x; let s; let br = "\n------------------------";
/*
x is an account balance when 0 then output "no money" else ouptut the balance, show value of x and s for both cases
 */
console.log("x is an account balance.\nwhen 0 then output 'no money'\nelse ouptut the balance", br);
//code her for when x is falsy
x = 0; 
s = x || "no money";
console.log("when x = ", x, "then s =", s, br)

//code her for when x is truthy
x = 100; 
s = x || "no money";
console.log("when x = ", x, "then s =", s, br)
console.log("***********************")

//x is a winning lottery num when not zero output winner else x
console.log("x is a winning lottery num when not zero output winner else x", br);
//code her for when x is falsy
x = null; 
s = x && "winner";
console.log("when x = ", x, "then s =", s, br)

//code her for when x is falsy
x = 2; 
s = x && "winner";
console.log("when x = ", x, "then s =", s, br)

//