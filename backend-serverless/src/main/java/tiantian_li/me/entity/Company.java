package tiantian_li.me.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "company")
public class Company {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long companyId;

    @Column(name = "company_name")
    private String companyName;

    @Column(name = "location")
    private String location;

    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Experience> experiences;

    // Constructors
    public Company() {}

    public Company(Long companyId, String companyName, String location) {
        this.companyId = companyId;
        this.companyName = companyName;
        this.location = location;
    }

    // Getters and setters
    public Long getCompanyId() { return companyId; }
    public String getCompanyName() { return companyName; }
    public String getLocation() { return location; }
    public List<Experience> getExperiences() { return experiences; }

    public void setCompanyName(String companyName) { this.companyName = companyName; }
    public void setLocation(String location) { this.location = location; }
    public void setExperiences(List<Experience> experiences) { this.experiences = experiences; }
}
