import { IPresident } from "./PresidentTypes";
type Props = {
    presidents: IPresident[],
    onPresidentDelete: (num: number) => void;
}

function PresidentList({ presidents, onPresidentDelete }: Props) {
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
                                <td><button onClick={() => onPresidentDelete(p.num)} className="btn btn-danger">X</button></td>
                            </tr>)
                    }
                </tbody>
            </table>
        </>
    )
}

export default PresidentList;