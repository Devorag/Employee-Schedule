type post = { id: number, body: string, title?: string, userId: number };

let p: post; //= { id: 1, body: "hello world", userId: 10 };
let num = 1;
let picnum = 1;
let msg2 = document.querySelector("#msg") as HTMLElement;
document.querySelector("#btn").addEventListener("click", btnClick);

async function btnClick() {
    p = await fetchFromAPI(`https://jsonplaceholder.typicode.com/posts/${num}`);
    num++;
    msg2.innerHTML = p.body;
    const newdiv = document.createElement("div");
    newdiv.className = "col";
    newdiv.innerHTML = addPostcard(p);
    document.querySelector("#dvcards").appendChild(newdiv);
}

function addPostcard(p: post): string {
    let s = "";
    if (picnum > 9) { picnum = 1; }
    s = 
    `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${picnum}p.jpg" alt="${p.title}">
  <div class="card-body">
    <h5 class="card-title">${p.title}</h5>
    <p class="card-text">${p.body || "body coming soon...."} </p>
    <a href="#" class="btn btn-primary">See card ${p.id}</a>
  </div>
</div>`
    picnum++;
    return s;
}

async function fetchFromAPI<T>(url: string): Promise<T> {
    let o: T;
    let r = await fetch(url);
    o = await r.json();
    return o;
}

