import { useNavigate } from "react-router-dom";
const keyname = "key";
const value = "hello world";

export default function Screen1() {
    const navigate = useNavigate();
    const handleSaveClick = () => {
        sessionStorage.setItem(keyname, value + "- session");
        localStorage.setItem(keyname, value + "- local");
    }
    const handleRemoveClick = () => {
        sessionStorage.removeItem(keyname);
        localStorage.removeItem(keyname);
    }
    const handleShowClick = () => {
        const sessionval = sessionStorage.getItem(keyname);
        const localval = localStorage.getItem(keyname);
        alert(`Session val = ${sessionval} Local val = ${localval}`);
    }
    return (
        <>
            <div>Screen1</div>
            <hr />
            <button onClick={handleSaveClick}>Save value to storage</button>
            <button onClick={handleRemoveClick}>Remove value from storage</button>
            <button onClick={handleShowClick}>Show values from storage</button>
            <hr />
            <button onClick={() => navigate("/screen2")}>Nav to screen 2</button>
        </>
    )
}
