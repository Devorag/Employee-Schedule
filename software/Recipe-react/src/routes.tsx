
import { createBrowserRouter } from "react-router-dom";
import Navbar from "./Navbar";
import Recipes from "./Recipes";
import Cookbooks from "./Cookbooks";
import Meals from "./Meals";
import Login from "./Login";
import ProtectedRoute from "./ProtectedRoute";


const router = createBrowserRouter([
    {
        path: "/", element: <Recipes />, children: [
            { index: true, element: <Navbar /> },
        ]
    },
    { path: "meals", element: <ProtectedRoute element={<Meals />} requiredrole={0} /> },
    { path: "cookbooks", element: <ProtectedRoute element={<Cookbooks />} requiredrole={0} /> },
    { path: "login", element: <Login fromPath={location.pathname} /> }

]);
export default router;