package com.DakiBookStore.service;


import com.DakiBookStore.dto.BookDTO;
import com.DakiBookStore.dto.BookDetailDTO;
import com.DakiBookStore.model.*;
import com.DakiBookStore.repository.BookDetailsRepository;
import com.DakiBookStore.repository.BookRepository;
import com.DakiBookStore.repository.PictureRepository;
import com.DakiBookStore.service.exception.DuplicateBookException;
import com.DakiBookStore.service.exception.DuplicateCategoryException;
import com.DakiBookStore.util.ImageUpload;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;

@Service
@Transactional
public class BookService {
    private final BookRepository bookRepository;
    @Autowired
    private  PictureRepository pictureRepository;
    @Autowired
    private ImageUpload imageUpload;
    @Autowired
    private BookDetailsRepository bookDetailsRepository;

    @Autowired
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Book findById(Long id) {
        return bookRepository.findById(id).orElse(null);
    }

    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    public Book save(Book book) {
        return bookRepository.save(book);
    }

    public void deleteById(Long id) {
        bookRepository.deleteById(id);
    }
    public long countOrder(){
        return  bookRepository.countBook();
    }

    public List<Book> findBestSellerBooks() {
        return bookRepository.findBestSellerBooks();
    }

    public List<Book> findFeaturedBooks() {
        return bookRepository.findFeaturedBooks();
    }

    public List<Book> searchBook(String keyword) {
        return bookRepository.findByNameContainingIgnoreCase(keyword);
    }

    public Page<Book> findBooksWithPagination(int offset, int pageSize) {
        Page<Book> book = bookRepository.findAll(PageRequest.of(offset, pageSize));
        return book;
    }

    public List<Book> findBooksWithSorting(String field) {
        return bookRepository.findAll(Sort.by(Sort.Direction.ASC, field));
    }

    public List<Book> findByAuthor(Author author) {
        return bookRepository.findByAuthor(author);
    }

    public List<Book> findByCategory(Category category) {
        return bookRepository.findByCategory(category);
    }

    public Page<Book> findAll(Pageable pageable) {
        return bookRepository.findAll(pageable);
    }

    public Long coundAllBook() {
        return bookRepository.countAllBooks();
    }

    public void addBook(Book book) {
        if (bookRepository.existsById(book.getId())) {
            try {
                throw new DuplicateBookException("Category with name " + book.getName() + " already exists");
            } catch (DuplicateBookException e) {
                throw new RuntimeException(e);
            }
        }
//        category.setCategory(new String(category.getCategory().getBytes(), StandardCharsets.UTF_8));
        bookRepository.save(book);
    }
    public boolean existsBookByName(String name){
        return bookRepository.existsBookByName(name);
    }
    public Book addBook(MultipartFile imageBook, BookDTO bookDTO, BookDetailDTO bookDetailDTO) {
        try {
            Book book = new Book();
            if (imageBook == null) {
                book.setPicture(null);
            } else {
                if (imageUpload.uploadImage(imageBook)) {
                    System.out.println("Upload successfully");
                }
                Picture picture = new Picture();
                picture.setImagePath(Base64.getEncoder().encodeToString(imageBook.getBytes()));
                picture.setBook(book);
                pictureRepository.save(picture);
                book.setPicture(picture);
            }
            Book_Details bookDetails = new Book_Details();
            bookDetails.setId_Book(book);
            bookDetails.setBook_Cover(new String(bookDetailDTO.getBook_Cover().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8));
            bookDetails.setPages(bookDetailDTO.getPages());
            bookDetails.setSize(bookDetailDTO.getSize());
            bookDetails.setPublishing_House(bookDetailDTO.getPublishing_House());
            bookDetails.setPublishing_Year(bookDetailDTO.getPublishing_Year());
            bookDetailsRepository.save(bookDetails);
            book.setName(new String(bookDTO.getBookName().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8));
            book.setDescription(new String(bookDTO.getBookDescription().getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8));
            book.setCategory(bookDTO.getCategory());
            book.setPrice(bookDTO.getPrice());
            book.setQuantity(bookDTO.getCurrentQuantity());
            book.setAuthor(bookDTO.getAuthor());
            return bookRepository.save(book);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Book update(MultipartFile imageBook, BookDTO bookDTO, BookDetailDTO bookDetailDTO) {
        try {
            Book book = bookRepository.getById(bookDTO.getId());
            if(imageBook == null){
                book.setPicture(book.getPicture());
            }else{
                if(imageUpload.checkExisted(imageBook) == false){
                    imageUpload.uploadImage(imageBook);
                }
                Picture picture = pictureRepository.findByBookId(bookDetailDTO.getId());
                picture.setImagePath(Base64.getEncoder().encodeToString(imageBook.getBytes()));
                picture.setBook(book);
                pictureRepository.save(picture);
                book.setPicture(picture);
            }
            Book_Details bookDetails = bookDetailsRepository.getById(bookDetailDTO.getId());
            bookDetails.setId_Book(book);
            bookDetails.setBook_Cover(bookDetailDTO.getBook_Cover());
            bookDetails.setPages(bookDetailDTO.getPages());
            bookDetails.setSize(bookDetailDTO.getSize());
            bookDetails.setPublishing_House(bookDetailDTO.getPublishing_House());
            bookDetails.setPublishing_Year(bookDetailDTO.getPublishing_Year());
            bookDetailsRepository.save(bookDetails);
            book.setName(new String(bookDTO.getBookName().getBytes(), StandardCharsets.UTF_8));
            book.setDescription(new String(bookDTO.getBookDescription().getBytes(), StandardCharsets.UTF_8));
            book.setCategory(bookDTO.getCategory());
            book.setPrice(bookDTO.getPrice());
            book.setQuantity(bookDTO.getCurrentQuantity());
            book.setAuthor(bookDTO.getAuthor());
            return bookRepository.save(book);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
    public BookDTO getById(Long id) {
        Book book = bookRepository.getById(id);
        BookDTO bookDTO = new BookDTO();
        bookDTO.setId(book.getId());
        bookDTO.setBookDescription(book.getDescription());
        bookDTO.setBookName(book.getName());
        bookDTO.setAuthor(book.getAuthor());
        bookDTO.setCategory(book.getCategory());
        bookDTO.setPrice(book.getPrice());
        bookDTO.setCurrentQuantity(book.getQuantity());
        return bookDTO;
    }
}
