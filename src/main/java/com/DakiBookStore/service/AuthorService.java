package com.DakiBookStore.service;

import com.DakiBookStore.model.Account;
import com.DakiBookStore.model.Author;
import com.DakiBookStore.model.Book;
import com.DakiBookStore.repository.AuthorRepository;
import com.DakiBookStore.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {
    @Autowired
    private AuthorRepository authorRepository;
    @Autowired
    public AuthorService(AuthorRepository authorRepository) {
        this.authorRepository = authorRepository;
    }
    public Author findById(Long id) {
        return authorRepository.findById(id).orElse(null);
    }

    public List<Author> findAll() {
        return authorRepository.findAll();
    }

    public Author save(Author author) {
        return authorRepository.save(author);
    }

    public void deleteById(Long id) {
        authorRepository.deleteById(id);
    }

    public List<Author> findFavoriteAuthor(){return authorRepository.findFavoriteAuthor();}

    public Page<Author> findAll(Pageable pageable) {
        return authorRepository.findAll(pageable);
    }
    public Author updateAuthor(Author author){
        Author author1 = authorRepository.getById(author.getId());
        return authorRepository.save(author1);
    }
}
