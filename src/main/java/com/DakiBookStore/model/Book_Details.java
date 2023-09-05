package com.DakiBookStore.model;

import javax.persistence.*;

@Entity
@Table(name = "Book_Detail")
public class Book_Details {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ID_Detail")
    private long id;
    @OneToOne
    @JoinColumn(name="ID_Book")
    private Book id_Book;
    @Column(name="Publishing_House")
    private String Publishing_House;
    @Column(name ="Size")
    private String size;
    @Column(name = "Pages")
    private int pages;
    @Column(name = "Book_Cover")
    private String Book_Cover;
    @Column(name ="Publishing_Year")
    private int Publishing_Year;
    public Book_Details(){}

    public Book_Details(long id, Book id_Book, String publishing_House, String size, int pages, String book_Cover, int publishing_Year) {
        this.id = id;
        this.id_Book = id_Book;
        Publishing_House = publishing_House;
        this.size = size;
        this.pages = pages;
        Book_Cover = book_Cover;
        Publishing_Year = publishing_Year;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Book getId_Book() {
        return id_Book;
    }

    public void setId_Book(Book id_Book) {
        this.id_Book = id_Book;
    }

    public String getPublishing_House() {
        return Publishing_House;
    }

    public void setPublishing_House(String publishing_House) {
        Publishing_House = publishing_House;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public String getBook_Cover() {
        return Book_Cover;
    }

    public void setBook_Cover(String book_Cover) {
        Book_Cover = book_Cover;
    }

    public int getPublishing_Year() {
        return Publishing_Year;
    }

    public void setPublishing_Year(int publishing_Year) {
        Publishing_Year = publishing_Year;
    }
}
