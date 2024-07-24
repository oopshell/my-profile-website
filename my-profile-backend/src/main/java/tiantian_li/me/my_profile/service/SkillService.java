package tiantian_li.me.my_profile.service;

import tiantian_li.me.my_profile.entity.Skill;
import java.util.List;

public interface SkillService {

            Skill saveSkill(Skill skill);

            List<Skill> fetchAllSkills();

            Skill getSkillById(Long id);

            Skill updateSkillById(Long id, Skill skill);

            String deleteSkillById(Long id);
}
