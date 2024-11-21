package tiantian_li.me.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "experience")
public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "experience_id")
    private Long experienceId;

    @Column(name = "position")
    private String position;

    @Column(name = "start_date")
    private String startDate;

    @Column(name = "end_date")
    private String endDate;

    @ManyToOne
    @JoinColumn(name = "company_id", nullable = false, referencedColumnName = "company_id")
    @JsonIgnore
    private Company company;

    @OneToMany(
            mappedBy = "experience",
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private List<Responsibility> responsibilities;

}
