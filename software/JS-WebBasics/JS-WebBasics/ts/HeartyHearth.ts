
type Recipe = {
    recipeId: number;
    usersName: string;
    recipeName: string;
    calories: number | null;
    recipeStatus: string;
    numIngredients: string;
    isVegan: string;
};

type Meal = {
    mealId: number;
    mealName: string;
    usersName: string;
    numCalories: number | null;
    numCourses: number | null;
    numRecipes: number | null;
    mealDescription: string;
};

type Cookbook = {
    cookbookId: number;
    cookbookname: string;
    author: string;
    numRecipes: number | null;
    price: number | null;
    skillLevelDescription: string;
};

type Count = {
    type: string;
    number: number;
};

type CookbookRecipe = {
    recipeName: string;
    recipeSequence: number | null;
}

const recipeDomain = window.location.hostname;
console.log(recipeDomain);
console.log(window.location);
window.onload = () => {
    const urlParams = new URLSearchParams(window.location.search);
    const cookbookId = urlParams.get('cookbookId');
    if (cookbookId) {
        loadRecipesForCookbook(parseInt(cookbookId));
    } else {
        loadCount(); 
    }
};


let url = "https://dgrecipeapi.azurewebsites.net"; 
if (domain.toLowerCase() == "localhost") {
    url = "https://localhost:7205";
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
    return [
        recipe.recipeName,
        recipe.recipeStatus,
        recipe.usersName,
        recipe.calories !== null ? recipe.calories.toString() : 'N/A',
        recipe.numIngredients.toString(),
        recipe.isVegan
    ];
}
async function mapMealRow(meal: Meal): Promise<string[]> {
    return [
        meal.mealName,
        meal.usersName,
        meal.numCalories.toString(),
        meal.numCourses.toString(),
        meal.numRecipes.toString(),
        meal.mealDescription
    ];
}
async function mapCookbookRow(cookbook: Cookbook): Promise<string[]> {
    const recipesLink = `<a href="?cookbookId=${cookbook.cookbookId}">See Recipes</a>`;
    return [
        cookbook.cookbookname,
        cookbook.author,
        cookbook.numRecipes.toString(),
        cookbook.price.toString(),
        cookbook.skillLevelDescription,
        recipesLink
    ];
}

async function mapCookbookRecipeRow(cookbookrecipe: CookbookRecipe): Promise<string[]> {
    return [
        cookbookrecipe.recipeName, 
        cookbookrecipe.recipeSequence.toString()
    ]
}
async function loadCount() {
    try {
        const response = await fetch(`${url}/api/Count`);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const counts = await response.json();

        counts.forEach((count: Count) => {
            switch (count.type) {
                case 'Recipes':
                    document.getElementById('recipesButton').innerText = `View ${count.number} Recipes`;
                    break;
                case 'Meals':
                    document.getElementById('mealsButton').innerText = `View ${count.number} Meals`;
                    break;
                case 'Cookbooks':
                    document.getElementById('cookbooksButton').innerText = `View ${count.number} Cookbooks`;
                    break;
                default:
                    console.error(`Unknown type: ${count.type}`);
            }
        });
    } catch (error) {
        console.error('Error loading counts:', error);
    }
}

async function loadRecipesForCookbook(cookbookId: number) {
    const recipeHeaders = ['Recipe Name', 'Sequence'];
    await loadData(`cookbook/${cookbookId}`, recipeHeaders, mapCookbookRecipeRow)
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
