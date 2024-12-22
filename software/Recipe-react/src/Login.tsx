import { useForm } from "react-hook-form";
import { getUserStore } from "@devorag/reactutils";
import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";

type FormInput = { username: string; password: string };
interface Props { fromPath: string }

export default function Login({ fromPath }: Props) {
    const { register, handleSubmit, formState: { errors } } = useForm<FormInput>();
    const apiurl = import.meta.env.VITE_API_URL;
    const useUserStore = getUserStore(apiurl);
    const login = useUserStore((state) => state.login);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const [crashmsg, setCrashmsg] = useState("");
    const errormsg = useUserStore(state => state.errorMessage);
    const nav = useNavigate();
    useEffect(
        () => {
            if (isLoggedIn) {
                let pathval = !fromPath || fromPath == location.pathname ? "/" : fromPath;
                nav(pathval);
            }
        }
        , [isLoggedIn, fromPath, nav]);
    const onSubmit = async (data: FormInput) => {
        try {
            setCrashmsg("");
            await login(data.username, data.password);
        }
        catch (error: unknown) {
            if (error instanceof Error) {
                setCrashmsg(error.message);
            }
            else {
                setCrashmsg("Invalid Username or Password");
            }
        }
    };

    return (
        <div className="d-flex justify-content-center align-items-center vh-100" style={{ backgroundColor: "#f1f3f5" }}>
            <div className="card shadow-lg p-5" style={{ width: "500px", borderRadius: "12px" }}>
                <h2 className="text-center mb-4" style={{ fontSize: "24px", fontWeight: "600" }}>Login</h2>
                <div className="text-center mb-4" style={{ fontSize: "16px", color: "#555" }}>
                    {isLoggedIn ? "You are logged in" : "Please login to your account"}
                </div>
                <h3 className="mb-4 text-center text-danger" style={{ fontSize: "16px" }}>{crashmsg || errormsg}</h3>

                <form onSubmit={handleSubmit(onSubmit)}>
                    <div className="mb-4">
                        <label className="form-label" style={{ fontSize: "16px" }}>Username</label>
                        <input
                            type="text"
                            className={`form-control ${errors.username ? 'is-invalid' : ''}`}
                            style={{ padding: "10px", fontSize: "16px" }}
                            {...register('username', { required: 'Username is required' })}
                        />
                        {errors.username && <div className="invalid-feedback" style={{ fontSize: "14px" }}>{errors.username.message}</div>}
                    </div>

                    <div className="mb-4">
                        <label className="form-label" style={{ fontSize: "16px" }}>Password</label>
                        <input
                            type="password"
                            className={`form-control ${errors.password ? 'is-invalid' : ''}`}
                            style={{ padding: "10px", fontSize: "16px" }}
                            {...register('password', { required: 'Password is required' })}
                        />
                        {errors.password && <div className="invalid-feedback" style={{ fontSize: "14px" }}>{errors.password.message}</div>}
                    </div>

                    <button type="submit" className="btn btn-primary w-100" style={{ padding: "12px", fontSize: "18px", fontWeight: "500" }}>
                        Login
                    </button>
                </form>
            </div>
        </div>
    );
}     
