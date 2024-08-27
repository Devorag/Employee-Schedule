//1 create person object using constructor and assign it to var p
function Person() {
    return {
        name: "John", age:23
    }
}
const p = new Person();
//2 get prop values into variables using destructuring
let{name,age} = p;
console.log(name,age);
//3 show that assigning a new var to p is referencing same object
let p2 = p;
p.name = "Adam";
p2.age = 32;
console.log(p,p2);
//4 use Object.assign to create a copy, show that it is different
p2 = {};
Object.assign(p2,p);
p.name = "Bob";
p2.age = 32;
console.log(p,p2);

const p3 = {...p2};
p3.name = "Cindy";
console.log(p2,p3);
//5 create soldier object (branch, rank)
const soldier = {branch:"Navy", rank:"General"};
//6 merge soldier into person, and show it
Object.assign(p,soldier);
console.log(p);
//7 create athlete object (sport)
const athlete = {sport: "football"};
//8 create new instance of person and merge into it soldier and athlete
const p4 = new Person;
Object.assign(p4, soldier, athlete);
//9 create an array called roles that contains soldier and athlete, merge roles into a new instace of Person
const roles = [soldier, athlete];
const p5 = new Person;
Object.assign(p5, ...roles);
console.log(p5);
//10 same as 9 but show what happens if you do not use the spread operator
const p6 = new Person;
Object.assign(p6, roles);
console.log(p6);
//11 create an array called people, add to it new instances of person, and put soldier and athlete into an array called roles
const people = [new Person, new Person];
people[1].Name = "Bob";
//12 merge roles into all persons in people
people.forEach(y => Object.assign(y, ...roles))
console.log(people[0],people[1]);
//13 create a copy of people array that contains copy of persons not a reference
const people2 = [];
people.forEach(y => people2.push({...y}));

people[0].name = "Zoe";
people2[0].name = "Zzz";
console.log(people[0],people2[0]);