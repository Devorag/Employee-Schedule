//1 create person object and allow user to specify the name and age as params
function Person(name, age){
    return{name, age};
}
let p = new Person("Bob", 101);
console.log(p);

p = new Person("Bob");
console.log(p);
//2 create soldier object using the shortcut method for a constructor
function Soldier() {
    this.branch = "Navy";
    this.rank = "General";
}
console.log(new Soldier());
console.log(typeof(new Soldier()));
//3 show what happens if you omit new or parenthesis when getting instance from each constructor type
p = new Person();
console.log(p);

let s = new Soldier;
console.log(s);