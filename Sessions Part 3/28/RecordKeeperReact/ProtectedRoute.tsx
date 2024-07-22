import Login from "./Login";
import { getUserStore } from "@charliecpu/reactutils"

interface Props { element: React.ReactNode, requiredrole: number }

export default function ProtectedRoute({ element, requiredrole }: Props) {
    const apiurl = import.meta.env.VITE_API_URL;
    const useUserStore = getUserStore(apiurl);
    const isLoggedIn = useUserStore((state) => state.isLoggedIn);
    const rolerank = useUserStore((state) => state.roleRank);
    const hasprivilege = rolerank >= requiredrole;

    if (!isLoggedIn) {
        return <Login />;
    }
    else if (!hasprivilege) {
        return <><div>You are not authorized to view this page.</div></>
    }
    else {
        return <>{element}</>;
    }
}
