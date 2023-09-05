package com.DakiBookStore.service;

import com.DakiBookStore.model.Book_Details;
import com.DakiBookStore.model.Picture;
import com.DakiBookStore.repository.BookDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookDetailsService {
    private final BookDetailsRepository bookDetailsRepository;
    @Autowired
    public BookDetailsService(BookDetailsRepository bookDetailsRepository) {
        this.bookDetailsRepository = bookDetailsRepository;
    }
    public Book_Details findById(Long id) {
        return bookDetailsRepository.findById(id).orElse(null);
    }

    public List<Book_Details> findAll() {
        return bookDetailsRepository.findAll();
    }

    public Book_Details addBookDetail(Book_Details bookDetails) {
        return bookDetailsRepository.save(bookDetails);
    }

    public void deleteById(Long id) {
        bookDetailsRepository.deleteById(id);
    }
    public Book_Details findByBookID(Long id) {
        return bookDetailsRepository.findByBookId(id);
    }
}
