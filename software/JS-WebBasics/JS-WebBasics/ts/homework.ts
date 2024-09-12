type user = { id: number, email: string, first_name: string, last_name: string};

let msgDiv = document.querySelector("#msg") as HTMLElement;
let contentDiv = document.querySelector("#userTableBody") as HTMLElement;
document.querySelector("#btnSubmit")?.addEventListener("click", btnClicks);

async function btnClicks() {
    const passwordInput = (document.querySelector("#password") as HTMLInputElement).value;
    if (passwordInput === "1234") {
        msgDiv.innerHTML = "";
        const p = await fetchAPI("https://reqres.in/api/users?page=1");
        displayData(p);
    }
    else {
        msgDiv.innerHTML = "Incorrect password. Can't login to data."
        msgDiv.className = "text-danger";
    }
}

function displayData(data: any) {
    contentDiv.innerHTML = "";
    data.data.forEach((user: user) => {
        const userCard = addTableRow(user);
        contentDiv.innerHTML += userCard;
    });
}

function addTableRow(user: user): string {
    return `
    <tr>
        <td>${user.first_name}</td>
        <td>${user.last_name}</td>
        <td>${user.email}</td>
    </tr>`;
}

async function fetchAPI<T>(url: string): Promise<T> {
    let o: T;
    let r = await fetch(url);
    o = await r.json();
    return o;
}




