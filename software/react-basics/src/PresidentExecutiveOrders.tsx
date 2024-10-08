type Props = { executiveOrders: string[] }
function PresidentExecutiveOrders({ executiveOrders }: Props) {
    return (
        <>
            <hr />
            <h6>Executive Orders</h6>
            <hr></hr>
            <ul className="list-group">
                {executiveOrders.map((e, index) =>
                    <li key={index} className="list-group-item">{e}</li>
                )
                }
            </ul>
        </>
    )
}

export default PresidentExecutiveOrders