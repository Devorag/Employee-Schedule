import { NavLink } from "react-router-dom";
import UserPanel from "./userPanel";

export default function Navbar() {
    return (
        <nav className="navbar navbar-expand-lg bg-body-tertiary mb-3">
            <div className="container-fluid">
                <NavLink className="navbar-brand" to="/">
                    <img src="/images/recipe.jpg" alt="Savor Saga" width="100" className="d-inline-block pe-3" />
                    Savor Saga
                </NavLink>
                <button
                    className="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                        <li className="nav-item">
                            <NavLink className="nav-link" to="/">Recipes</NavLink>
                        </li>
                        <li className="nav-item">
                            <NavLink className="nav-link" to="/meals">Meals</NavLink>
                        </li>
                        <li className="nav-item">
                            <NavLink className="nav-link" to="/cookbooks">Cookbooks</NavLink>
                        </li>
                    </ul>
                    <UserPanel />
                </div>
            </div>
        </nav>
    );
}
