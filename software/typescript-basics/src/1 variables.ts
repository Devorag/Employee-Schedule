//1 declare variables with number, string, and boolean
let x = 1; let s = "hello"; let b = true;
//2 for 1 var show value and data type
console.log(x + " data type is " + typeof(x));

//3 use string interpolation ` literal ${var}` to show value and data type of a var
console.log(`${x} data type = ${typeof(x)}`)
//4 make number 3 into a function called logit and keep it on the bottom of the page
logit(`${x} data type = ${typeof(x)}`,"x variable");
//5 declare const and try to change it
const c = 123;
//c = 444
//8 declare a var, logit without giving it a value
let z;
logit(z, "z");
//10 assign a var to null, logit
let d = null;
logit(d, "null value");
//logit(q,"q");
function logit(value : any, desc: string){
    let s = `${desc}: value = ${value}`;
    console.log(s);
    return s;
}
export {};