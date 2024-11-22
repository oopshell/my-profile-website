package tiantian_li.me.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "responsibility")
public class Responsibility {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "responsibility_id")
    private Long responsibilityId;

    @Column(name = "title")
    private String title;

    @Lob
    @Column(name = "description", length = 1000)
    private String description;

    @ManyToOne
    @JoinColumn(name = "experience_id", nullable = false, referencedColumnName = "experience_id")
    @JsonIgnore
    private Experience experience;

}
