import React from 'react';
import Header from './Header';
import Card from './Card';
import './style.css';
import "bootstrap/dist/css/bootstrap.min.css"

const App: React.FC = () => {
  const cardContents: string[] = ['Modern Art', 'Classic Paintings', 'Abstract Art', 'Sculptures'];

  return (
    <div className="app">
      <Header />
      <div className="container my-5">
        <div className="row">
          {cardContents.map((content, index) => (
            <Card key={index} text={content} />
          ))}
        </div>
      </div>
    </div>
  );
};


export default App;

