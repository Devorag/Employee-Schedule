//1 declare variabless with number, string, and boolean
let x = 1; let s = "hello"; let b = true;
//2 for 1 var show value and data type
console.log(x + " data type is = " + typeof(x))
//3 use string interpolation ` literal ${var}` to show value and data type of a var
console.log(`${x} data type = ${typeof(x)}`)
//4 make number 3 into a function called logit and keep it on the bottom of the page
logit(`${x} data type = ${typeof(x)}`,"x variable")
//5 declare const and try to change it
const c = 123;
//c = 444
//6 change value of numeric var from num 1 and change it to string value, logit
x ="abc"
logit(`${x} data type = ${typeof(x)}`,"x variable")
//7 change var back to number, put same value in new var and test with == and ===, logit
x = 123;
let y = "123"
logit((x == y), "x == y")
logit((x === y), "x === y")
//8 declare a var, logit without giving it a value
//logit(z, "z without a value");
logit(z);
logit(z.toString(), "X");
//9 assign a var to the result of multiplying num by strilng, ogit
let n = s * x;
logit(n, "n");
//10 assign a var to null, logit
let d = null;
logit(d);
console.log(d.toString());
function logit(value, desc){
    console.log(`${desc}: value = ${value}`)
}