package tiantian_li.me.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "responsibility")
public class Responsibility {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long responsibilityId;

    @ManyToOne
    @JoinColumn(name = "experience_id", nullable = false)
    private Experience experience;

    @Column(name = "title")
    private String title;

    @Lob
    @Column(name = "description", length = 1000)
    private String description;

    // Constructors
    public Responsibility() {}

    public Responsibility(Long responsibilityId, Experience experience, String title, String description) {
        this.responsibilityId = responsibilityId;
        this.experience = experience;
        this.title = title;
        this.description = description;
    }

    // Getters and setters
    public Long getResponsibilityId() { return responsibilityId; }
    public Experience getExperience() { return experience; }
    public String getTitle() { return title; }
    public String getDescription() { return description; }

    public void setExperience(Experience experience) { this.experience = experience; }
    public void setTitle(String title) { this.title = title; }
    public void setDescription(String description) { this.description = description; }
}
