package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.Skill;

import java.util.List;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Long> {
    // Find all skills by category name
    @Query("SELECT s FROM Skill s JOIN s.category c WHERE c.categoryName = :categoryName")
    List<Skill> findSkillsByCategoryName(@Param("categoryName") String categoryName);
}
