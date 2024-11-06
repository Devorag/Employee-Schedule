import { Link } from "react-router-dom";

export default function Navbar({ onPageSelect }) {
    return (
        <nav className="navbar navbar-expand-lg bg-body-tertiary mb-3">
            <div className="container-fluid">
                <Link className="navbar-brand" to="/">
                    <img src="/images/recipe.jpg" alt="Bootstrap" width="100" className="d-inline-block pe-3" />
                    Savor Saga
                </Link>
                <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                        <li className="nav-item">
                            <Link className="nav-link active" to="/" onClick={() => onPageSelect("Recipes")}>Recipes</Link>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link active" to="/meals" onClick={() => onPageSelect("Meals")}>Meals</Link>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link active" to="/cookbooks" onClick={() => onPageSelect("Cookbooks")}>Cookbooks</Link>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    );
}
