package tiantian_li.me.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "work_experience")
public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long experienceId;

    @ManyToOne
    @JoinColumn(name = "company_id", nullable = false)
    private Company company;

    @Column(name = "position")
    private String position;

    @Column(name = "start_date")
    private String startDate;

    @Column(name = "end_date")
    private String endDate;

    @OneToMany(mappedBy = "experience", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Responsibility> responsibilities;

    // Constructors
    public Experience() {}

    public Experience(Long experienceId, Company company, String position, String startDate, String endDate) {
        this.experienceId = experienceId;
        this.company = company;
        this.position = position;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    // Getters and setters
    public Long getExperienceId() { return experienceId; }
    public Company getCompany() { return company; }
    public String getPosition() { return position; }
    public String getStartDate() { return startDate; }
    public String getEndDate() { return endDate; }
    public List<Responsibility> getResponsibilities() { return responsibilities; }

    public void setCompany(Company company) { this.company = company; }
    public void setPosition(String position) { this.position = position; }
    public void setStartDate(String startDate) { this.startDate = startDate; }
    public void setEndDate(String endDate) { this.endDate = endDate; }
    public void setResponsibilities(List<Responsibility> responsibilities) { this.responsibilities = responsibilities; }
}
