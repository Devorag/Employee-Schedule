import { IParty } from "./DataInterfaces";

const baseurl = "https://recordkeeperapi2.azurewebsites.net/api/";

async function fetchData<T>(url: string): Promise<T> {
    url = baseurl + url;
    const p = await fetch(url);
    const data = await p.json();
    return data;
}

export async function fetchParties() {
    return await fetchData<IParty[]>("Party");
}