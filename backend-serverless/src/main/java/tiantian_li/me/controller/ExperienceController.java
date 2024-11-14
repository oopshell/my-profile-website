package tiantian_li.me.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import tiantian_li.me.entity.Experience;
import tiantian_li.me.service.ExperienceService;
import java.util.List;

@RestController
@RequestMapping("/api/v1/experience")
public class ExperienceController {
    private  final ExperienceService experienceService;

    @Autowired
    public ExperienceController(ExperienceService experienceService) {
        this.experienceService = experienceService;
    }

    @PostMapping
    public ResponseEntity<Experience> saveExperience(@RequestBody Experience experience) {
        Experience savedExperience = experienceService.saveExperience(experience);
        return new ResponseEntity<>(savedExperience, HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Experience>> getAllExperiences() {
        List<Experience> experiences = experienceService.fetchAllExperiences();
        return ResponseEntity.ok(experiences);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Experience> getExperienceById(@PathVariable Long id) {
        Experience experience = experienceService.findExperienceById(id);
        return experience != null ? ResponseEntity.ok(experience) : ResponseEntity.notFound().build();
    }

    @PutMapping("/{id}")
    public ResponseEntity<Experience> updateExperienceById(@PathVariable Long id, @RequestBody Experience experience) {
        Experience updatedExperience = experienceService.updateExperienceById(id, experience);
        return ResponseEntity.ok(updatedExperience);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteExperienceById(@PathVariable Long id) {
        String message = experienceService.deleteExperienceById(id);
        return ResponseEntity.ok(message);
    }
}
