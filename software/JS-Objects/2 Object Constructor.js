//1 create person object using constructor
function Person() {
    return {
        name: "",
        age: 16
    }
}
//2 get 3 instances of person and log them
const a = new Person;
const p = new Person();
p.name = "Jim";
p.DOB = "1/1/1900";
let c = Person();
console.log(a);
console.log(p);
console.log(c);
