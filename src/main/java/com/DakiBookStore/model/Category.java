package com.DakiBookStore.model;

import javax.persistence.*;

@Entity
@Table(name = "Category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Category")
    private long id;
    @Column(name = "Name_Of_Category", columnDefinition = "nvarchar(10)")
    private String category;

    public Category(){}
    public Category(long id, String category) {
        this.id = id;
        this.category = category;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
