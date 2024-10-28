import { useEffect, useState } from 'react';
import { fetchCuisines } from './DataUtil';
import './assets/css/bootstrap.min.css';
import MainScreen from './MainScreen';
import Navbar from './Navbar';
import Sidebar from './Sidebar';
import { ICuisine } from './DataInterface';

function App() {
  const [cuisines, setCuisines] = useState<ICuisine[]>([]);
  const [selectedCuisineName, setSelectedCuisineName] = useState<string>("");
  const [selectedPage, setSelectedPage] = useState<string>("");

  useEffect(() => {
    const fetchCuisineList = async () => {
      const data = await fetchCuisines();
      setCuisines(data);
    };
    fetchCuisineList();
  }, []);

  const handleCuisineSelected = (cuisineName: string) => {
    setSelectedCuisineName(cuisineName);
  };

  const handlePageSelect = (page: string) => {
    setSelectedPage(page);
  };

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
            <Sidebar onCuisineSelected={handleCuisineSelected} />
          </div>
          <div className="col-9 col-lg-10">
            <MainScreen cuisineName={selectedCuisineName} />
          </div>
        </div>
      )}
    </div>
  );
}

export default App;
