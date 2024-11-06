import { NavLink } from "react-router-dom";

export default function Navbar() {
    return (
        <>
            <div><NavLink to="/screen1">Screen 1</NavLink></div>
            <div><NavLink to="/screen2">Screen 2</NavLink></div>
            <div><NavLink to="/screen3">Screen 3</NavLink></div>
            <a href="/screen2">Screen 2 with an a tag</a>
            <div><NavLink to="/screen2?val=hello">Screen 2 with Query String</NavLink></div>
            <div><NavLink to="/screen3/hello">Screen 3</NavLink>Screen 3 wirh Dynamic Path</div>
        </>
    )
}
