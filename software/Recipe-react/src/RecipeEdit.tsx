import { FieldValues, useForm } from "react-hook-form";
import { blankRecipe, deleteRecipe, fetchCuisines, fetchUsers, postRecipe } from "./DataUtil";
import { useEffect, useState } from "react";
import { ICuisine, IRecipe, IUser } from "./DataInterface";

interface Props {
    recipe: IRecipe;
}

export function RecipeEdit({ recipe }: Props) {
    const { register, handleSubmit, reset, watch, setValue, formState: { errors } } = useForm({
        defaultValues: {
            ...recipe,
            cuisineId: recipe.cuisineId || "",
            usersId: recipe.usersId || "",
            dateDrafted: recipe.dateDrafted ? new Date(recipe.dateDrafted).toISOString().split("T")[0] : "",
            datePublished: recipe.datePublished ? new Date(recipe.datePublished).toISOString().split("T")[0] : "",
            dateArchived: recipe.dateArchived ? new Date(recipe.dateArchived).toISOString().split("T")[0] : "",
            recipeStatus: recipe.recipeStatus || "",
        }
    });

    const [user, setUser] = useState<IUser[]>([]);
    const [cuisine, setCuisine] = useState<ICuisine[]>([]);
    const [msg, setErrorMsg] = useState("");
    const recipeStatus = watch("recipeStatus");

    useEffect(() => {
        const fetchData = async () => {
            const userData = await fetchUsers();
            const cuisineData = await fetchCuisines();
            setUser(userData);
            setCuisine(cuisineData);

            reset({
                ...recipe,
                cuisineId: recipe.cuisineId || "",
                usersId: recipe.usersId || "",
                dateDrafted: recipe.dateDrafted ? new Date(recipe.dateDrafted).toISOString().split("T")[0] : "",
                datePublished: recipe.datePublished ? new Date(recipe.datePublished).toISOString().split("T")[0] : "",
                dateArchived: recipe.dateArchived ? new Date(recipe.dateArchived).toISOString().split("T")[0] : "",
                recipeStatus: recipe.recipeStatus || "",
            });
        };
        fetchData();
    }, [recipe, reset]);

    useEffect(() => {
        const currentDate = new Date().toISOString().split("T")[0];
        if (recipeStatus === "Drafted") {
            setValue("dateDrafted", currentDate);
            setValue("datePublished", "");
            setValue("dateArchived", "");
        } else if (recipeStatus === "Published") {
            setValue("dateDrafted", currentDate);
            setValue("datePublished", currentDate);
            setValue("dateArchived", "");
        } else if (recipeStatus === "Archived") {
            setValue("dateDrafted", currentDate);
            setValue("datePublished", currentDate);
            setValue("dateArchived", currentDate);
        }
    }, [recipeStatus, setValue]);

    const submitForm = async (data: FieldValues) => {
        if (!data.cuisineId) {
            setErrorMsg("Cuisine selection is required.");
            return;
        }
        const r = await postRecipe(data);
        if (r.errorMessage) {
            setErrorMsg(r.errorMessage);
        } else {
            setErrorMsg("Recipe saved successfully.");
            reset(r);
        }
    };

    const handleDelete = async () => {
        const r = await deleteRecipe(recipe.recipeId);
        setErrorMsg(r.errorMessage || "Recipe deleted successfully.");
        if (!r.errorMessage) reset(blankRecipe);
    };

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
                                <input type="text" {...register("recipeName")} className="form-control" required />
                            </div>

                            <input type="hidden" {...register("recipeId")} />

                            <div className="mb-3">
                                <label htmlFor="cuisineId" className="form-label">Cuisine:</label>
                                <select {...register("cuisineId", { required: "Cuisine is required" })} className="form-select">
                                    <option value="" disabled>Select Cuisine</option>
                                    {cuisine.map(c => (
                                        <option key={c.cuisineId} value={c.cuisineId}>{c.cuisineName}</option>
                                    ))}
                                </select>
                                {errors.cuisineId && <span className="text-danger">{errors.cuisineId.message}</span>}
                            </div>

                            <div className="mb-3">
                                <label htmlFor="usersId" className="form-label">User:</label>
                                <select {...register("usersId", { required: "User is required" })} className="form-select">
                                    <option value="0" disabled>Select User</option>
                                    {user.map(u => (
                                        <option key={u.usersId} value={u.usersId}>{u.usersName}</option>
                                    ))}
                                </select>
                                {errors.usersId && <span className="text-danger">{errors.usersId.message}</span>}
                            </div>

                            <div className="mb-3">
                                <label htmlFor="calories" className="form-label">Calories:</label>
                                <input type="number" {...register("calories")} defaultValue={200} className="form-control" required />
                            </div>

                            <div className="mb-3">
                                <label htmlFor="dateDrafted" className="form-label">Date Drafted:</label>
                                <input type="date" {...register("dateDrafted")} className="form-control" readOnly />
                            </div>

                            <div className="mb-3">
                                <label htmlFor="datePublished" className="form-label">Date Published:</label>
                                <input type="date" {...register("datePublished")} className="form-control" readOnly />
                            </div>

                            <div className="mb-3">
                                <label htmlFor="dateArchived" className="form-label">Date Archived:</label>
                                <input type="date" {...register("dateArchived")} className="form-control" readOnly />
                            </div>

                            <div className="mb-3">
                                <label htmlFor="recipeStatus" className="form-label">Recipe Status:</label>
                                <select {...register("recipeStatus")} className="form-select">
                                    <option value="">Select Status</option>
                                    <option value="Drafted">Drafted</option>
                                    <option value="Published">Published</option>
                                    <option value="Archived">Archived</option>
                                </select>
                            </div>

                            <button type="submit" className="btn btn-primary">Submit</button>
                            <button onClick={handleDelete} type="button" id="btndelete" className="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    );
}
