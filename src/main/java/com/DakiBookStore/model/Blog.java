package com.DakiBookStore.model;



import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "Blog")
public class Blog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Column(name ="title")
    private String title;
    @Column(name ="content")
    private String content;
    @Column(name ="createdDate")
    private Date createdDate;
//    @Column(name ="type")
//    private String type;
    public Blog() {}

    public Blog(long id, String title, String content, Date createdDate) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.createdDate = createdDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

//    public String getType() {
//        return type;
//    }
//
//    public void setType(String type) {
//        this.type = type;
//    }


}