package com.DakiBookStore.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "Cart")
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @OneToOne
    @JoinColumn(name = "ID_Account")
    private Account account;

    @Column
    private int totalItems;

    @Column
    private double totalPrices;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cart", orphanRemoval = true)
    private Set<CartItem> cartItem;
    public Cart(){}


    public Cart(Long id, Account account, int totalItems, double totalPrices, Set<CartItem> cartItem) {
        this.id = id;
        this.account = account;
        this.totalItems = totalItems;
        this.totalPrices = totalPrices;
        this.cartItem = cartItem;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public int getTotalItems() {
        return totalItems;
    }

    public void setTotalItems(int totalItems) {
        this.totalItems = totalItems;
    }

    public double getTotalPrices() {
        return totalPrices;
    }

    public void setTotalPrices(double totalPrices) {
        this.totalPrices = totalPrices;
    }

    public Set<CartItem> getCartItem() {
        return cartItem;
    }

    public void setCartItem(Set<CartItem> cartItem) {
        this.cartItem = cartItem;
    }
    public String formatVND(long amount) {
        NumberFormat formatter = new DecimalFormat("#,###");
        return formatter.format(amount) + " VNĐ";
    }
}
