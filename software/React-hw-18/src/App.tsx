import "bootstrap/dist/css/bootstrap.min.css";
import RecipeSummary from "./RecipeSummary";
import RecipeList from "./RecipeList";
import RecipeCard from "./RecipeCard";
import initialRecipes from "./RecipeData.json";
import { useState } from "react";

function App() {
  const [addedRecipes, setAddedRecipes] = useState([]);
  const [addedRecipeIndex, setAddedRecipeIndex] = useState(0);
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

  const handleAddRecipeFromCard = (recipe: string) => {
    const newRecipes = getCopyOfRecipes();
    newRecipes.push(recipe);
    setAddedRecipes(newRecipes);
  }

  const deleteRecipe = (index: number) => {
    const newRecipes = getCopyOfRecipes();
    newRecipes.splice(index, 1);
    setAddedRecipes(newRecipes);
  }


  return (
    <div className="container">
      <div className="row">
        <div className="col-12 text-center">
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
            <button onClick={handleAddRecipe} disabled={addedRecipeIndex >= initialRecipes.length} className="btn btn-primary">
              {addedRecipeIndex >= initialRecipes.length ? "All Recipes Added" : "Add to Collection"}
            </button>
          </div>
          <div>
            <h3>{addedRecipes.length} Recipes in Collection</h3>
            <RecipeList recipes={addedRecipes} isCollection={true} onRecipeDelete={deleteRecipe} />
          </div>
        </div>
        <div className="col-4">
          <h3>Recipe Cards</h3>
          <div className="mb-4">
            <RecipeCard recipe={initialRecipes[2]} onAddToCollection={handleAddRecipeFromCard} />
          </div>
          <div className="mb-4">
            <RecipeCard recipe={initialRecipes[8]} onAddToCollection={handleAddRecipeFromCard} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default App;
