import { FieldValues, useForm } from "react-hook-form"
import { blankRecipe, deleteRecipe, fetchCuisines, fetchUsers, postRecipe } from "./DataUtil";
import { useEffect, useState } from "react";
import { ICuisine, IRecipe, IUser } from "./DataInterface";

interface Props {
    recipe: IRecipe
}

export function RecipeEdit({ recipe }: Props) {
    const { register, handleSubmit, reset } = useForm({ defaultValues: recipe });
    const [user, setUser] = useState<IUser[]>([]);
    const [cuisine, setCuisine] = useState<ICuisine[]>([]);
    const [msg, setErrorMsg] = useState("");
    useEffect(() => {
        const fetchData = async () => {
            const data = await fetchUsers();
            setUser(data);
            reset(recipe);
        };
        fetchData();
    }, []);
    useEffect(() => {
        const fetchData = async () => {
            const data = await fetchCuisines();
            setCuisine(data);
            reset(recipe);
        };
        fetchData();
    }, []);

    useEffect(
        () => {
            reset(recipe);
        }, [recipe, reset]
    )

    const submitForm = async (data: FieldValues) => {
        // console.log(data);
        const r = await postRecipe(data);
        setErrorMsg(r.errorMessage);
        reset(r);
    };

    const handleDelete = async () => {
        const r = await deleteRecipe(recipe.recipeId);
        setErrorMsg(r.errorMessage);
        if (r.errorMessage == "") {
            reset(blankRecipe);
        }
    }

    return (
        <div className="bg-light mt-4 p-4">
            <div className="container">
                <div className="row">
                    <div className="col-12">
                        <h2 id="hmsg">{msg}</h2>
                    </div>
                </div>
                <div className="row">
                    <div className="col-6">
                        <form onSubmit={handleSubmit(submitForm)} className="needs-validation">
                            <div className="mb-3">
                                <label htmlFor="recipeName" className="form-label">Recipe Name:</label>
                                <input type="text" {...register("recipeName")} className="form-control"
                                    required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="recipeId" className="form-label">Recipe ID:</label>
                                <input type="hidden" {...register("recipeId")} value="0" className="form-control" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="cuisineId" className="form-label">Cuisine ID:</label>
                                <select {...register("cuisineId")} className="form-select"></select>
                                <option value="0"></option>
                                {cuisine.map(c => <option key={c.cuisineId} value={c.cuisineId}>{c.cuisineName}</option>)}
                            </div>
                            <div className="mb-3">
                                <label htmlFor="usersId" className="form-label">Users ID:</label>
                                <select {...register("usersId")} className="form-select"></select>
                                <option value="0"></option>
                                {user.map(u => <option key={u.usersId} value={u.usersId}>{u.usersName}</option>)}
                            </div>
                            <div className="mb-3">
                                <label htmlFor="calories" className="form-label">Calories:</label>
                                <input type="number" {...register("calories")} value="200" className="form-control" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="dateDrafted" className="form-label">Date Drafted:</label>
                                <input type="date" {...register("dateDrafted")} className="form-control" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="datePublished" className="form-label">Date Published:</label>
                                <input type="date" {...register("datePublished")} className="form-control" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="dateArchived" className="form-label">Date Archived:</label>
                                <input type="date" {...register("dateArchived")} className="form-control" required />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="recipeStatus" className="form-label">Recipe Status:</label>
                                <input type="text" {...register("recipeStatus")} className="form-control" />
                            </div>
                            <button type="submit" className="btn btn-primary">Submit</button>
                            <button onClick={handleDelete} type="button" id="btndelete" className="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    )
}