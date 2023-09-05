package com.DakiBookStore.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Role")
public class Role {

    @Id
    @Column(name = "ID_Role")
    private int id;
    @Column(name = "Role")
    private String role;
    @ManyToMany(mappedBy = "roles")
    private List<Account> accounts = new ArrayList<>();

    public Role() {
    }

    public Role(int id, String role, List<Account> accounts) {
        this.id = id;
        this.role = role;
        this.accounts = accounts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }
}


