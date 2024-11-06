import { useNavigate } from "react-router-dom";

export default function Screen1() {
    const navigate = useNavigate();
    return (
        <>
            <div>Screen1</div>
            <button onClick={() => navigate("/screen2")}>Nav to screen 2</button>
        </>
    )
}
