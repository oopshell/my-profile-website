package tiantian_li.me.my_profile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tiantian_li.me.my_profile.entity.Project;
import tiantian_li.me.my_profile.service.ProjectService;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class ProjectController {

        @Autowired
        private ProjectService projectService;

        @PostMapping("/project")
        public Project saveProject(@RequestBody Project project) {
            return projectService.saveProject(project);
        }

        @GetMapping("/project")
        public List<Project> getAllProjects() {
            return projectService.fetchAllProjects();
        }

        @GetMapping("/project/{id}")
        public Project getProjectById(@PathVariable("id") Long id) {
            return projectService.getProjectById(id);
        }

        @PutMapping("/project/{id}")
        public Project updateProject(@PathVariable("id") Long id, @RequestBody Project project) {
            return projectService.updateProjectById(id, project);
        }

        @DeleteMapping("/project/{id}")
        public String deleteProject(@PathVariable("id") Long id) {
            return projectService.deleteProjectById(id);
        }
}
