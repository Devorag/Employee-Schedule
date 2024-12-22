
import { createBrowserRouter } from "react-router-dom";
import Navbar from "./Navbar";
import Recipes from "./Recipes";
import Cookbooks from "./Cookbooks";
import Meals from "./Meals";
import Login from "./Login";
import ProtectedRoute from "./ProtectedRoute";
import { RecipeEdit } from "./RecipeEdit";


const router = createBrowserRouter([
    {
        path: "/",
        element: <Navbar />,
        children: [
            { index: true, element: <Recipes /> },
        ],
    },
    { path: "/edit", element: <RecipeEdit /> },
    { path: "meals", element: <ProtectedRoute element={<Meals />} requiredrole={0} /> },
    { path: "cookbooks", element: <ProtectedRoute element={<Cookbooks />} requiredrole={0} /> },
    { path: "login", element: <Login fromPath={location.pathname} /> }

]);
export default router;