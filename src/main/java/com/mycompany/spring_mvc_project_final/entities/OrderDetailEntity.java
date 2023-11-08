package com.mycompany.spring_mvc_project_final.entities;

import javax.persistence.*;

@Entity
@Table(name = "OrderDetail")
public class OrderDetailEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int OrderDetailId;
    private int OrderId;
    private int ProductId;
    private int QuantityId;
    private Double Price;
    public OrderDetailEntity(){}
}
