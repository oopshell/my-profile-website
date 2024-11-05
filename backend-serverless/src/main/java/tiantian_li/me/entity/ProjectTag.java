package tiantian_li.me.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "project_tag")
public class ProjectTag {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long tagId;

    @Column(name = "tag_name", unique = true)
    private String tagName;

    // Many-to-many relationship with Project through ProjectTagMapping
    @ManyToMany(mappedBy = "tags")
    private List<Project> projects;

    // Constructors
    public ProjectTag() {}

    public ProjectTag(String tagName) {
        this.tagName = tagName;
    }

    public ProjectTag(Long tagId, String tagName) {
        this.tagId = tagId;
        this.tagName = tagName;
    }

    // Getters and setters
    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public List<Project> getProjects() {
        return projects;
    }

    public void setProjects(List<Project> projects) {
        this.projects = projects;
    }
}
