package tiantian_li.me.service;

import tiantian_li.me.entity.Skill;
import java.util.List;

public interface SkillService {

            Skill saveSkill(Skill skill);

            List<Skill> fetchAllSkills();

            Skill getSkillById(Long id);

            Skill updateSkillById(Long id, Skill skill);

            String deleteSkillById(Long id);
}
