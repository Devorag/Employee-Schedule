var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
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
let msg2 = document.querySelector("#msg");
document.querySelector("#btn").addEventListener("click", btnWeatherClick);
document.querySelector("#btnParty").addEventListener("click", btnPartyClick);
document.querySelector("#btnPresident").addEventListener("click", btnPresidentClick);
if (partyid) {
    GetAndDisplayPresidents(`President/getbyparty/${partyid}`);
}
function btnPresidentClick() {
    return __awaiter(this, void 0, void 0, function* () {
        GetAndDisplayPresidents("president");
    });
}
function GetAndDisplayPresidents(actionvalue) {
    return __awaiter(this, void 0, void 0, function* () {
        clearCardDiv();
        let wprez = yield fetchFromAPI(`${rkurl + actionvalue}president`);
        for (let p of wprez) {
            const newdiv = document.createElement("div");
            newdiv.className = "col";
            newdiv.innerHTML = addPresidentPostcard(p);
            document.querySelector("#dvcards").appendChild(newdiv);
        }
    });
}
function clearCardDiv() {
    let dvcards = document.querySelector("#dvcards");
    dvcards.innerHTML = "";
}
function btnPartyClick() {
    return __awaiter(this, void 0, void 0, function* () {
        let wparties = yield fetchFromAPI(`${rkurl}party`);
        clearCardDiv();
        let dvcards = document.querySelector("#dvcards");
        for (let p of wparties) {
            const newdiv = document.createElement("div");
            newdiv.className = "col";
            newdiv.innerHTML = addPartyPostcard(p);
            dvcards.appendChild(newdiv);
        }
        //$(".partycard").click(btnPartyCardClick);
    });
}
function btnPartyCardClick() {
    return __awaiter(this, void 0, void 0, function* () {
        const partyid = this.id;
        GetAndDisplayPresidents(`President/getbyparty/${partyid}`);
    });
}
function btnWeatherClick() {
    return __awaiter(this, void 0, void 0, function* () {
        let w; //= { id: 1, body: "hello world", userId: 10 };
        let wlist = yield fetchFromAPI(`https://localhost:7129/WeatherForecast`);
        w = wlist[0];
        num++;
        msg2.innerHTML = w.summary;
        const newdiv = document.createElement("div");
        newdiv.className = "col";
        newdiv.innerHTML = addWeatherPostcard(w);
        document.querySelector("#dvcards").appendChild(newdiv);
    });
}
function btnClick() {
    return __awaiter(this, void 0, void 0, function* () {
        let p; //= { id: 1, body: "hello world", userId: 10 };
        p = yield fetchFromAPI(`https://jsonplaceholder.typicode.com/posts/${num}`);
        num++;
        msg2.innerHTML = p.body;
        const newdiv = document.createElement("div");
        newdiv.className = "col";
        newdiv.innerHTML = addPostcard(p);
        document.querySelector("#dvcards").appendChild(newdiv);
    });
}
function addPresidentPostcard(p) {
    let s = "";
    if (picnum > 9) {
        picnum = 1;
    }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${p.num}p.jpeg" alt="${p.num}">
  <div class="card-body">
    <h5 class="card-title">${p.firstName + " " + p.lastName}</h5>
    <p class="card-text">${p.firstName + " " + p.lastName + ", " + p.termStart || "body coming soon...."} </p>
    <a href="#" class="btn btn-primary">See card ${p.num}</a>
  </div>
</div>`;
    picnum++;
    return s;
}
function addPartyPostcard(p) {
    let s = "";
    if (picnum > 9) {
        picnum = 1;
    }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${picnum}p.jpeg" alt="${p.partyName}">
  <div class="card-body" style="background-color:${p.partyColor}">
    <h5 class="card-title">${p.partyName}</h5>
    <p class="card-text">${p.partyName + " " + p.yearStart || "body coming soon...."} </p>
    <a href="fetchbasics?partyid=${p.partyId}" class="btn btn-primary partycard">See card ${p.partyName}</a>
  </div>
</div>`;
    picnum++;
    return s;
}
function addWeatherPostcard(w) {
    let s = "";
    if (picnum > 9) {
        picnum = 1;
    }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${picnum}p.jpg" alt="${w.temperatureC}">
  <div class="card-body">
    <h5 class="card-title">${w.temperatureC}</h5>
    <p class="card-text">${w.summary || "body coming soon...."} </p>
    <a href="#" class="btn btn-primary">See card ${w.temperatureF}</a>
  </div>
</div>`;
    picnum++;
    return s;
}
function addPostcard(p) {
    let s = "";
    if (picnum > 9) {
        picnum = 1;
    }
    s =
        `//card
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="/images/p${picnum}p.jpg" alt="${p.title}">
  <div class="card-body">
    <h5 class="card-title">${p.title}</h5>
    <p class="card-text">${p.body || "body coming soon...."} </p>
    <a href="#" class="btn btn-primary">See card ${p.id}</a>
  </div>
</div>`;
    picnum++;
    return s;
}
function fetchFromAPI(url) {
    return __awaiter(this, void 0, void 0, function* () {
        let o;
        let r = yield fetch(url);
        o = yield r.json();
        return o;
    });
}
//# sourceMappingURL=fetchbasics.js.map