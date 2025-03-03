
import { FieldValues } from "react-hook-form";
import { ICuisine, IRecipe, IUser } from "./DataInterface";
import { CreateAPI, getUserStore } from "@devorag/reactutils";


let baseurl = import.meta.env.VITE_API_URL_DEV;

function api() {
    const sessionkey = getUserStore(baseurl).getState().sessionKey;
    console.log("Session Key:", sessionkey);
    return CreateAPI(baseurl, sessionkey);
}

export async function fetchCuisines() {
    return await api().fetchData<ICuisine[]>("cuisine");
}

export async function fetchUsers() {
    return await api().fetchData<IUser[]>("User");
}

export async function fetchRecipesbyCuisineName(cuisineName: string) {
    return await api().fetchData<IRecipe[]>(`Recipe/getbyCuisineName/${cuisineName}`);
};

export async function fetchRecipeById(recipeId: number) {
    return await api().fetchData<IRecipe>(`recipe/${recipeId}`);
}

export async function postRecipe(form: FieldValues) {
    console.log("Form data being sent:", form);
    try {
        return await api().postData<IRecipe>("recipe", form);
    } catch (error) {
        console.error("Error in postRecipe:", error);
        throw error;
    }
}

export async function deleteRecipe(recipeId: number) {
    return api().deleteData<IRecipe>(`recipe?id=${recipeId}`);
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