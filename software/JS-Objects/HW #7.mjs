let s = await getLocation("Hilltop Place");
console.log(s);
s = await getLocation("Noam Court");
console.log(s);

async function getLocation(street) {
    let url = "http://api.positionstack.com/v1/forward?";
    let sp = new URLSearchParams();
    sp.append("access_key", "014a07bcdd6fa2b569127b8f188f7b88");
    sp.append("Query", street);
    try {
    let r = await fetch(url + sp.toString); 
    if(r.ok) {
        let l = await r.json();
        let ldesc = `the location of `;
        return ldesc;
    }
    else {
        return `Error: Received a ${r.status} response`;
    }
    }
    catch(e) {
        return (e.message);
    }
}