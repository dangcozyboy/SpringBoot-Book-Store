package com.DakiBookStore.model;



import javax.persistence.*;
import java.text.DecimalFormat;
import java.text.NumberFormat;


@Entity
@Table(name = "Book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Book")
    private Long id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Describe")
    private String description;

    @Column(name = "Quantity")
    private int quantity;

    @ManyToOne
    @JoinColumn(name = "AuthorID")
    private Author author;

    @OneToOne
    @JoinColumn(name = "ID_Category")
    private Category category;

    @Column(name = "Price")
    private Long price;
    @OneToOne(mappedBy = "book")
    private Picture picture;
    @OneToOne(mappedBy = "id_Book")
    private Book_Details bookDetails;
    public Book(){}


    public Book(Long id, String name, String description, int quantity, Author author, Category category, Long price, Picture picture, Book_Details bookDetails) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.quantity = quantity;
        this.author = author;
        this.category = category;
        this.price = price;
        this.picture = picture;
        this.bookDetails = bookDetails;
    }


    public Book_Details getBookDetails() {
        return bookDetails;
    }

    public void setBookDetails(Book_Details bookDetails) {
        this.bookDetails = bookDetails;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }
    public String formatVND(long amount) {
        NumberFormat formatter = new DecimalFormat("#,###");
        return formatter.format(amount) + " VNĐ";
    }
    public static String formatMoney(double amount) {
        NumberFormat formatter = new DecimalFormat("#,###");
        return formatter.format(amount) + " VNĐ";
    }
}


