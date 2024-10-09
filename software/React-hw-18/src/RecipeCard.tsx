import { IRecipe } from "./RecipeTypes";
import RecipeSteps from "./RecipeSteps";
import RecipeIngredients from "./RecipeIngredients";
type Props = { recipe: IRecipe }

function RecipeCard({ recipe }: Props) {
    const rec = recipe;
    let RecipeStepsHeader = rec.Steps.length == 0 ? "No Recipe Steps" : "Recipe Steps";
    let RecipeIngredientsHeader = rec.Ingredients.length == 0 ? "No Recipe Ingredients" : "Recipe Ingredients";
    return (
        <>
            <div className="recipe-card card">
                <div className="card-body">
                    <h5 className="card-title">{rec.Name}</h5>
                    <h6 className=" mb-2 text-muted">{RecipeStepsHeader}</h6>
                    {rec.Steps.length > 0 && <RecipeSteps Steps={recipe.Steps} />}
                    <hr />
                    <h6 className=" mb-2 text-muted">{RecipeIngredientsHeader}</h6>
                    {rec.Ingredients.length > 0 && <RecipeIngredients Ingredients={recipe.Ingredients} />}
                </div>
            </div>
        </>
    )
}

export default RecipeCard;