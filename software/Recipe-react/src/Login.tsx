import { useForm } from "react-hook-form";
import { getUserStore } from "@devorag/reactutils";

type FormInput = { username: string; password: string };

export default function Login() {
    const { register, handleSubmit, formState: { errors } } = useForm<FormInput>();
    const apiurl = import.meta.env.VITE_API_URL;
    const useUserStore = getUserStore(apiurl);
    const login = useUserStore((state) => state.login);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const onSubmit = async (data: FormInput) => await login(data.username, data.password);

    return (
        <div className="d-flex justify-content-center align-items-center vh-100">
            <div className="card p-4" style={{ width: "400px" }}>
                <h2 className="text-center mb-4">Login</h2>
                <div className="text-center mb-3">
                    {isLoggedIn ? "You are logged in" : "Please login"}
                </div>
                <form onSubmit={handleSubmit(onSubmit)}>
                    <div className="mb-3">
                        <label className="form-label">Username</label>
                        <input
                            type="text"
                            className={`form-control ${errors.username ? 'is-invalid' : ''}`}
                            {...register('username', { required: 'Username is required' })}
                        />
                        {errors.username && <div className="invalid-feedback">{errors.username.message}</div>}
                    </div>
                    <div className="mb-3">
                        <label className="form-label">Password</label>
                        <input
                            type="password"
                            className={`form-control ${errors.password ? 'is-invalid' : ''}`}
                            {...register('password', { required: 'Password is required' })}
                        />
                        {errors.password && <div className="invalid-feedback">{errors.password.message}</div>}
                    </div>
                    <button type="submit" className="btn btn-primary w-100">Login</button>
                </form>
            </div>
        </div>
    );
}
