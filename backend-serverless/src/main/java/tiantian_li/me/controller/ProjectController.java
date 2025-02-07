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

    // Create a new project
    @PostMapping
    public ResponseEntity<Project> createProject(@RequestBody Project project) {
        Project savedProject = projectService.saveProject(project);
        return new ResponseEntity<>(savedProject, HttpStatus.CREATED);
    }

    // Retrieve all projects
    @GetMapping
    public ResponseEntity<List<Project>> getAllProjects() {
        List<Project> projects = projectService.findAllProjects();
        return ResponseEntity.ok(projects);
    }

    // // Retrieve a single project by ID
    // @GetMapping("/{id}")
    // public ResponseEntity<Project> getProjectById(@PathVariable Long id) {
    //     Project project = projectService.findProjectById(id);
    //     return project != null ? ResponseEntity.ok(project) : ResponseEntity.notFound().build();
    // }

    // Retrieve a single Project by Slug
    @GetMapping("/{slug}")
    public ResponseEntity<Project> getProjectBySlug(@PathVariable String slug) {
        Project project = projectService.findProjectBySlug(slug);
        return project != null ? ResponseEntity.ok(project) : ResponseEntity.notFound().build();
    }

    // Get project details by project ID
    @GetMapping("/{projectId}/details")
    public ResponseEntity<List<ProjectDetail>> getProjectDetails(@PathVariable Long projectId) {
        List<ProjectDetail> projectDetails = projectService.findDetailsByProjectId(projectId);
        return ResponseEntity.ok(projectDetails);
    }
    @GetMapping("/{projectId}/getDetails")
    public ResponseEntity<List<ProjectDetail>> getProjectDetailsSelf(@PathVariable Long projectId) {
        Project project = projectService.findProjectById(projectId);
        return project != null ? ResponseEntity.ok(project.getDetails()) : ResponseEntity.notFound().build();
    }

    // Get project details by project slug
    @GetMapping("/{slug}/details")
    public ResponseEntity<List<ProjectDetail>> getProjectDetailsBySlug(@PathVariable String slug) {
        List<ProjectDetail> projectDetails = projectService.findDetailsByProjectSlug(slug);
        return ResponseEntity.ok(projectDetails);
    }

    // Get all tags
    @GetMapping("/project-tags")
    public ResponseEntity<List<ProjectTag>> getAllTags() {
        List<ProjectTag> tags = projectService.findAllTags();
        return ResponseEntity.ok(tags);
    }

    // Get project tags by project ID
    @GetMapping("/{projectId}/tags")
    public ResponseEntity<List<ProjectTag>> getProjectTags(@PathVariable Long projectId) {
        List<ProjectTag> projectTags = projectService.findTagsByProjectId(projectId);
        return ResponseEntity.ok(projectTags);
    }
    @GetMapping("/{projectId}/getTags")
    public ResponseEntity<List<ProjectTag>> getProjectTagsSelf(@PathVariable Long projectId) {
        Project project = projectService.findProjectById(projectId);
        return project != null ? ResponseEntity.ok(project.getTags()) : ResponseEntity.notFound().build();
    }

    // Get project tags by project slug
    @GetMapping("/{slug}/tags")
    public ResponseEntity<List<ProjectTag>> getProjectTagsBySlug(@PathVariable String slug) {
        List<ProjectTag> projectTags = projectService.findTagsByProjectSlug(slug);
        return ResponseEntity.ok(projectTags);
    }

    // Get projects by a tag name
    @GetMapping("/tag/{tagName}")
    public ResponseEntity<List<Project>> getProjectsByTagName(@PathVariable String tagName) {
        List<Project> projects = projectService.findProjectsByTagName(tagName);
        return ResponseEntity.ok(projects);
    }

    // Update a project by ID
    @PutMapping("/{id}")
    public ResponseEntity<Project> updateProject(
            @PathVariable Long id,
            @RequestBody Project projectUpdate,
            @RequestParam(required = false) List<ProjectDetail> details,
            @RequestParam(required = false) List<ProjectTag> tags) {

        Project updatedProject = projectService.updateProjectById(id, projectUpdate, details, tags);
        return updatedProject != null ? ResponseEntity.ok(updatedProject) : ResponseEntity.notFound().build();
    }

    // Delete a project by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteProjectById(@PathVariable Long id) {
        String message = projectService.deleteProjectById(id);
        return message.equals("Project has been deleted") ?
                ResponseEntity.ok(message) : ResponseEntity.status(HttpStatus.NOT_FOUND).body(message);
    }

    // Add details to a project
    @PostMapping("/{projectId}/details")
    public ResponseEntity<Project> addDetailsToProject(
            @PathVariable Long projectId,
            @RequestBody List<ProjectDetail> details) {

        Project updatedProject = projectService.addDetailsToProject(projectId, details);
        return updatedProject != null ? ResponseEntity.ok(updatedProject) : ResponseEntity.notFound().build();
    }

    // Add tags to a project
    @PostMapping("/{projectId}/tags")
    public ResponseEntity<Project> addTagsToProject(
            @PathVariable Long projectId,
            @RequestBody List<ProjectTag> tags) {

        Project updatedProject = projectService.addTagsToProject(projectId, tags);
        return updatedProject != null ? ResponseEntity.ok(updatedProject) : ResponseEntity.notFound().build();
    }
}
