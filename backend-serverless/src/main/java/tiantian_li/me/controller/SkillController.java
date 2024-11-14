package tiantian_li.me.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import tiantian_li.me.entity.Skill;
import tiantian_li.me.service.SkillService;
import java.util.List;

@RestController
@RequestMapping("/api/v1/skills")
public class SkillController {
    private final SkillService skillService;

    @Autowired
    public SkillController(SkillService skillService) {
        this.skillService = skillService;
    }

    @PostMapping
    public ResponseEntity<Skill> createSkill(@RequestBody Skill skill) {
        Skill savedSkill = skillService.saveSkill(skill);
        return new ResponseEntity<>(savedSkill, HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Skill>> getAllSkills() {
        List<Skill> skills = skillService.fetchAllSkills();
        return ResponseEntity.ok(skills);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Skill> getSkillById(@PathVariable Long id) {
        Skill skill = skillService.findSkillById(id);
        return skill != null ? ResponseEntity.ok(skill) : ResponseEntity.notFound().build();
    }

    @GetMapping("/category/{category}")
    public ResponseEntity<List<Skill>> getSkillsByCategory(@PathVariable String category) {
        List<Skill> skills = skillService.findSkillsByCategory(category);
        return ResponseEntity.ok(skills);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Skill> updateSkillById(@PathVariable Long id, @RequestBody Skill skill) {
        Skill updatedSkill = skillService.updateSkillById(id, skill);
        return ResponseEntity.ok(updatedSkill);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteSkillById(@PathVariable Long id) {
        String message = skillService.deleteSkillById(id);
        return ResponseEntity.ok(message);
    }

}
