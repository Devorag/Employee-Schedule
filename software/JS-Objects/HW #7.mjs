async function getLocation(query) {
    let url = "http://api.positionstack.com/v1/forward?";
    let sp = new URLSearchParams();
    sp.append("access_key", "014a07bcdd6fa2b569127b8f188f7b88");
    sp.append("query", query);

    try {
        let response = await fetch(url + sp.toString());
        if (response.status !== 200) {
            throw new Error(`Error: Received status code ${response.status}`);
        }
        const rawText = await response.text();
        console.log('Raw Response:', rawText);
        const contentType = response.headers.get("content-type");
        if (!contentType || !contentType.includes("application/json")) {
            throw new Error(`Error: Expected JSON but got ${contentType}`);
        }

        let data = JSON.parse(rawText);

        if (data.data && data.data.length > 0) {
            let location = data.data[0];
            return `Location for query "${query}": ${location.name}, ${location.region}, ${location.country}`;
        } else {
            return `No location found for query "${query}".`;
        }
    } catch (error) {
        return `Error occurred: ${error.message}`;
    }
}

let s = await getLocation("Hilltop Place");
console.log(s);

s = await getLocation("New York");
console.log(s);

s = await getLocation("New Jersey");
console.log(s);
