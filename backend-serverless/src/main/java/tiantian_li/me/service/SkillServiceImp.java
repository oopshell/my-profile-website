package tiantian_li.me.service;

import tiantian_li.me.entity.Skill;
import tiantian_li.me.entity.SkillCategory;
import tiantian_li.me.repository.SkillRepository;
import tiantian_li.me.repository.SkillCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class SkillServiceImp implements SkillService {

    @Autowired
    private SkillRepository skillRepository;

    @Autowired
    private SkillCategoryRepository skillCategoryRepository;

    @Override
    public Skill saveSkill(Skill skill) {
        // Ensure the category exists before saving
        if (skill.getCategory() != null) {
            Optional<SkillCategory> category = skillCategoryRepository.findById(skill.getCategory().getCategoryId());
            category.ifPresent(skill::setCategory);
        }
        return skillRepository.save(skill);
    }

    @Override
    public List<Skill> fetchAllSkills() {
        return skillRepository.findAll();
    }

    @Override
    public Skill findSkillById(Long id) {
        return skillRepository.findById(id).orElse(null);
    }

    @Override
    public List<Skill> findSkillsByCategory(String category) {
        return skillRepository.findSkillsByCategoryName(category);
    }

    @Override
    public Skill updateSkillById(Long id, Skill skillUpdate) {
        Optional<Skill> skillOptional = skillRepository.findById(id);
        if (skillOptional.isPresent()) {
            Skill existingSkill = skillOptional.get();

            // Update the skill category if provided
            if (skillUpdate.getCategory() != null) {
                Optional<SkillCategory> category = skillCategoryRepository.findById(skillUpdate.getCategory().getCategoryId());
                category.ifPresent(existingSkill::setCategory);
            }

            // Update the skill name
            if (Objects.nonNull(skillUpdate.getSkillName()) && !skillUpdate.getSkillName().isEmpty()) {
                existingSkill.setSkillName(skillUpdate.getSkillName());
            }

            return skillRepository.save(existingSkill);
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
