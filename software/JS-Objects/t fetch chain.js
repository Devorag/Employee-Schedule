

fetch("https://jsonplaceholder.typicode.com/posts/5")
.then(r => r.json()) 
.then(p => main(p))
.catch(e => console.log(e.message))

function main() {
    console.log(0);
}