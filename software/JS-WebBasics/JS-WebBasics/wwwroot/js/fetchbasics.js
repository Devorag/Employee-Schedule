var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
let p; //= { id: 1, body: "hello world", userId: 10 };
let num = 1;
let picnum = 1;
let msg2 = document.querySelector("#msg");
document.querySelector("#btn").addEventListener("click", btnClick);
function btnClick() {
    return __awaiter(this, void 0, void 0, function* () {
        p = yield fetchFromAPI(`https://jsonplaceholder.typicode.com/posts/${num}`);
        num++;
        msg2.innerHTML = p.body;
        const newdiv = document.createElement("div");
        newdiv.className = "col";
        newdiv.innerHTML = addPostcard(p);
        document.querySelector("#dvcards").appendChild(newdiv);
    });
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