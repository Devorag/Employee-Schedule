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
window.onload = () => {
    const urlParams = new URLSearchParams(window.location.search);
    const cookbookname = urlParams.get('cookbookname');
    console.log('Cookbook Name from URL:', cookbookname);
    if (cookbookname) {
        loadRecipesForCookbook(cookbookname);
    }
    else {
        loadCount();
    }
};
let url = "https://localhost:7205";
//let url = "https://dgrecipeapi.azurewebsites.net"; 
//if (domain.toLowerCase() == "localhost") {
//    url = "https://localhost:7205";
//}
function loadData(endPoint, headers, mapRow) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const response = yield fetch(`${url}/api/${endPoint}`);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status} - ${response.statusText}`);
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
        return [
            recipe.recipeName,
            recipe.recipeStatus,
            recipe.usersName,
            recipe.calories !== null ? recipe.calories.toString() : 'N/A',
            recipe.numIngredients.toString(),
            recipe.isVegan
        ];
    });
}
function mapMealRow(meal) {
    return __awaiter(this, void 0, void 0, function* () {
        return [
            meal.mealName,
            meal.usersName,
            meal.numCalories.toString(),
            meal.numCourses.toString(),
            meal.numRecipes.toString(),
            meal.mealDescription
        ];
    });
}
function mapCookbookRow(cookbook) {
    return __awaiter(this, void 0, void 0, function* () {
        const recipesLink = `<a href="?cookbookname=${encodeURIComponent(cookbook.cookbookname)}">See Recipes</a>`;
        return [
            cookbook.cookbookname,
            cookbook.author,
            cookbook.numRecipes.toString(),
            cookbook.price.toString(),
            cookbook.skillLevelDescription,
            recipesLink
        ];
    });
}
function mapCookbookRecipeRow(cookbookrecipe) {
    return __awaiter(this, void 0, void 0, function* () {
        return [
            cookbookrecipe.recipeName,
            cookbookrecipe.recipeSequence !== null && cookbookrecipe.recipeSequence !== undefined
                ? cookbookrecipe.recipeSequence.toString()
                : 'N/A'
        ];
    });
}
function loadCount() {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const response = yield fetch(`${url}/api/Count`);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            const counts = yield response.json();
            counts.forEach((count) => {
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
        }
        catch (error) {
            console.error('Error loading counts:', error);
        }
    });
}
function loadRecipesForCookbook(cookbookname) {
    return __awaiter(this, void 0, void 0, function* () {
        const recipeHeaders = ['Recipe Name', 'Sequence'];
        console.log('API Endpoint:', `cookbook/getbyName/${encodeURIComponent(cookbookname)}`);
        yield loadData(`cookbook/getbyName/${encodeURIComponent(cookbookname)}`, recipeHeaders, mapCookbookRecipeRow);
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