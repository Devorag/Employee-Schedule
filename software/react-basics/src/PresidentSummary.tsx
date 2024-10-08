import { IPresident } from "./PresidentTypes";
type Props = { presidents: IPresident[] }

function PresidentSummary({ presidents }: Props) {
    return (
        <>
            <h2>{presidents.length} Presidents</h2>
        </>
    )
}

export default PresidentSummary;