const r = await fetch("https://jsonplaceholder.typicode.com/posts/5");
const p = await r.json();

console.log(p);
console.log(p.title);