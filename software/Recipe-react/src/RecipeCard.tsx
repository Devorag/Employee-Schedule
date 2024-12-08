import { IRecipe } from "./DataInterface";
import { getUserStore } from "@devorag/reactutils";

interface Props {
    recipe: IRecipe;
    onRecipeSelectedForEdit: (recipe: IRecipe) => void;
}

export default function RecipeCard({ recipe, onRecipeSelectedForEdit }: Props) {
    const apiurl = import.meta.env.VITE_API_URL_DEV;
    const useUserStore = getUserStore(apiurl);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);

    const handleEditClick = () => {
        if (isLoggedIn) {
            onRecipeSelectedForEdit(recipe);
        } else {
            alert("You need to be logged in to edit a recipe.");
        }
    };

    const imageSrc = `/images/RecipeImages/recipe_${recipe.recipeName
        .toLowerCase()
        .replace(/\s+/g, '_')
        .replace(/[^\w\s]/gi, '')}.jpg`;

    return (
        <div className="recipe-card" style={{ height: '400px', width: '100%', border: '1px solid #ddd', borderRadius: '8px', overflow: 'hidden', marginBottom: '1rem' }}>
            <img
                className="recipe-image"
                src={imageSrc}
                alt={recipe.recipeName}
                style={{ width: '100%', height: '200px', objectFit: 'cover' }}
            />
            <div className="recipe-body" style={{ padding: '1rem', flexGrow: 1 }}>
                <h5 className="card-title">{recipe.recipeName}</h5>
                <p className="card-text">You don't want to miss out on this one!</p>
                {isLoggedIn && (
                    <button
                        onClick={handleEditClick}
                        className="btn btn-primary mt-2"
                        style={{ width: '100%' }}
                    >
                        Edit
                    </button>
                )}
            </div>
        </div>
    );
}
