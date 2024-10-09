import { IRecipe } from "./RecipeTypes";
type Props = { recipes: IRecipe[] }

function RecipeSummary({ recipes }: Props) {
    return (
        <>
            <h2>{recipes.length} Recipes</h2>
        </>
    )
}

export default RecipeSummary;