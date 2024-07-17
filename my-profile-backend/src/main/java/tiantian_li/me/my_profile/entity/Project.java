package tiantian_li.me.my_profile.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "project")

public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Lob
    @Column(name = "detail", length = 1000)
    private String detail;

    @Column(name = "link")
    private String link;


    // Getters and setters
    public Long getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public String getDescription() {
        return description;
    }
    public String getDetail() {
        return detail;
    }
    public String getLink() {
        return link;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public void setDetail(String detail) {
        this.detail = detail;
    }
    public void setLink(String link) {
        this.link = link;
    }
}
