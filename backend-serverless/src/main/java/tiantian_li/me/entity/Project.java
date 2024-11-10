package tiantian_li.me.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "project")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "slug")
    private String slug;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "git_url")
    private String gitUrl;

    @Column(name = "preview_url")
    private String previewUrl;

    // One-to-many relationship with ProjectDetail
    @OneToMany(mappedBy = "project", cascade = CascadeType.ALL)
    private List<ProjectDetail> details;

    // Many-to-many relationship with ProjectTag through ProjectTagMapping
    @ManyToMany
    @JoinTable(
            name = "project_tag_mapping",
            joinColumns = @JoinColumn(name = "project_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    private List<ProjectTag> tags;

    // Constructors
    public Project() {}

    public Project(Long id, String slug, String name, String description, String gitUrl, String previewUrl) {
        this.id = id;
        this.slug = slug;
        this.name = name;
        this.description = description;
        this.gitUrl = gitUrl;
        this.previewUrl = previewUrl;
    }

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGitUrl() {
        return gitUrl;
    }

    public void setGitUrl(String gitUrl) {
        this.gitUrl = gitUrl;
    }

    public String getPreviewUrl() {
        return previewUrl;
    }

    public void setPreviewUrl(String previewUrl) {
        this.previewUrl = previewUrl;
    }

    public List<ProjectDetail> getDetails() {
        return details;
    }

    public void setDetails(List<ProjectDetail> details) {
        this.details = details;
    }

    public List<ProjectTag> getTags() {
        return tags;
    }

    public void setTags(List<ProjectTag> tags) {
        this.tags = tags;
    }
}
