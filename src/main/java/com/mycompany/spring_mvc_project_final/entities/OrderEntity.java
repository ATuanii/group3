package com.mycompany.spring_mvc_project_final.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Order")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private int User;
    private Date Date;
    private String Status;
    public OrderEntity(){

    }

}
