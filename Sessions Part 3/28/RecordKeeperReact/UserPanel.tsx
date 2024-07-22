import { Link } from "react-router-dom";
import { getUserStore } from "@charliecpu/reactutils"


export default function UserPanel() {
    const apiurl = import.meta.env.VITE_API_URL;
    const useUserStore = getUserStore(apiurl);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const username = useUserStore(state => state.userName);
    const rolename = useUserStore(state => state.roleName);
    const logout = useUserStore(state => state.logout);
    return (
        <>
            {isLoggedIn ?
                (<><span>{username}, {rolename}</span> <button onClick={() => logout(username)}>Logout</button></>)
                :
                (<Link to="/login">Login</Link>)}
        </>
    )
}
