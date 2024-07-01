import { useForm } from "react-hook-form"
import { getUserStore } from "@charliecpu/reactutils";
import { useState } from "react";

type forminput = { username: string, password: string }

export default function Login() {
    const { register, handleSubmit, formState: { errors } } = useForm<forminput>();
    const apiurl = import.meta.env.VITE_API_URL;
    const useUserStore = getUserStore(apiurl);
    const login = useUserStore((state) => state.login);
    const isLoggedIn = useUserStore(state => state.isLoggedIn);
    const [crashmsg, setCrashmsg] = useState("");
    const errormsg = useUserStore(state => state.errorMessage);
    const onSubmit = async (data: forminput) => {
        try {
            setCrashmsg("");
            await login(data.username, data.password);
        }
        catch (error: unknown) {
            if (error instanceof Error) {
                setCrashmsg(error.message);
            }
            else {
                setCrashmsg("error");
            }
        }
    };


    return (
        <>
            <h2 className="mb-4 text-center">{crashmsg || errormsg}</h2>
            <div className="d-flex justify-content-center">
                <div className="col-6">
                    <form onSubmit={handleSubmit(onSubmit)} className="needs-validation" noValidate>
                        <div className="mb-3">
                            <label className="form-label">Username</label>
                            <input type="text" className={`form-control ${errors.username ? 'is-invalid' : ''}`} {...register('username', { required: 'Username is required' })} />
                            {errors.username && <div className="invalid-feedback">{errors.username.message}</div>}
                        </div>
                        <div className="mb-3">
                            <label className="form-label">Password</label>
                            <input type="password" className={`form-control ${errors.password ? 'is-invalid' : ''}`}
                                {...register('password', { required: 'Password is required' })} />
                            {errors.password && <div className="invalid-feedback">{errors.password.message}</div>}
                        </div>
                        <button type="submit" className="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>
        </>
    )
}
