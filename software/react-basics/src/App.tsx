
import "bootstrap/dist/css/bootstrap.min.css"
import PresidentSummary from "./PresidentSummary"
import PresidentList from "./PresidentList"
import PresidentFeature from "./PresidentFeature"
import PresidentData from "./PresidentData.json"

function App() {


  return (
    <div className="container">
      <div className="row">
        <div className="col-12">
          <h1>U.S. Presidents</h1>
          <hr />
        </div>
      </div>
      <div className="row">
        <div className="col-6">
          <div className="row">
            <div className="col-12">
              <PresidentSummary presidents={PresidentData} />
            </div>
          </div>
          <div className="row">
            <div className="col-12">
              <  PresidentList presidents={PresidentData} />
            </div>
          </div>
        </div>
        <div className="col-6">
          <div className="row">
            <div className="col-12">
              <PresidentFeature president={PresidentData[0]} />
            </div>
          </div>
          <div className="row">
            <div className="col-12">
              <PresidentFeature president={PresidentData[2]} />
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default App
