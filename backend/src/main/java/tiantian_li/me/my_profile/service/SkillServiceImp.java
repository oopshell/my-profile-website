package tiantian_li.me.my_profile.service;

import tiantian_li.me.my_profile.entity.Skill;
import tiantian_li.me.my_profile.repository.SkillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class SkillServiceImp implements SkillService{

    @Autowired
    private SkillRepository skillRepository;

    @Override
    public Skill saveSkill(Skill skill) {
        return skillRepository.save(skill);
    }

    @Override
    public List<Skill> fetchAllSkills() {
        List<Skill> allSkills = skillRepository.findAll();
        return allSkills;
    }

    @Override
    public Skill getSkillById(Long id) {
        Optional<Skill> skill = skillRepository.findById(id);
        if (skill.isPresent()) {
            return skill.get();
        }
        return null;
    }

    @Override
    public Skill updateSkillById(Long id, Skill skillUpdate) {
        Optional<Skill> skill = skillRepository.findById(id);
        if (skill.isPresent()) {
            Skill originalSkill = skill.get();
            if (Objects.nonNull(skillUpdate.getCategory()) && !"".equalsIgnoreCase(skillUpdate.getCategory())) {
                originalSkill.setCategory(skillUpdate.getCategory());
            }
            if (Objects.nonNull(skillUpdate.getItems()) && !"".equalsIgnoreCase(skillUpdate.getItems())) {
                originalSkill.setItems(skillUpdate.getItems());
            }
            return skillRepository.save(originalSkill);
        }
        return null;
    }

    @Override
    public String deleteSkillById(Long id) {
        Optional<Skill> skill = skillRepository.findById(id);
        if (skill.isPresent()) {
            skillRepository.deleteById(id);
            return "Skill deleted successfully";
        }
        return "Skill not found";
    }
}
