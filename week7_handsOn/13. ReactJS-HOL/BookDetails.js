
import React from 'react';

function BookDetails() {
  const books = ['Atomic Habits', 'Deep Work', 'Clean Code'];
  return (
    <div>
      <h2>Book List</h2>
      <ul>
        {books.map((book, index) => (
          <li key={index}>{book}</li>
        ))}
      </ul>
    </div>
  );
}

export default BookDetails;
