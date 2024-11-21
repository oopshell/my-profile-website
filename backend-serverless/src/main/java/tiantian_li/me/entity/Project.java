package tiantian_li.me.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "project")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "project_id")
    private Long projectId;

    @Column(name = "slug", unique = true)
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
    @OneToMany(
            mappedBy = "project",
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true  // If the project is removed, remove all details associated with it
    )
    private List<ProjectDetail> details;

    // Many-to-many relationship with ProjectTag through ProjectTagMapping
    @ManyToMany(
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL
    )
    @JoinTable(
            name = "project_tag_mapping",
            joinColumns = {
                    @JoinColumn(name = "project_id", referencedColumnName = "project_id")
            },
            inverseJoinColumns = {
                    @JoinColumn(name = "tag_id", referencedColumnName = "tag_id")
            }
    )
    private List<ProjectTag> tags;

}
