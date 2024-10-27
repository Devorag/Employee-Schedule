import { useEffect, useState } from "react"
import { fetchRecipesbyCuisineName } from "./DataUtil";
import { IRecipe } from "./DataInterface";
import RecipeCard from "./RecipeCard";

interface Props {
    cuisineName: string;
}

export default function MainScreen({ cuisineName }: Props) {
    const [recipelist, setRecipeList] = useState<IRecipe[]>([]);
    const [isLoading, setIsLoading] = useState(false);
    useEffect(() => {
        setIsLoading(true);
        const fetchdata = async () => {
            const data = await fetchRecipesbyCuisineName(cuisineName);
            setRecipeList(data);
            setIsLoading(false);
        };
        fetchdata();
    }, [cuisineName]);

    return (
        <>
            <div className="row">
                <div className={isLoading ? "placeholder-glow" : ""}>
                    <h2 className="bg-light">
                        <span className={isLoading ? "placeholder" : ""}>{recipelist.length}  Recipes</span>
                    </h2>
                </div>
            </div>
            <div className="row">
                {recipelist.map(r =>
                    <div key={r.recipeId} className="col-md-6 col-lg-3 mb-2">
                        <RecipeCard recipe={r} />
                    </div>
                )
                }
            </div>
        </>
    );
}
