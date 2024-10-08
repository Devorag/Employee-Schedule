import { IPresident } from "./PresidentTypes";
type Props = { presidents: IPresident[] }

function PresidentList({ presidents }: Props) {
    return (
        <>
            <table className="table">
                <thead>
                    <tr>
                        <th scope="col">Num</th>
                        <th scope="col">Last Name</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        presidents.map(p =>
                            <tr key={p.num}>
                                <td>{p.num}</td>
                                <td>{p.lastName}</td>
                            </tr>)
                    }
                </tbody>
            </table>
        </>
    )
}

export default PresidentList;