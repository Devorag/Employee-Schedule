import { useEffect, useState } from 'react';
import { blankRecipe, fetchCuisines } from './DataUtil';
import './assets/css/bootstrap.min.css';
import MainScreen from './MainScreen';
import Navbar from './Navbar';
import Sidebar from './Sidebar';
import { ICuisine, IRecipe } from './DataInterface';
import { RecipeEdit } from './RecipeEdit';

function App() {
  const [cuisines, setCuisines] = useState<ICuisine[]>([]);
  const [selectedCuisineName, setSelectedCuisineName] = useState<string>("");
  const [selectedPage, setSelectedPage] = useState<string>("");
  const [IsRecipeEdit, setisRecipeEdit] = useState(false);

  const [recipeforedit, setRecipeforedit] = useState(blankRecipe);

  useEffect(() => {
    const fetchCuisineList = async () => {
      const data = await fetchCuisines();
      setCuisines(data);
    };
    fetchCuisineList();
  }, []);

  const handleCuisineSelected = (cuisineName: string) => {
    setisRecipeEdit(false);
    setSelectedCuisineName(cuisineName);
  };

  const handlePageSelect = (page: string) => {
    setSelectedPage(page);
  };

  const handleRecipeSelectedForEdit = (recipe: IRecipe) => {
    setRecipeforedit(recipe);
    setisRecipeEdit(true);
    console.log(recipe);
  }


  return (
    <div className="container">
      <div className="row">
        <div className="col-12 px-0">
          <Navbar onPageSelect={handlePageSelect} />
        </div>
      </div>
      {selectedPage === "Recipes" && (
        <div className="row">
          <div className="col-3 col-lg-2 border border-light">
            <button onClick={() => handleRecipeSelectedForEdit(blankRecipe)} className="btn btn-outline-primary">New Recipe</button>
            <Sidebar onCuisineSelected={handleCuisineSelected} onRecipeSelectedForEdit={handleRecipeSelectedForEdit} />
          </div>
          <div className="col-9 col-lg-10">
            {IsRecipeEdit ? <RecipeEdit recipe={recipeforedit} /> : <MainScreen cuisineName={selectedCuisineName} onRecipeSelectedForEdit={handleRecipeSelectedForEdit} />}
          </div>
        </div>
      )}
    </div>
  );
}

export default App;
