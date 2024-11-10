import { NavLink } from "react-router-dom";
import UserPanel from "./userPanel";

export default function Navbar() {
    return (
        <>
            <style>
                {`
                    a {
                    margin: 0 2px;
                    border: solid black 1px;
                    text-decoration: none;
                    color: blue;
                    font-size: 10px;
                    }
            `}
            </style>
            <NavLink to="/screen1">Screen 1</NavLink>
            <NavLink to="/screen2">Screen 2</NavLink>
            <NavLink to="/screen3">Screen 3</NavLink>
            <a href="/screen2">Screen 2 with an a tag</a>
            <NavLink to="/screen2?val=hello">Screen 2 with Query String</NavLink>
            <NavLink to="/screen3/hello">Screen 3 with Dynamic Path</NavLink>
            <UserPanel />
        </>
    )
}
