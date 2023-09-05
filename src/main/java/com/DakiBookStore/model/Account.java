package com.DakiBookStore.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Account")
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Account")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "Age")
    private int age;

    @Column(name = "Sex")
    private String sex;

    @Column(name = "Year_Of_Birth")
    private int DOB;

    @Column(name = "Username")
    private String username;

    @Column(name = "Password")
    private String password;

    @OneToOne(mappedBy = "account")
    private Cart cart;

    @OneToMany(mappedBy = "account")
    private List<Order> orders;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name ="User_Role", joinColumns = @JoinColumn(name="ID_Account"), inverseJoinColumns = @JoinColumn(name="ID_Role"))
    private List<Role> roles = new ArrayList<>();

    @OneToOne(mappedBy = "account")
    private InformationAccount informationAccount;

    public Account(){}

    public Account(long id, String name, int age, String sex, int DOB, String username, String password, Cart cart, List<Order> orders, List<Role> roles, InformationAccount informationAccount) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.DOB = DOB;
        this.username = username;
        this.password = password;
        this.cart = cart;
        this.orders = orders;
        this.roles = roles;
        this.informationAccount = informationAccount;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getDOB() {
        return DOB;
    }

    public void setDOB(int DOB) {
        this.DOB = DOB;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password.trim();
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public InformationAccount getInformationAccount() {
        return informationAccount;
    }

    public void setInformationAccount(InformationAccount informationAccount) {
        this.informationAccount = informationAccount;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

}
