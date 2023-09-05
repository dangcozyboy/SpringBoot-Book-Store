package com.DakiBookStore.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "InformationAccount")
public class InformationAccount {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private long id;
    @Column(name = "Address")
    private String Address;
    @Column(name = "Phone")
    private String Phone;
    @Column(name = "Email")
    private String email;
    @OneToOne
    @JoinColumn(name = "ID_Account")
    private Account account;


}
