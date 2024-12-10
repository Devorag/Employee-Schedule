import { useEffect, useState } from "react";
import { fetchRecipesbyCuisineName } from "./DataUtil";
import { IRecipe } from "./DataInterface";
import RecipeCard from "./RecipeCard";

interface Props {
    cuisineName: string;
    onRecipeSelectedForEdit: (recipe: IRecipe) => void;
}

export default function MainScreen({ cuisineName, onRecipeSelectedForEdit }: Props) {
    const [recipelist, setRecipeList] = useState<IRecipe[]>([]);
    const [isLoading, setIsLoading] = useState(false);

    useEffect(() => {
        if (cuisineName) {
            setIsLoading(true);
            const fetchdata = async () => {
                const data = await fetchRecipesbyCuisineName(cuisineName);
                console.log('Fetched recipes:', data);
                setRecipeList(data);
                setIsLoading(false);
            };
            fetchdata();
        }
    }, [cuisineName]);

    return (
        <>
            <div className="container py-4">
                <div className="row">
                    <div className={isLoading ? "placeholder-glow" : ""}>
                        <h2 className="text-dark">
                            <span className={isLoading ? "placeholder" : ""}>{recipelist.length} Recipes</span>
                        </h2>
                    </div>
                </div>
                <div className="row">
                    {recipelist.map(r =>
                        <div key={r.recipeId} className="col-md-6 col-lg-3 mb-2">
                            <RecipeCard
                                recipe={r}
                                onRecipeSelectedForEdit={onRecipeSelectedForEdit}
                            />
                        </div>
                    )}
                </div>
            </div>
        </>
    );
}
