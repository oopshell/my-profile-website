package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.SkillCategory;

@Repository
public interface SkillCategoryRepository extends JpaRepository<SkillCategory, Long> {
}
