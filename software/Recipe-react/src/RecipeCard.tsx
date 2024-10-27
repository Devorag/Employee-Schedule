import { IRecipe } from "./DataInterface"

interface Props {
    recipe: IRecipe;
}


export default function RecipeCard({ recipe }: Props) {
    return (

        <>
            <div className="card" >
                <img className="card-img-top" src={`/images/RecipeImages/recipe_${recipe.recipeName.toLowerCase().replace(/\s+/g, '_')}.jpg`} alt="..." />
                <div className="card-body">
                    <h5 className="card-title">{recipe.recipeName}</h5>
                    <p className="card-text">Some</p>
                </div>
            </div>
        </>
    )
};