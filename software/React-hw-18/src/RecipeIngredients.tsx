type Props = { Ingredients: string[] }
function RecipeIngredients({ Ingredients }: Props) {
    return (
        <>
            <hr />
            <ul className="list-group">
                {Ingredients.map((e, index) =>
                    <li key={index} className="list-group-item">{e}</li>
                )
                }
            </ul>
        </>
    )
}

export default RecipeIngredients