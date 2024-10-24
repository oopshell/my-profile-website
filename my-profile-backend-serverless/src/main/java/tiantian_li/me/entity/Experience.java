package tiantian_li.me.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "experience")

public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "company_name")
    private String companyName;

    @Column(name = "job_title")
    private String jobTitle;

    @Column(name = "date_range")
    private String dateRange;

    @Lob
    @Column(name = "description", length = 1000)
    private String description;

    @Column(name = "location")
    private String location;

    // Constructors
    public Experience() {
    }

    public Experience(Long id, String companyName, String jobTitle, String dateRange, String description, String location) {
        this.id = id;
        this.companyName = companyName;
        this.jobTitle = jobTitle;
        this.dateRange = dateRange;
        this.description = description;
        this.location = location;
    }

    // Getters and setters
    public Long getId() {
        return id;
    }
    public String getCompanyName() {
        return companyName;
    }
    public String getJobTitle() {
        return jobTitle;
    }
    public String getDateRange() {
        return dateRange;
    }
    public String getDescription() {
        return description;
    }
    public String getLocation() {
        return location;
    }

    public void setCompanyName(String company_name) {
        this.companyName = company_name;
    }
    public void setJobTitle(String job_title) {
        this.jobTitle = job_title;
    }
    public void setDateRange(String date_range) {
        this.dateRange = date_range;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public void setLocation(String location) {
        this.location = location;
    }
}
