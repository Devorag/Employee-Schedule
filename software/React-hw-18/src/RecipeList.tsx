import { IRecipe } from "./RecipeTypes";
type Props = {
    recipes: IRecipe[],
    isCollection: boolean,
    onRecipeDelete: (index: number) => void;
}

function RecipeList({ recipes, isCollection, onRecipeDelete }: Props) {
    return (
        <table className="table">
            <thead>
                <tr>
                    <th scope="col">Recipe Name</th>
                </tr>
            </thead>
            <tbody>
                {
                    recipes.map((r, index) =>
                        <tr key={r.Name}>
                            <td>{r.Name}</td>
                            {isCollection && (<td><button onClick={() => onRecipeDelete(index)} className="btn btn-danger">X</button></td>)}
                        </tr>
                    )
                }
            </tbody>
        </table>
    )
}

export default RecipeList;