import { IPresident } from "./PresidentTypes";
import PresidentExecutiveOrders from "./PresidentExecutiveOrders";
type Props = { president: IPresident }

function PresidentFeature({ president }: Props) {
    const prez = president;
    let execorderheadear = prez.executiveOrders.length == 0 ? "No Executive Orders" : "Executive Orders";
    return (
        <>
            <div className="card">
                <div className="card-body">
                    <h5 className="card-title">{prez.lastName}</h5>
                    <h6 className="card-subtitle mb-2 text-muted">{prez.party}</h6>
                    <p className="card-text">{prez.firstName} {prez.lastName}</p>
                    {prez.executiveOrders.length > 0 && <PresidentExecutiveOrders executiveOrders={president.executiveOrders} />}
                </div>
            </div>
        </>)
}

export default PresidentFeature;