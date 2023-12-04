package com.mycompany.spring_mvc_project_final.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "cart")
public class ShoppingCartEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "account_id", referencedColumnName = "id")
    private AccountEntity user;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "quantity_id", referencedColumnName = "id")
    private ProductEntity quantity;

    @ManyToOne
    @JoinColumn(name ="product_id")
    private ProductEntity product;

    public ShoppingCartEntity() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public AccountEntity getUser() {
        return user;
    }

    public void setUser(AccountEntity user) {
        this.user = user;
    }

    public ProductEntity getQuantity() {
        return quantity;
    }

    public void setQuantity(ProductEntity quantity) {
        this.quantity = quantity;
    }

    public ProductEntity getProduct() {
        return product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }
}