package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.Skill;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Long> {
}
