package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.Responsibility;

import java.util.List;

@Repository
public interface ResponsibilityRepository extends JpaRepository<Responsibility, Long> {
    @Query("SELECT r FROM Responsibility r JOIN r.experience e WHERE e.experienceId = :experienceId")
    List<Responsibility> findResponsibilitiesByExperienceId(@Param("experienceId") Long experienceId);
}
