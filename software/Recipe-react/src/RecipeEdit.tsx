import { useForm } from "react-hook-form";
import { useEffect, useState } from "react";
import { blankRecipe, deleteRecipe, fetchCuisines, fetchUsers, postRecipe } from "./DataUtil";
import { ICuisine, IRecipe, IUser } from "./DataInterface";
import { getUserStore } from "@devorag/reactutils";
import { useNavigate, useLocation } from "react-router-dom";

interface Props {
    recipe?: IRecipe;
}


const formatDate = (date: Date | string | null) =>
    date ? new Date(date).toISOString().split("T")[0] : "";

const getDefaultValues = (recipe: IRecipe) => ({
    ...recipe,
    cuisineId: recipe.cuisineId || "",
    usersId: recipe.usersId || "",
    dateDrafted: formatDate(recipe.dateDrafted),
    datePublished: formatDate(recipe.datePublished),
    dateArchived: formatDate(recipe.dateArchived),
    recipeStatus: recipe.recipeStatus || "",
});

export function RecipeEdit({ recipe: propRecipe }: Props) {
    const { register, handleSubmit, reset, watch, setValue } = useForm();
    const location = useLocation();
    const recipe = propRecipe || location.state?.recipe || blankRecipe;
    const apiurl = import.meta.env.VITE_API_URL_DEV;
    const useUserStore = getUserStore(apiurl);
    const [user, setUser] = useState<IUser[]>([]);
    const [cuisine, setCuisine] = useState<ICuisine[]>([]);
    const [msg, setErrorMsg] = useState("");
    const recipeStatus = watch("recipeStatus");
    const roleRank = useUserStore(state => state.roleRank);
    const navigate = useNavigate();

    useEffect(() => {
        reset(getDefaultValues(recipe));
    }, [recipe, reset]);


    useEffect(() => {
        const fetchData = async () => {
            try {
                const [userData, cuisineData] = await Promise.all([fetchUsers(), fetchCuisines()]);
                setUser(userData);
                setCuisine(cuisineData);
                reset(getDefaultValues(recipe));
            } catch (error) {
                setErrorMsg("Error fetching data.");
            }
        };
        fetchData();
    }, [recipe, reset]);

    useEffect(() => {
        const currentDate = formatDate(new Date());
        switch (recipeStatus) {
            case "Drafted":
                if (!watch("dateDrafted")) setValue("dateDrafted", currentDate);
                setValue("datePublished", undefined);
                setValue("dateArchived", undefined);
                break;
            case "Published":
                if (!watch("datePublished")) setValue("datePublished", currentDate);
                setValue("dateArchived", undefined);
                break;
            case "Archived":
                if (!watch("dateArchived")) setValue("dateArchived", currentDate);
                break;
            default:
                break;
        }
    }, [recipeStatus, setValue, watch]);


    const submitForm = async (data: {
        dateDrafted?: string;
        datePublished?: string;
        dateArchived?: string;
        cuisineId?: string;
        [key: string]: any;
    }) => {
        const cleanData = {
            ...data,
            dateDrafted: data.dateDrafted || null,
            datePublished: data.datePublished || null,
            dateArchived: data.dateArchived || null,
        };
        try {
            if (!cleanData.cuisineId) {
                setErrorMsg("Cuisine selection is required.");
                return;
            }
            const result = await postRecipe(cleanData);
            if (result.errorMessage) {
                setErrorMsg(result.errorMessage);
            } else {
                setErrorMsg("Recipe saved successfully.");
                reset(getDefaultValues(result));
            }
        } catch (error) {
            setErrorMsg(error instanceof Error ? error.message : "An unexpected error occurred.");
        }
        navigate("/");
    };


    const handleDelete = async () => {
        try {
            if (roleRank < 3) {
                setErrorMsg("Unauthorized user: Only high-level users can delete a recipe.");
                return;
            }

            const result = await deleteRecipe(recipe.recipeId);
            setErrorMsg(result.errorMessage || "Recipe deleted successfully.");
            if (!result.errorMessage) {
                reset(getDefaultValues(blankRecipe));
            }
        } catch (error) {
            setErrorMsg(error instanceof Error ? error.message : "An unexpected error occurred.");
        }
        navigate("/");
    };

    return (
        <div className="bg-light mt-4 p-4">
            <div className="container">
                <div className="row">
                    <div className="col-12">
                        {msg && (
                            <h2 id="hmsg" className={msg.includes("Unauthorized") || msg.includes("error") ? "text-danger" : "text-success"}>
                                {msg}
                            </h2>
                        )}
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
                            </div>

                            <div className="mb-3">
                                <label htmlFor="usersId" className="form-label">User:</label>
                                <select {...register("usersId", { required: "User is required" })} className="form-select">
                                    <option value="" disabled>Select User</option>
                                    {user.map(u => (
                                        <option key={u.usersId} value={u.usersId}>{u.usersName}</option>
                                    ))}
                                </select>
                            </div>

                            <div className="mb-3">
                                <label htmlFor="calories" className="form-label">Calories:</label>
                                <input type="number" {...register("calories")} className="form-control" required />
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
                            {roleRank >= 3 && (
                                <button onClick={handleDelete} type="button" id="btndelete" className="btn btn-danger">
                                    Delete
                                </button>
                            )}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    );
}
