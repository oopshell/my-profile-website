package tiantian_li.me.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "project_detail")
public class ProjectDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long detailId;

    @ManyToOne
    @JoinColumn(name = "project_id", nullable = false)
    private Project project;

    @Column(name = "title")
    private String title;

    @Lob
    @Column(name = "description")
    private String description;

    // Constructors
    public ProjectDetail() {}

    public ProjectDetail(Project project, String title, String description) {
        this.project = project;
        this.title = title;
        this.description = description;
    }

    public ProjectDetail(Long detailId, String title, String description, Project project) {
        this.detailId = detailId;
        this.title = title;
        this.description = description;
        this.project = project;
    }

    // Getters and setters
    public Long getDetailId() {
        return detailId;
    }

    public void setDetailId(Long detailId) {
        this.detailId = detailId;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
