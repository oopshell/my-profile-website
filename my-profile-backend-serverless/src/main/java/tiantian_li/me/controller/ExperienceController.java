package tiantian_li.me.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tiantian_li.me.entity.Experience;
import tiantian_li.me.service.ExperienceService;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
//@CrossOrigin(origins = {
//        "http://s3.ap-southeast-2.amazonaws.com",
//        "http://tiantian-li.me.s3-website-ap-southeast-2.amazonaws.com",
//        "http://d6v8zbfpagpmu.cloudfront.net",
//        "http://tiantian-li.me",
//        "http://www.tiantian-li.me"
//})
public class ExperienceController {

        @Autowired
        private ExperienceService experienceService;

        @PostMapping("/experience")
        public Experience saveExperience(@RequestBody Experience experience) {
            return experienceService.saveExperience(experience);
        }

        @GetMapping("/experience")
        public List<Experience> getAllExperiences() {
            return experienceService.fetchAllExperiences();
        }

        @GetMapping("/experience/{id}")
        public Experience getExperienceById(@PathVariable("id") Long id) {
            return experienceService.getExperienceById(id);
        }

        @PutMapping("/experience/{id}")
        public Experience updateExperience(@PathVariable("id") Long id, @RequestBody Experience experience) {
            return experienceService.updateExperienceById(id, experience);
        }

        @DeleteMapping("/experience/{id}")
        public String deleteExperience(@PathVariable("id") Long id) {
            return experienceService.deleteExperienceById(id);
        }
}
