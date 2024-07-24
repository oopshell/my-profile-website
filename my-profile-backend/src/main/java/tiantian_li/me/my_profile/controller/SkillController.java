package tiantian_li.me.my_profile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tiantian_li.me.my_profile.entity.Skill;
import tiantian_li.me.my_profile.service.SkillService;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class SkillController {

            @Autowired
            private SkillService skillService;

            @PostMapping("/skill")
            public Skill saveSkill(@RequestBody Skill skill) {
                return skillService.saveSkill(skill);
            }

            @GetMapping("/skill")
            public List<Skill> getAllSkills() {
                return skillService.fetchAllSkills();
            }

            @GetMapping("/skill/{id}")
            public Skill getSkillById(@PathVariable("id") Long id) {
                return skillService.getSkillById(id);
            }

            @PutMapping("/skill/{id}")
            public Skill updateSkill(@PathVariable("id") Long id, @RequestBody Skill skill) {
                return skillService.updateSkillById(id, skill);
            }

            @DeleteMapping("/skill/{id}")
            public String deleteSkill(@PathVariable("id") Long id) {
                return skillService.deleteSkillById(id);
            }
}
