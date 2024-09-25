var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var _a;
let msgDiv = document.querySelector("#msg");
let contentDiv = document.querySelector("#userTableBody");
(_a = document.querySelector("#btnSubmit")) === null || _a === void 0 ? void 0 : _a.addEventListener("click", btnClicks);
function btnClicks() {
    return __awaiter(this, void 0, void 0, function* () {
        const passwordInput = document.querySelector("#password").value;
        if (passwordInput === "1234") {
            msgDiv.innerHTML = "";
            const p = yield fetchAPI("https://reqres.in/api/users?page=1");
            displayData(p);
        }
        else {
            msgDiv.innerHTML = "Incorrect password. Can't login to data.";
            msgDiv.className = "text-danger";
        }
    });
}
function displayData(data) {
    contentDiv.innerHTML = "";
    data.data.forEach((user) => {
        const userCard = addTableRow(user);
        contentDiv.innerHTML += userCard;
    });
}
function addTableRow(user) {
    return `
    <tr>
        <td>${user.first_name}</td>
        <td>${user.last_name}</td>
        <td>${user.email}</td>
    </tr>`;
}
function fetchAPI(url) {
    return __awaiter(this, void 0, void 0, function* () {
        let o;
        let r = yield fetch(url);
        o = yield r.json();
        return o;
    });
}
//# sourceMappingURL=homework.js.map