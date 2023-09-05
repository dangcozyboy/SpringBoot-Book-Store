package com.DakiBookStore.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.text.DecimalFormat;
import java.text.NumberFormat;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "OrderDetail")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_order_detail")
    private long id;
    @Column(name="quantity")
    private int quantity;
    @Column(name="totalPrice")
    private long totalPrice;
    @Column(name="unitPrice")
    private long unitPrice;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_order")
    private Order order;

    @ManyToOne
    @JoinColumn(name = "id_book")
    private Book book;
    public String formatVND(long amount) {
        NumberFormat formatter = new DecimalFormat("#,###");
        return formatter.format(amount) + " VNĐ";
    }
}
