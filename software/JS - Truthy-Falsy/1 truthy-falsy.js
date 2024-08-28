let x; let s; 
x = "1";
if (x) {
    console.log("has value")
}
else {
    console.log("has no value")
}
x = 0;
s = x ? "has value" : "no value";
console.log("s", s);

x = "hi";
s = x; 
s = x === "hi";
console.log("s",s)