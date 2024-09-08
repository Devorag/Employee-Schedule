//1 declare array of strings without initializing it, add 5 items to them
let lst: string[];
lst = ["hello"];
lst.push("hi");
console.log(lst);
//2 declare a tuple to store user id (number) and user name, give it values
let usert: [number, string];
usert = [0, ""];
usert[0] = 12;
usert[1] = "John";
console.log(usert);
//3 attempt to add more elements to the tuple
usert.push(9);
console.log(usert);
//4 make an array of any and put values of misc data types into it
let anylst: any[] = [];
anylst.push(1);
anylst.push("hi");
anylst.push([1,2,3]);
console.log(anylst);

enum Size {small = "s", medium = "m", large = "l"};
let si: Size = Size.medium;
console.log(si);
console.log("finished");