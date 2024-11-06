import { Outlet } from "react-router-dom";
import Navbar from "./Navbar";

function App() {
    return (
        <>
            <Navbar />
            <hr/>
            <Outlet/>
        </>
    )
}

export default App