import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "./Navbar";
import Recipes from "./Recipes";
import Cookbooks from "./Cookbooks";
import Meals from "./Meals";
import MainScreen from './MainScreen';
import Sidebar from './Sidebar';
import { blankRecipe, fetchCuisines } from './DataUtil';
import { useEffect, useState } from 'react';
import { ICuisine, IRecipe } from './DataInterface';
import { RecipeEdit } from './RecipeEdit';
import './assets/css/bootstrap.min.css';

function App() {
  const [cuisines, setCuisines] = useState<ICuisine[]>([]);
  const [selectedCuisineName, setSelectedCuisineName] = useState<string>("");
  const [selectedPage, setSelectedPage] = useState<string>("");
  const [isRecipeEdit, setIsRecipeEdit] = useState(false);
  const [recipeForEdit, setRecipeForEdit] = useState(blankRecipe);

  useEffect(() => {
    const fetchCuisineList = async () => {
      const data = await fetchCuisines();
      setCuisines(data);
    };
    fetchCuisineList();
  }, []);

  const handleCuisineSelected = (cuisineName: string) => {
    setIsRecipeEdit(false);
    setSelectedCuisineName(cuisineName);
  };

  const handlePageSelect = (page: string) => {
    setSelectedPage(page);
  };

  const handleRecipeSelectedForEdit = (recipe: IRecipe) => {
    setRecipeForEdit(recipe);
    setIsRecipeEdit(true);
    console.log(recipe);
  };

  return (
    <Router>
      <Navbar onPageSelect={handlePageSelect} />
      <div className="container">
        <Routes>
          <Route path="/" element={
            <div className="row">
              <div className="col-3 col-lg-2 border border-light">
                <button
                  onClick={() => handleRecipeSelectedForEdit(blankRecipe)}
                  className="btn btn-outline-primary mb-3">
                  New Recipe
                </button>
                <Sidebar
                  onCuisineSelected={handleCuisineSelected}
                  onRecipeSelectedForEdit={handleRecipeSelectedForEdit}
                />
              </div>
              <div className="col-9 col-lg-10">
                {isRecipeEdit
                  ? <RecipeEdit recipe={recipeForEdit} />
                  : <MainScreen cuisineName={selectedCuisineName} onRecipeSelectedForEdit={handleRecipeSelectedForEdit} />}
              </div>
            </div>
          } />
          <Route path="meals" element={<Meals />} />
          <Route path="cookbooks" element={<Cookbooks />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
