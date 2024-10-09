type Props = { Steps: string[] }
function RecipeSteps({ Steps }: Props) {
    return (
        <>
            <hr />
            <ul className="list-group">
                {Steps.map((e, index) =>
                    <li key={index} className="list-group-item">{e}</li>
                )
                }
            </ul>
        </>
    )
}

export default RecipeSteps