package com.DakiBookStore.model;

import javax.persistence.*;
import java.text.DecimalFormat;
import java.text.NumberFormat;

@Entity
@Table(name ="CartItem")
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column
    private int quantity;
    @Column(name = "totalPrice")
    private double totalPrice;

    @ManyToOne
    @JoinColumn(name = "id_Cart")
    private Cart cart;

    @OneToOne
    @JoinColumn(name = "ID_Book")
    private Book book;
    public CartItem(){}

    public CartItem(Long id, int quantity, double totalPrice, Cart cart, Book book) {
        this.id = id;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.cart = cart;
        this.book = book;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
    public String formatVND(long amount) {
        NumberFormat formatter = new DecimalFormat("#,###");
        return formatter.format(amount) + " VNĐ";
    }
}
