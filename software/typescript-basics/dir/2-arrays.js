"use strict";
let a = [8, 2, 6, 1];
console.log(a);
a.sort();
console.log('sort', a);
let b = a.slice();
console.log('slice without any params', b);
b = a.slice(1, 3);
console.log('slice 2 middle items', b);
a.push(9, 10, 11);
console.log("push", a);
let a2 = a.filter(n => isNaN(n));
console.log("filter", a2);
a2 = a.map(n => n = n * 2);
console.log(a2);
a.forEach(n => console.log("index", a.indexOf(n), "value", n));
let s = "the twain shall never meet";
let c = s.split("");
for (let n of c) {
    console.log(n, n.charCodeAt(0));
}
s = "";
for (let i = 25; i < 41; i++) {
    s = s + String.fromCharCode(i);
}
console.log("loop from 25 to 40 to generate a string", s);
let v = ['h', 'a', 'v', 'i', 'n', 'g', ' ', 'f', 'u', 'n'];
s = v.join("");
console.log("join", s);
let n1;
let n2;
let narr;
[n1, n2] = a;
console.log("n1 n2", n1, n2);
[n1, n2, ...narr] = a;
console.log("n1 n2 narr", n1, n2, narr);
//# sourceMappingURL=2-arrays.js.map