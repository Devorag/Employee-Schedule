import React from 'react';

interface BookProps {
    title: string;
    author: string;
    genre: string;
}

const Book: React.FC<BookProps> = ({ title, author, genre }) => {
    return (
        <div className="book">
            <h3 {title}></h3>
            <p><strong>Author:</strong>{author}</p>
            <p><strong>Genre:</strong>{genre}</p>
        </div>
    )
};
export default Book;