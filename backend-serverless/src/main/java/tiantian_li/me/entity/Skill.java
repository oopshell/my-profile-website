package tiantian_li.me.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "skill")

public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "category")
    private String category;

    @Column(name = "items")
    private String items;

    // Constructors
    public Skill() {
    }

    public Skill(Long id, String category, String items) {
        this.id = id;
        this.category = category;
        this.items = items;
    }

    // Getters and setters
    public Long getId() {
        return id;
    }
    public String getCategory() {
        return category;
    }
    public String getItems() {
        return items;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    public void setItems(String items) {
            this.items = items;
        }
}
