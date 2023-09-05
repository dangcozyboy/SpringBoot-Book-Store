package com.DakiBookStore.model;


import javax.persistence.*;

@Entity
@Table(name ="Author")
public class Author {

    @Id
    @Column(name = "ID_Author")
    private long id;

    @Column(name ="Name_Of_Author")
    private String name;

    @Column(name ="Address_Of_Author")
    private String address;

    public Author(){}

    public Author(long id, String name, String address) {
        this.id = id;
        this.name = name;
        this.address = address;
    }

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
