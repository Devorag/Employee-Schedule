import { NavLink } from "react-router-dom";
import { getUserStore } from "@devorag/reactutils";

export default function userPanel() {
    const apiurl = import.meta.env.VITE_API_URL_DEV;
    const useUserStore = getUserStore(apiurl);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const username = useUserStore(state => state.userName);
    const role = useUserStore(state => state.roleName);
    const logout = useUserStore(state => state.logout);

    return (
        <>
            {isLoggedIn ? (
                <>
                    <span>{username}, {role}</span>
                    <button onClick={() => logout(username)}>Logout</button>
                </>
            ) : (
                <NavLink to="/Login">Login</NavLink>
            )}
        </>
    );
}

