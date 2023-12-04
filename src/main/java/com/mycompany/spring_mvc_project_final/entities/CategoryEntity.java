package com.mycompany.spring_mvc_project_final.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "category")
public class CategoryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    // Quan hệ 1-n với đối tượng ở dưới (Person) (1 địa điểm có nhiều người ở)
    private Set<ProductEntity> ProductEntity;

    public CategoryEntity(){
    }
    public CategoryEntity(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<com.mycompany.spring_mvc_project_final.entities.ProductEntity> getProductEntity() {
        return ProductEntity;
    }

    public void setProductEntity(Set<com.mycompany.spring_mvc_project_final.entities.ProductEntity> productEntity) {
        ProductEntity = productEntity;
    }
}