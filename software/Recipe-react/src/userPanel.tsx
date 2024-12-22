import { NavLink } from "react-router-dom";
import { getUserStore } from "@devorag/reactutils";
import { useNavigate } from "react-router-dom";

export default function userPanel() {
    const apiurl = import.meta.env.VITE_API_URL_DEV;
    const useUserStore = getUserStore(apiurl);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const username = useUserStore(state => state.userName);
    const role = useUserStore(state => state.roleName);
    const logout = useUserStore(state => state.logout);
    const navigate = useNavigate();

    const handleLogout = () => {
        logout(username);
        navigate("/");
    };

    return (
        <>
            {isLoggedIn ? (
                <>
                    <span>{username}, {role}</span>
                    <button onClick={handleLogout}>Logout</button>
                </>
            ) : (
                <NavLink className="nav-link" to="/Login">Login</NavLink>
            )}
        </>
    );
}

