import { useNavigate } from "react-router-dom";
import Navbar from "./Navbar";


export default function Screen1() {
    const navigate = useNavigate();
    return (
        <>
            <Navbar></Navbar>
            <hr />
            <div>Screen1</div>
            <button onClick={() => navigate("/screen2")}>Nav to screen 2 </button>
        </>
    )
}
