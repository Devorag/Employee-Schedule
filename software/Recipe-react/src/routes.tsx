
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "./Navbar";
import Recipes from "./Recipes";
import Cookbooks from "./Cookbooks";
import Meals from "./Meals";


function App() {
    return (
        <Router>
            <Navbar />
            <Routes>
                <Route path="/" element={< Recipes />} />
                <Route path="meals" element={< Meals />} />
                <Route path="cookbooks" element={< Cookbooks />} />
            </Routes>
        </Router>
    );
}

export default App;