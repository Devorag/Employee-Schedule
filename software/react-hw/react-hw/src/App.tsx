import React from 'react';
import Book from "./Book";

interface BookType {
    title: string;
    author: string;
    genre: string;
}

const App: React.FC = () => {
    const books: BookType[] = [
        { title: 'To Kill a Mockingbird', author: 'Harper Lee', genre: 'Fiction' },
        { title: '1984', author: 'George Orwell', genre: 'Dystopian' },
        { title: 'Moby Dick', author: 'Herman Melville', genre: 'Adventure' },
    ];

    return (
        <div className="library">
            <h1>Welcome to the Virtual Library</h1>
            <div className="book-grid">
                {books.map((book, index) => (
                    <Book key={index} title={book.title} author={book.author} genre={book.genre} />
                ))}
            </div>
        </div>
    );
};

export default App;
