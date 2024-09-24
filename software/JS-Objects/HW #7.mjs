let users = await getUsers(1);
console.log(users);
users = await getUsers(2);
console.log(users);

async function getUsers(pageNumber) {
    let url = "http://reqres.in/api/users?";
    let sp = new URLSearchParams();
    sp.append("page", pageNumber);
    try {
        let r = await fetch(url + sp.toString());
        if (r.status === 200) {
            let data = await r.json();
            return `Page ${data.page} has ${data.per_page} users out of ${data.total}.`;
        }
        else {
            return `Error: Failed to fetch users. Status code: ${r.status}`;
        }
    }
    catch (error) {
        return `Error: ${error.message}`;
    }
}   