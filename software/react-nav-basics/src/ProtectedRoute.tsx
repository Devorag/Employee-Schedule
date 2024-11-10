import Login from "./login";
import { useUserStore } from "./user/userstore"

interface Props { element: React.ReactNode, requiredrole: string }

export default function ProtectedRoute({ element, requiredrole }: Props) {
    const isLoggedIn = useUserStore((state) => state.isLoggedIn);
    const hasprivilege = requiredrole == "" || requiredrole == requiredrole;
    if (!isLoggedIn) {
        return <Login />;
    }
    else if (!hasprivilege) {
        return <><div>You are not authorized to view this page.</div></>
    }
    else {
        return <>{element}</>
    }
    return (
        <>
            {isLoggedIn && hasprivilege ?
                <>{element}</>
                :
                <Login />
            }
        </>
    )
}
