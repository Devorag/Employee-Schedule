import { Link } from "react-router-dom";
import { useUserStore } from "./user/userstore"


export default function userPanel() {
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const username = useUserStore(state => state.username);
    const role = useUserStore(state => state.role);
    const logout = useUserStore(state => state.logout);
    return (
        <>
            {isLoggedIn ?
                (<><span>{username}, {role}</span> <button onClick={logout}>Logout</button></>)
                :
                (<Link to="/login">Login</Link>)
            }
        </>
    )
}
