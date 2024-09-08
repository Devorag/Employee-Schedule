"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
let x = 1;
let s = "hello";
let b = true;
console.log(x + " data type is " + typeof (x));
console.log(`${x} data type = ${typeof (x)}`);
logit(`${x} data type = ${typeof (x)}`, "x variable");
const c = 123;
let z;
logit(z, "z");
let d = null;
logit(d, "null value");
function logit(value, desc) {
    let s = `${desc}: value = ${value}`;
    console.log(s);
    return s;
}
//# sourceMappingURL=1%20variables.js.map