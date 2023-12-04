package com.mycompany.spring_mvc_project_final.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "product")
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name ="id")
    private int Id;

    @Column (name ="ProductName")
    private String Name;

    @Column (name ="Description")
    private String Description;

    @Column (name ="ProductPrice")
    private Double Price;

    @Lob
    @Column (name = "ProductImage")
    private byte[] Image;

    @OneToMany(mappedBy = "quantity", cascade = CascadeType.ALL) // Quan hệ 1-n với đối tượng ở dưới (Person) (1 địa điểm có nhiều người ở)
    private Set<ShoppingCartEntity> ShoppingCartEntity;

    @ManyToOne
    @JoinColumn(name ="category_id")
    private CategoryEntity category;

    @Column (name = "Manufacturer")
    private String Manufacturer;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    // Quan hệ 1-n với đối tượng ở dưới (Person) (1 địa điểm có nhiều người ở)
    private Set<ShoppingCartEntity> shoppingCartEntity;
    public ProductEntity() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double price) {
        Price = price;
    }

    public byte[] getImage() {
        return Image;
    }

    public void setImage(byte[] image) {
        Image = image;
    }

    public Set<com.mycompany.spring_mvc_project_final.entities.ShoppingCartEntity> getShoppingCartEntity() {
        return ShoppingCartEntity;
    }

    public void setShoppingCartEntity(Set<com.mycompany.spring_mvc_project_final.entities.ShoppingCartEntity> shoppingCartEntity) {
        ShoppingCartEntity = shoppingCartEntity;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public String getManufacturer() {
        return Manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        Manufacturer = manufacturer;
    }
}