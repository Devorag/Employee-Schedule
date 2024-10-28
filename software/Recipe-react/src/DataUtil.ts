//https://dgrecipeapi.azurewebsites.net/api

import { ICuisine, IRecipe } from "./DataInterface";
//const baseurl = "https://localhost:5016/api/"
const baseurl = "https://dgrecipeapi.azurewebsites.net/api/"

async function fetchData<T>(url: string): Promise<T> {
    url = baseurl + url;
    const r = await fetch(url);
    const data = await r.json();
    return data;
};

export async function fetchCuisines() {
    return await fetchData<ICuisine[]>("Cuisine");
}

export async function fetchRecipesbyCuisineName(cuisineName: string) {
    return await fetchData<IRecipe[]>(`Recipe/getbyCuisine/${cuisineName}`);
};