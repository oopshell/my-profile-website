package tiantian_li.me.controller;

import tiantian_li.me.entity.Project;
import tiantian_li.me.entity.ProjectDetail;
import tiantian_li.me.entity.ProjectTag;
import tiantian_li.me.service.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/projects")
public class ProjectController {

    private final ProjectService projectService;

    @Autowired
    public ProjectController(ProjectService projectService) {
        this.projectService = projectService;
    }

    // Create a new Project
    @PostMapping
    public ResponseEntity<Project> createProject(@RequestBody Project project) {
        Project savedProject = projectService.saveProject(project);
        return new ResponseEntity<>(savedProject, HttpStatus.CREATED);
    }

    // Retrieve all Projects
    @GetMapping
    public ResponseEntity<List<Project>> getAllProjects() {
        List<Project> projects = projectService.fetchAllProjects();
        return ResponseEntity.ok(projects);
    }

    // Retrieve a single Project by ID
    @GetMapping("/{id}")
    public ResponseEntity<Project> getProjectById(@PathVariable Long id) {
        Project project = projectService.getProjectById(id);
        return project != null ? ResponseEntity.ok(project) : ResponseEntity.notFound().build();
    }

    // Retrieve a single Project by Slug
    @GetMapping("/slug/{slug}")
    public ResponseEntity<Project> getProjectBySlug(@PathVariable String slug) {
        Project project = projectService.getProjectBySlug(slug);
        return project != null ? ResponseEntity.ok(project) : ResponseEntity.notFound().build();
    }

    // Update a Project by ID
    @PutMapping("/{id}")
    public ResponseEntity<Project> updateProject(
            @PathVariable Long id,
            @RequestBody Project projectUpdate,
            @RequestParam(required = false) List<ProjectDetail> details,
            @RequestParam(required = false) List<ProjectTag> tags) {

        Project updatedProject = projectService.updateProjectById(id, projectUpdate, details, tags);
        return updatedProject != null ? ResponseEntity.ok(updatedProject) : ResponseEntity.notFound().build();
    }

    // Delete a Project by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteProjectById(@PathVariable Long id) {
        String message = projectService.deleteProjectById(id);
        return message.equals("Project has been deleted") ?
                ResponseEntity.ok(message) : ResponseEntity.status(HttpStatus.NOT_FOUND).body(message);
    }

    // Add details to a Project
    @PostMapping("/{projectId}/details")
    public ResponseEntity<Project> addDetailsToProject(
            @PathVariable Long projectId,
            @RequestBody List<ProjectDetail> details) {

        Project updatedProject = projectService.addDetailsToProject(projectId, details);
        return updatedProject != null ? ResponseEntity.ok(updatedProject) : ResponseEntity.notFound().build();
    }

    // Add tags to a Project
    @PostMapping("/{projectId}/tags")
    public ResponseEntity<Project> addTagsToProject(
            @PathVariable Long projectId,
            @RequestBody List<ProjectTag> tags) {

        Project updatedProject = projectService.addTagsToProject(projectId, tags);
        return updatedProject != null ? ResponseEntity.ok(updatedProject) : ResponseEntity.notFound().build();
    }

//    // Retrieve all Project Details
//    @GetMapping("/{projectId}/details")
//    public ResponseEntity<List<ProjectDetail>> getProjectDetails(@PathVariable Long projectId) {
//        Project project = projectService.getProjectById(projectId);
//        return project != null ? ResponseEntity.ok(project.getDetails()) : ResponseEntity.notFound().build();
//    }
//
//    // Retrieve all Project Tags
//    @GetMapping("/{projectId}/tags")
//    public ResponseEntity<List<ProjectTag>> getProjectTags(@PathVariable Long projectId) {
//        Project project = projectService.getProjectById(projectId);
//        return project != null ? ResponseEntity.ok(project.getTags()) : ResponseEntity.notFound().build();
//    }
}
