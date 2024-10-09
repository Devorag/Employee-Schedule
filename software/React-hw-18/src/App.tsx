
import "bootstrap/dist/css/bootstrap.min.css"
import RecipeSummary from "./RecipeSummary"
import RecipeList from "./RecipeList"
import RecipeCard from "./RecipeCard"
import RecipeData from "./RecipeData.json"

function App() {


  return (
    <div className="container">
      <div className="row">
        <div className="col-12">
          <h1>Hearty Hearth - React POC</h1>
          <hr />
        </div>
      </div>
      <div className="row">
        <div className="col-6">
          <div className="row mb-6">
            <div className="col-12">
              <RecipeSummary recipes={RecipeData} />
            </div>
          </div>
          <div className="row">
            <div className="col-12">
              <RecipeList recipes={RecipeData} />
            </div>
          </div>
        </div>
        <div className="col-6">
          <div className="row">
            <div className="col-12">
              <RecipeCard recipe={RecipeData[2]} />
            </div>
          </div>
          <div className="row">
            <div className="col-12">
              <RecipeCard recipe={RecipeData[8]} />
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default App
