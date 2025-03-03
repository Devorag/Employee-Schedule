import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { Outlet } from "react-router-dom";
import Navbar from "./Navbar";
import Cookbooks from "./Cookbooks";
import Meals from "./Meals";
import MainScreen from './MainScreen';
import Sidebar from './Sidebar';
import { blankRecipe } from './DataUtil';
import { useState } from 'react';
import { IRecipe } from './DataInterface';
import { RecipeEdit } from './RecipeEdit';
import Login from "./Login";
import './assets/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import { getUserStore } from '@devorag/reactutils';
import ProtectedRoute from "./ProtectedRoute";

function App() {
    const [selectedCuisineName, setSelectedCuisineName] = useState<string>("");
    const [isRecipeEdit, setIsRecipeEdit] = useState(false);
    const [recipeForEdit, setRecipeForEdit] = useState<IRecipe>(blankRecipe);
    const apiurl = import.meta.env.VITE_API_URL_DEV;
    const useUserStore = getUserStore(apiurl);

    const handleCuisineSelected = (cuisineName: string) => {
        setIsRecipeEdit(false);
        setSelectedCuisineName(cuisineName);
    };

    const handleRecipeSelectedForEdit = (recipe: IRecipe) => {
        setRecipeForEdit(recipe);
        setIsRecipeEdit(true);
    };

    const isLoggedIn = useUserStore(state => state.isLoggedIn);

    const handleNewRecipeClick = () => {
        if (isLoggedIn) {
            handleRecipeSelectedForEdit(blankRecipe);
        } else {
            alert("You can't insert a recipe unless you are logged in.");
        }
    };

    return (
        <Router>
            <Navbar />
            <hr />
            <Outlet />
            <div className="container">
                <Routes>
                    <Route
                        path="/"
                        element={
                            <div className="row">
                                <div className="col-3 col-lg-2 border border-light">
                                    <button
                                        onClick={handleNewRecipeClick}
                                        className="btn btn-outline-primary mb-3">
                                        New Recipe
                                    </button>
                                    <Sidebar onCuisineSelected={handleCuisineSelected} />
                                </div>
                                <div className="col-9 col-lg-10">
                                    {isRecipeEdit
                                        ? <RecipeEdit recipe={recipeForEdit} />
                                        : <MainScreen cuisineName={selectedCuisineName} onRecipeSelectedForEdit={handleRecipeSelectedForEdit} />}
                                </div>
                            </div>
                        }
                    />
                    <Route path="/edit" element={<RecipeEdit recipe={recipeForEdit} />} />
                    <Route path="/meals" element={<ProtectedRoute element={<Meals />} requiredrole={0} />} />
                    <Route path="/cookbooks" element={<ProtectedRoute element={<Cookbooks />} requiredrole={0} />} />
                    <Route path="/Login" element={<Login fromPath={location.pathname} />} />
                </Routes>
            </div>
        </Router>
    );
}

export default App;
