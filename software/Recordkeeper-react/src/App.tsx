import './assets/css/bootstrap.min.css'
import MainScreen from './MainScreen'
import Navbar from './Navbar'
import Sidebar from './Sidebar'

function App() {


  return (
    <div className='container'>
      <div className='row'>
        <div className="col-12">
          <Navbar />
        </div>
      </div>
      <div className="row">
        <div className="col-3 ">
          <Sidebar />
        </div>
        <div className="col-9 bg-primary">
          <MainScreen />
        </div>
      </div>
    </div>
  )
}

export default App
