import { NavLink } from "react-router-dom";
import UserPanel from './UserPanel';

export default function Navbar() {
    return (
        <>
            <nav className="navbar navbar-expand-lg navbar-light bg-light">
                <div className="container-fluid d-flex justify-content-between"> {/* Flex container for overall alignment */}
                    <div className="d-flex flex-grow-1"> {/* Flex container for brand and nav items with flex-grow */}
                        <NavLink className="navbar-brand" to="/">
                            <img src="/images/brand.jpg" alt="" width="100" className="d-inline-block pe-3" />
                            Record Keeper
                        </NavLink>
                        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span className="navbar-toggler-icon"></span>
                        </button>
                        <div className="collapse navbar-collapse" id="navbarNav">
                            <ul className="navbar-nav">
                                <li className="nav-item">
                                    <NavLink className="nav-link active" aria-current="page" to="/">U.S. Gov</NavLink>
                                </li>
                                <li className="nav-item">
                                    <NavLink className="nav-link" to="#">Olympics</NavLink>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div>
                        <UserPanel />
                    </div>
                </div>
            </nav>
        </>
    )
}