import { useNavigate } from "react-router-dom";
const keyname = "key";
const value = "hello world";

export default function Screen1() {
    const navigate = useNavigate();
    const handleSaveClick = () => {
        sessionStorage.setItem(keyname, value + "- session");
        sessionStorage.setItem(keyname, value + "- session");
    }
    return (
        <>
            <div>Screen1</div>
            <hr />
            <button onClick={handleSaveClick}>Save value to storage</button>
            <hr />
            <button onClick={() => navigate("/screen2")}>Nav to screen 2</button>
        </>
    )
}
