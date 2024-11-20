package tiantian_li.me.service;

import tiantian_li.me.entity.Skill;
import tiantian_li.me.entity.SkillCategory;
import java.util.List;

public interface SkillService {

    Skill saveSkill(Skill skill);

    List<Skill> fetchAllSkills();

    Skill findSkillById(Long id);

    List<Skill> findSkillsByCategory(String category);

    Skill updateSkillById(Long id, Skill skill);

    String deleteSkillById(Long id);
}
