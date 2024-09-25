
type Recipe = {
    recipeId: number;
    cuisineId: number;
    usersId: number;
    usersName: string;
    recipeName: string;
    calories: number | null;
    recipeStatus: string;
    dateDrafted: Date | null;
    datePublished: Date | null;
    dateArchived: Date | null;
    isVegan: number | null;
};

type User = {
    UserId: number;
    UsersName: string;
}

type Ingredient = {
    ingredientId: number;
    recipeId: number;
    ingredientName: string;
    quantity: string;
}

type Meal = {
    mealId: number;
    mealName: string;
    usersName: string;
    calories: number | null;
    courses: number | null;
    recipes: number | null;
    mealDescription: string;
};

type Cookbook = {
    cookbookId: number;
    cookbookName: string;
    author: string;
    recipes: number | null;
    price: number | null;
    skillLevelDesc: string;
};

const recipeDomain = window.location.hostname;
console.log(recipeDomain);
console.log(window.location);

let url = 'https://localhost:7205';
async function getNumberOfIngredients(recipeId: number): Promise<number> {
    try {
        const response = await fetch(`${url}/api/ingredients/${recipeId}`);
        if (!response.ok) {
            throw new Error(`Error fetching ingredients for recipe ID: ${recipeId}`);
        }
        const ingredients: Ingredient[] = await response.json();
        return ingredients.length;
    } catch (error) {
        console.error('Error fetching number of ingredients:', error);
        return 0; 
    }
}
async function loadData<T>(endPoint: string, headers: string[], mapRow: (item: T) => Promise<string[]>): Promise<void> {
    try {
        const response = await fetch(`${url}/api/${endPoint}`);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data: T[] = await response.json();

        console.log(data);

        displayTable(data, headers, mapRow);
    } catch (error) {
        console.error(`Error loading ${endPoint}:`, error);
    }
}

async function displayTable<T>(data: T[], headers: string[], mapRow: (item: T) => Promise<string[]>): Promise<void> {
    let outputDiv = document.getElementById('output');

    if (outputDiv) {
        outputDiv.innerHTML = '';
        let table = document.createElement('table');
        table.setAttribute('class', 'table table-striped');
        let header = `<thead><tr>${headers.map(header => `<th>${header}</th>`).join('')}</tr></thead>`;

        table.innerHTML = header;
        let tableBody = document.createElement('tbody');
        for (const item of data) {
            const rowValues = await mapRow(item);
            let rowHtml = `<tr>${rowValues.map(value => `<td>${value}</td>`).join('')}</tr>`;
            tableBody.innerHTML += rowHtml;
        }
        table.appendChild(tableBody);
        outputDiv.appendChild(table);
    }
}

async function mapRecipeRow(recipe: Recipe): Promise<string[]> {
   // const numOfIngredients = await getNumberOfIngredients(recipe.recipeId);
        return [
            recipe.recipeName,
            recipe.recipeStatus,
            recipe.usersName,
            recipe.calories !== null ? recipe.calories.toString() : 'N/A',
            //numOfIngredients.toString(),
            recipe.isVegan == 1 ? 'Yesff' : 'Nggo'
        ];
    }
    async function mapMealRow(meal: Meal): Promise<string[]> {
        return [
            meal.mealName,
            meal.usersName,
            meal.calories !== null ? meal.calories.toString() : 'N/A',
            meal.courses !== null ? meal.courses.toString() : 'N/A',
            meal.recipes !== null ? meal.recipes.toString() : 'N/A',
            meal.mealDescription
        ];
    }
    async function mapCookbookRow(cookbook: Cookbook): Promise<string[]> {
        return [
            cookbook.cookbookName,
            cookbook.author,
            cookbook.recipes !== null ? cookbook.recipes.toString() : 'N/A',
            cookbook.price !== null ? `$${cookbook.price.toFixed(2)}` : 'N/A',
            cookbook.skillLevelDesc
        ];
    }

    function loadRecipes(): Promise<void> {

        const recipeHeaders = ['Recipe Name', 'Status', 'User', 'Calories', 'Num of Ingredients', 'Vegan'];
        return loadData('recipe', recipeHeaders, mapRecipeRow);
    }

    function loadMeals(): Promise<void> {
        const mealHeaders = ['Meal Name', 'User', 'Calories', 'Courses', 'Recipes', 'Description'];
        return loadData('meal', mealHeaders, mapMealRow);
    }

    function loadCookbooks(): Promise<void> {
        const cookbookHeaders = ['Cookbook Name', 'Author', 'Recipes', 'Price', 'Skill Level'];
        return loadData('cookbook', cookbookHeaders, mapCookbookRow);
    }
