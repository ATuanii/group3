package com.mycompany.spring_mvc_project_final.entities;

import javax.persistence.*;

@Entity
@Table(name = "shoppingcart")
public class ShoppingCartEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int CartId;
    private int ProductId;
    private int QuantityId;
    private Double Price;
    public ShoppingCartEntity(){

    }
}
