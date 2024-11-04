import { NavLink } from "react-router-dom";

export default function Navbar() {
    return (
        <>
            <div><NavLink to="/screen1">Screen 1</NavLink></div>
            <div><NavLink to="/screen2">Screen 2</NavLink></div>
            <div><NavLink to="/screen3">Screen 3</NavLink></div>
        </>
    )
}
