var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
const recipeDomain = window.location.hostname;
console.log(recipeDomain);
console.log(window.location);
let url = 'https://localhost:7205';
function getNumberOfIngredients(recipeId) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const response = yield fetch(`${url}/api/ingredients/${recipeId}`);
            if (!response.ok) {
                throw new Error(`Error fetching ingredients for recipe ID: ${recipeId}`);
            }
            const ingredients = yield response.json();
            return ingredients.length;
        }
        catch (error) {
            console.error('Error fetching number of ingredients:', error);
            return 0;
        }
    });
}
function loadData(endPoint, headers, mapRow) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const response = yield fetch(`${url}/api/${endPoint}`);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            const data = yield response.json();
            console.log(data);
            displayTable(data, headers, mapRow);
        }
        catch (error) {
            console.error(`Error loading ${endPoint}:`, error);
        }
    });
}
function displayTable(data, headers, mapRow) {
    return __awaiter(this, void 0, void 0, function* () {
        let outputDiv = document.getElementById('output');
        if (outputDiv) {
            outputDiv.innerHTML = '';
            let table = document.createElement('table');
            table.setAttribute('class', 'table table-striped');
            let header = `<thead><tr>${headers.map(header => `<th>${header}</th>`).join('')}</tr></thead>`;
            table.innerHTML = header;
            let tableBody = document.createElement('tbody');
            for (const item of data) {
                const rowValues = yield mapRow(item);
                let rowHtml = `<tr>${rowValues.map(value => `<td>${value}</td>`).join('')}</tr>`;
                tableBody.innerHTML += rowHtml;
            }
            table.appendChild(tableBody);
            outputDiv.appendChild(table);
        }
    });
}
function mapRecipeRow(recipe) {
    return __awaiter(this, void 0, void 0, function* () {
        // const numOfIngredients = await getNumberOfIngredients(recipe.recipeId);
        return [
            recipe.recipeName,
            recipe.recipeStatus,
            recipe.usersName,
            recipe.calories !== null ? recipe.calories.toString() : 'N/A',
            //numOfIngredients.toString(),
            recipe.isVegan == 1 ? 'Yesff' : 'Nggo'
        ];
    });
}
function mapMealRow(meal) {
    return __awaiter(this, void 0, void 0, function* () {
        return [
            meal.mealName,
            meal.usersName,
            meal.calories !== null ? meal.calories.toString() : 'N/A',
            meal.courses !== null ? meal.courses.toString() : 'N/A',
            meal.recipes !== null ? meal.recipes.toString() : 'N/A',
            meal.mealDescription
        ];
    });
}
function mapCookbookRow(cookbook) {
    return __awaiter(this, void 0, void 0, function* () {
        return [
            cookbook.cookbookName,
            cookbook.author,
            cookbook.recipes !== null ? cookbook.recipes.toString() : 'N/A',
            cookbook.price !== null ? `$${cookbook.price.toFixed(2)}` : 'N/A',
            cookbook.skillLevelDesc
        ];
    });
}
function loadRecipes() {
    const recipeHeaders = ['Recipe Name', 'Status', 'User', 'Calories', 'Num of Ingredients', 'Vegan'];
    return loadData('recipe', recipeHeaders, mapRecipeRow);
}
function loadMeals() {
    const mealHeaders = ['Meal Name', 'User', 'Calories', 'Courses', 'Recipes', 'Description'];
    return loadData('meal', mealHeaders, mapMealRow);
}
function loadCookbooks() {
    const cookbookHeaders = ['Cookbook Name', 'Author', 'Recipes', 'Price', 'Skill Level'];
    return loadData('cookbook', cookbookHeaders, mapCookbookRow);
}
//# sourceMappingURL=HeartyHearth.js.map