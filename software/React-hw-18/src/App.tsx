import "bootstrap/dist/css/bootstrap.min.css";
import RecipeSummary from "./RecipeSummary";
import RecipeList from "./RecipeList";
import RecipeCard from "./RecipeCard";
import { useState, useEffect } from "react";
import { IRecipe } from "./RecipeTypes";

function App() {
  const [refresh, setRefresh] = useState(0);
  const [initialRecipes, setInitialRecipes] = useState<IRecipe[]>([]);
  const [addedRecipes, setAddedRecipes] = useState<IRecipe[]>([]);
  const [addedRecipeIndex, setAddedRecipeIndex] = useState(0);
  const baseurl = "https://dgrecipeapi.azurewebsites.net/api/recipe";

  useEffect(
    () => {
      const fetchRecipes = async () => {
        const r = await fetch(baseurl);
        const Recipes = await r.json();
        setInitialRecipes(Recipes);
      };
      fetchRecipes();
    }
    , [refresh]
  );

  const getCopyOfRecipes = () => addedRecipes.map(recipe => ({ ...recipe }));


  const handleAddRecipe = () => {
    const newRecipes = getCopyOfRecipes();
    if (addedRecipeIndex < initialRecipes.length) {
      const newRecipe = { ...initialRecipes[addedRecipeIndex] };
      newRecipes.push(newRecipe);
      setAddedRecipes(newRecipes);
      setAddedRecipeIndex(addedRecipeIndex + 1);
    }
  };

  const handleAddRecipeFromCard = (recipe: IRecipe) => {
    const newRecipes = getCopyOfRecipes();
    if (!newRecipes.some(r => r.recipeName === recipe.recipeName)) {
      newRecipes.push(recipe);
      setAddedRecipes(newRecipes);
    }
  }

  const deleteRecipe = (index: number) => {
    const newRecipes = getCopyOfRecipes();
    newRecipes.splice(index, 1);
    setAddedRecipes(newRecipes);
    setAddedRecipeIndex(Math.min(addedRecipeIndex, newRecipes.length));
  }

  const allRecipesAdded = addedRecipeIndex >= initialRecipes.length;

  return (
    <div className="container">
      <div className="row">
        <div className="col-3">
          <button onClick={() => setRefresh(refresh + 1)} className="btn btn-success mt-3">Refresh</button>
        </div>
        <div className="col-6 text-center">
          <h1>Hearty Hearth - React POC</h1>
          <hr />
        </div>
      </div>

      <div className="row">
        <div className="col-4">
          <div className="mb-4">
            <RecipeSummary recipes={initialRecipes} />
          </div>
          <div>
            <RecipeList recipes={initialRecipes} isCollection={false} />
          </div>
        </div>
        <div className="col-4">
          <div className="text-center mb-4">
            <button onClick={handleAddRecipe} disabled={allRecipesAdded} className="btn btn-primary">
              {allRecipesAdded ? "All Recipes Added" : "Add to Collection"}
            </button>
          </div>
          <div>
            <h3>{addedRecipes.length} Recipes in Collection</h3>
            <RecipeList recipes={addedRecipes} isCollection={true} onRecipeDelete={deleteRecipe} />
          </div>
        </div>
        <div className="col-4">
          <h3>Recipe Cards</h3>
          {initialRecipes.length > 2 && (
            <div className="mb-4">
              <RecipeCard recipe={initialRecipes[2]} onAddToCollection={handleAddRecipeFromCard} />
            </div>
          )}
          {initialRecipes.length > 8 && (
            <div className="mb-4">
              <RecipeCard recipe={initialRecipes[8]} onAddToCollection={handleAddRecipeFromCard} />
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default App;
