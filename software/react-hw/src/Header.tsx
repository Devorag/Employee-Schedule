import React from 'react';
import "bootstrap/dist/css/bootstrap.min.css";

const Header: React.FC = () => {
    return (
        <div className="text-light text-center py-5" style={headerStyle}>
            <h1 className="display-4">Creative Art Gallery</h1>
            <p className="text-light lead">Showcasing beautiful art in Bootstrap style</p>
        </div>
    );
};

const headerStyle = {
    background: 'linear-gradient(135deg, #ff9a9e 0%, #fad0c4 50%, #a1c4fd 100%)',
    boxShadow: '0 4px 8px rgba(0, 0, 0, 0.2)',
    padding: '50px 0',
    color: '#fff',
};

export default Header;
