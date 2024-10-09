import { IRecipe } from "./RecipeTypes";
type Props = { recipes: IRecipe[] }

function RecipeList({ recipes }: Props) {
    return (
        <table className="table">
            <thead>
                <tr>
                    <th scope="col">Recipe Name</th>
                </tr>
            </thead>
            <tbody>
                {
                    recipes.map(r =>
                        <tr key={r.Name}>
                            <td>{r.Name}</td>
                        </tr>
                    )
                }
            </tbody>
        </table>
    )
}

export default RecipeList;