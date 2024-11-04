export interface ICuisine {
    cuisineId: number;
    cuisineName: string;
};

export interface IRecipe {
    recipeId: number,
    cuisineId: number,
    usersId: number,
    recipeName: string,
    usersName: string,
    calories: number,
    numIngredients: number,
    isVegan: string,
    recipeStatus: string,
    dateDrafted: Date,
    datePublished: Date | null,
    dateArchived: Date | null,
    errorMessage: string
}

export interface IUser {
    usersId: number,
    usersName: string,
}