//package com.mycompany.spring_mvc_project_final.entities;
//
//import javax.persistence.*;
//import java.sql.Blob;
//
//@Entity
//@Table(name = "product")
//public class ProductEntity {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Column(name = "Id")
//    private int Id;
//    private String Name;
//    @Column(name = "Name")
//
//    private String Description;
//    private Double Price;
//    private Blob Image;
//    private int Quantity;
//    private String Category;
//    private String Manufacturer;
//    public ProductEntity(){}
//    @OneToOne(mappedBy = "product")
//    private CategoryEntity categoryEntity;
//
//    public int getId() {
//        return Id;
//    }
//
//    public void setId(int id) {
//        Id = id;
//    }
//
//    public String getName() {
//        return Name;
//    }
//
//    public void setName(String name) {
//        Name = name;
//    }
//
//    public String getDescription() {
//        return Description;
//    }
//
//    public void setDescription(String description) {
//        Description = description;
//    }
//
//    public Double getPrice() {
//        return Price;
//    }
//
//    public void setPrice(Double price) {
//        Price = price;
//    }
//
//    public Blob getImage() {
//        return Image;
//    }
//
//    public void setImage(Blob image) {
//        Image = image;
//    }
//
//    public int getQuantity() {
//        return Quantity;
//    }
//
//    public void setQuantity(int quantity) {
//        Quantity = quantity;
//    }
//
//    public String getCategory() {
//        return Category;
//    }
//
//    public void setCategory(String category) {
//        Category = category;
//    }
//
//    public String getManufacturer() {
//        return Manufacturer;
//    }
//
//    public void setManufacturer(String manufacturer) {
//        Manufacturer = manufacturer;
//    }
//}
