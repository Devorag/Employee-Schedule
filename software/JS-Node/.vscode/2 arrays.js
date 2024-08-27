//for all console.log(array variable)

//1 declare array with 4 numbers non-sorted
let a = [8,4,2,6];
console.log(a);
//2 sort the array
a.sort();
console.log('this is the sort', a);
//3 return an array that only has the 2 middle items
let b = a.slice();
console.log('slice without params', b)
b = a.slice(1,3);
console.log('slice without params', b)
//4 add the next 3 sequences
a.push(9,10,11);
console.log("push", a)
//5 replace 3 thru 5th item with num spelled out
a.splice(2,3,'six','eight','nine');
console.log('splice',a)
//6 return a new array only with the spelled out values
let a2 = a.filter(n => isNaN(n))
console.log('filter',a2)
//7 return a new array that has all the numeric values doubled
a2 = a.map(n => n* 2);
console.log(a2);
//8 use forEach to output the index of each item (indexOf) and it's value
a.forEach(n => console.log("index",a.indexOf(n),"value",n));
//9 using a for loop show the ascii value for each char in "the twain shall never meet"
let s = "the twain shall never meet";
let c = s.split("");
console.log("split string", c)
for(let n of c) {
    console.log(n,n.charCodeAt(0))
}

//10 loop from 25 to 40 and build a string of chars using the String.fromCharCode method
s = "";
//for(let i = 25;i<41; i++ ){
  //  s = s + //charCodeAt(i);
//}
console.log("this is loop",s);
//11 use the join method to produce the following array as one string of values 'h','a','v,'i','n',g,' ','f','u','n'
let v = ['h','a','v','i','n','g','f','u','n']
s = v.join("");
console.log("join", s);
//12 destructure 1st 2 elements into two vars
console.log(a[2])
let n1; let n2; let nr;
[n1,n2] = a;
console.log("n1 n2", n1,n2);
//13 same as 12 and get the rest of the values into a new array
[n1,n2,...nr] = a;
console.log("n1 n2", n1,n2,nr);
