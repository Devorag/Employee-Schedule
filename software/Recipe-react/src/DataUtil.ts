
import { FieldValues } from "react-hook-form";
import { ICuisine, IRecipe, IUser } from "./DataInterface";

let baseurl = "https://dgrecipeapi.azurewebsites.net/api/"
//baseurl = import.meta.env.VITE_API_URL;

async function fetchData<T>(url: string): Promise<T> {
    url = baseurl + url;
    const r = await fetch(url);
    const data = await r.json();
    return data;
};


async function deleteData<T>(url: string): Promise<T> {
    url = baseurl + url;
    const r = await fetch(url, { method: "DELETE" });
    const data = await r.json();
    return data;
};

async function postData<T>(url: string, form: FieldValues): Promise<T> {
    url = baseurl + url;
    const r = await fetch(url, {
        method: "POST",
        body: JSON.stringify(form),
        headers: {
            "Content-Type": "application/json"
        }
    });
    const data = await r.json();
    return data;
}

export async function fetchCuisines() {
    return await fetchData<ICuisine[]>("cuisine");
}

export async function fetchUsers() {
    return await fetchData<IUser[]>("User");
}

export async function fetchRecipesbyCuisineName(cuisineName: string) {
    return await fetchData<IRecipe[]>(`Recipe/getbyCuisineName/${cuisineName}`);
};

export async function postRecipe(form: FieldValues) {
    return postData<IRecipe>("recipe", form);
}

export async function deleteRecipe(recipeId: number) {
    return deleteData<IRecipe>(`recipe?id=${recipeId}`);
}

export const blankRecipe: IRecipe = {
    recipeId: 0,
    recipeName: "",
    calories: 0,
    recipeStatus: "",
    usersId: 0,
    usersName: "",
    isVegan: "No",
    numIngredients: 0,
    cuisineId: 0,
    dateDrafted: new Date(),
    dateArchived: new Date(),
    datePublished: new Date(),
    errorMessage: ""
};