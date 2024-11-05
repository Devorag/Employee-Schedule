// RecipeCard.tsx
import { IRecipe } from "./DataInterface";

interface Props {
    recipe: IRecipe;
    onRecipeSelectedForEdit: (recipe: IRecipe) => void;
}

export default function RecipeCard({ recipe, onRecipeSelectedForEdit }: Props) {
    return (
        <div
            className="recipe-card"
            style={{ height: '400px', width: '100%', border: '1px solid #ddd', borderRadius: '8px', overflow: 'hidden' }}
        >
            <img
                className="recipe-image"
                src={`/images/RecipeImages/recipe_${recipe.recipeName.toLowerCase().replace(/\s+/g, '_')}.jpg`}
                alt={recipe.recipeName}
                style={{ width: '100%', height: '200px', objectFit: 'cover' }}
            />
            <div className="recipe-body" style={{ flexGrow: 1, padding: '1rem' }}>
                <h5 className="card-title">{recipe.recipeName}</h5>
                <p className="card-text">You don't want to miss out on this one!</p>
                <button
                    onClick={() => onRecipeSelectedForEdit(recipe)}
                    className="btn btn-primary mt-2"
                    style={{ width: '100%' }}
                >
                    Edit
                </button>
            </div>
        </div>
    );
}
