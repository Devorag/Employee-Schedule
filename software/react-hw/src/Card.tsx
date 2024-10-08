import React from 'react';
import "bootstrap/dist/css/bootstrap.min.css";


type CardProps = {
    text: string;
}

const Card: React.FC<CardProps> = ({ text }) => {
    return (
        <div className="col-md-3 mb-4">
            <div className="card shadow-lg border-0" style={cardStyle}>
                <div className="gradient-bg card-body text-center">
                    <h5 className="card-title text-light">{text}</h5>
                    <p className="card-text text-light">Explore the world of {text} in this creative collection.</p>
                    <button className="btn btn-light">View More</button>
                </div>
            </div>
        </div>
    );
};

const cardStyle = {
    transition: 'transform 0.3s ease-in-out',
    borderRadius: '15px',
    cursor: 'pointer',
};



export default Card;
