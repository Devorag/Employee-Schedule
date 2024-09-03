let p = {};
try {
const r = await fetch("https://jsonplaceholder.typicode.com/posts/5");
console.log(r.status, r.statusText);
p = await r.json();

}
catch(e) {
    console.log(e.message);
}
console.log(p);