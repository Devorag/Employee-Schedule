//1 create and assign a person object using object literal, props are name, age
let p = {name:"John", age: 16}
//2 log it
console.log("p",p);
//3 on the fly add an property for job and log the obj
p.job = "Doctor"
//4 log properties, some with dot notation and some with []
console.log("p",p);
//5 loop through object props and log in 3 statements the iterated prop name, typeof on the iterator, and the prop value
for(let x in p) {
    console.log("prop name", x)
    console.log("data type of x", typeof(x));
    console.log("prop value", p[x])
}