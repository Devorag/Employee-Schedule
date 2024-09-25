type post = { id: number, body: string, title?: string, userId: number };
type weather = {
    date: Date, temperatureC: number, temperatureF: number, readonly:boolean, summary: string 
};
type party = {
    partyId: number, partyName: string, yearStart: number, colorId: number, partyColor: string, partyDesc: string
};

type president = {
    presidentId: number;
    partyId: number;
    num: number | null;
    firstName: string;
    lastName: string;
    dateBorn: Date | null;
    dateDied: Date | null;
    termStart: number | null;
    termEnd: number | null;
}
const domain = window.location.hostname;
console.log(domain);
console.log(window.location);
let rkurl = "https://dgrecordkeeperapi.azurewebsites/";
//if (domain.toLowerCase() == "localhost") {
//    rkurl = "https://localhost:7286/api/";
//}

const params = new URLSearchParams(window.location.search);
let partyid = params.get("partyid");

let num = 1;
let picnum = 1;
let msg2 = document.querySelector("#msg") as HTMLElement;
document.querySelector("#btn").addEventListener("click", btnWeatherClick);
document.querySelector("#btnParty").addEventListener("click", btnPartyClick);
document.querySelector("#btnPresident").addEventListener("click", btnPresidentClick);

if (partyid) {
    GetAndDisplayPresidents(`President/getbyparty/${partyid}`);
}

async function btnPresidentClick() {
        GetAndDisplayPresidents("president");
    }

async function GetAndDisplayPresidents(actionvalue: string) {
    clearCardDiv();
    let wprez: president[] = await fetchFromAPI(`${rkurl + actionvalue}president`);
    for (let p of wprez) {
        const newdiv = document.createElement("div");
        newdiv.className = "col";
        newdiv.innerHTML = addPresidentPostcard(p);
        document.querySelector("#dvcards").appendChild(newdiv);
    }
}

function clearCardDiv() {
    let dvcards = document.querySelector("#dvcards");
    dvcards.innerHTML = "";
}

async function btnPartyClick() {
    let wparties: party[] = await fetchFromAPI(`${rkurl}party`);
    clearCardDiv();
    let dvcards = document.querySelector("#dvcards");
    for (let p of wparties) {
        const newdiv = document.createElement("div");
        newdiv.className = "col";
        newdiv.innerHTML = addPartyPostcard(p);
        dvcards.appendChild(newdiv);
    } 
    //$(".partycard").click(btnPartyCardClick);
}

async function btnPartyCardClick() {
    const partyid = this.id;
    GetAndDisplayPresidents(`President/getbyparty/${partyid}`);
}

async function btnWeatherClick() {
    let w: weather; //= { id: 1, body: "hello world", userId: 10 };
    let wlist: weather[] = await fetchFromAPI(`https://localhost:7129/WeatherForecast`);
    w = wlist[0];
    num++;
    msg2.innerHTML = w.summary;
    const newdiv = document.createElement("div");
    newdiv.className = "col";
    newdiv.innerHTML = addWeatherPostcard(w);
    document.querySelector("#dvcards").appendChild(newdiv);
}
async function btnClick() {
    let p: post; //= { id: 1, body: "hello world", userId: 10 };
    p = await fetchFromAPI(`https://jsonplaceholder.typicode.com/posts/${num}`);
    num++;
    msg2.innerHTML = p.body;
    const newdiv = document.createElement("div");
    newdiv.className = "col";
    newdiv.innerHTML = addPostcard(p);
    document.querySelector("#dvcards").appendChild(newdiv);
}

function addPresidentPostcard(p: president): string {
    let s = "";
    if (picnum > 9) { picnum = 1; }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${p.num}p.jpeg" alt="${p.num}">
  <div class="card-body">
    <h5 class="card-title">${p.firstName + " " + p.lastName}</h5>
    <p class="card-text">${p.firstName + " " + p.lastName + ", " + p.termStart || "body coming soon...."} </p>
    <a href="#" class="btn btn-primary">See card ${p.num}</a>
  </div>
</div>`
    picnum++;
    return s;
}

function addPartyPostcard(p: party): string {
    let s = "";
    if (picnum > 9) { picnum = 1; }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${picnum}p.jpeg" alt="${p.partyName}">
  <div class="card-body" style="background-color:${p.partyColor}">
    <h5 class="card-title">${p.partyName}</h5>
    <p class="card-text">${p.partyName + " " + p.yearStart || "body coming soon...."} </p>
    <a href="fetchbasics?partyid=${p.partyId}" class="btn btn-primary partycard">See card ${p.partyName}</a>
  </div>
</div>`
    picnum++;
    return s;
}

function addWeatherPostcard(w: weather): string {
    let s = "";
    if (picnum > 9) { picnum = 1; }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${picnum}p.jpg" alt="${w.temperatureC}">
  <div class="card-body">
    <h5 class="card-title">${w.temperatureC}</h5>
    <p class="card-text">${w.summary || "body coming soon...."} </p>
    <a href="#" class="btn btn-primary">See card ${w.temperatureF}</a>
  </div>
</div>`
    picnum++;
    return s;
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

