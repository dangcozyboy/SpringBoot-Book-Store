package com.DakiBookStore.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Date;
import java.util.List;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "Orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Order")
    private long id;
    @ManyToOne
    @JoinColumn(name = "ID_Account")
    private Account account;
    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date OrderDate;
    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date ShipDate;
    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date DeliveryDate;
    @Column
    private String OrderStatus;
    @OneToOne
    @JoinColumn(name = "ID_Payment")
    private Paymentmethod paymentmethod;
    private double totalPrice;
    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetailList;
    public String formatVND(long amount) {
        NumberFormat formatter = new DecimalFormat("#,###");
        return formatter.format(amount) + " VNĐ";
    }
}
