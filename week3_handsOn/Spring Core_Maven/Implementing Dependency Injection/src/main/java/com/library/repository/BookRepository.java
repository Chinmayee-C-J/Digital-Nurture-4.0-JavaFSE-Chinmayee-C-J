package com.library.repository;

public class BookRepository {
    public void saveBook(String bookName) {
        System.out.println("BookRepository: Successfully saved '" + bookName + "' to the library database.");
    }
}
