import { IRecipe } from "./DataInterface";

interface Props {
    recipe: IRecipe;
}

export default function RecipeCard({ recipe }: Props) {
    return (
        <div
            className="recipe-card"
            style={{ height: '400px', width: '100%' }}
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
            </div>
        </div>
    );
}
