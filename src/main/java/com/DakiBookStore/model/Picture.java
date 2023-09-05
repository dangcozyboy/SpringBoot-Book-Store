package com.DakiBookStore.model;


import javax.persistence.*;

@Entity
@Table(name ="Picture")
public class Picture {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Picture")
    private Long id;

    @Column(name = "Caption")
    private String caption;

    @Column(name = "Image_Path")
    private String imagePath;

    @OneToOne
    @JoinColumn(name = "ID_Book")
    private Book book;

    public Picture(){}

    public Picture(Long id, String caption, String imagePath, Book book) {
        this.id = id;
        this.caption = caption;
        this.imagePath = imagePath;
        this.book = book;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}
