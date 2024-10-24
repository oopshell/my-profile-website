package tiantian_li.me.controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import tiantian_li.me.entity.Project;
import tiantian_li.me.service.ProjectService;

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

public class ProjectControllerUnitTest {

    @InjectMocks
    private ProjectController projectController;

    @Mock
    private ProjectService projectService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSaveProject() {
        Project project = new Project(1L, "Project Name", "Short Description", "Detailed Description", "http://project-link.com");

        given(projectService.saveProject(any(Project.class))).willReturn(project);

        Project savedProject = projectController.saveProject(new Project(null, "Project Name", "Short Description", "Detailed Description", "http://project-link.com"));

        assertEquals(1L, savedProject.getId());
        assertEquals("Project Name", savedProject.getName());
        verify(projectService).saveProject(any(Project.class));
    }

    @Test
    public void testGetAllProjects() {
        Project project = new Project(1L, "Project Name", "Short Description", "Detailed Description", "http://project-link.com");
        List<Project> allProjects = Collections.singletonList(project);

        given(projectService.fetchAllProjects()).willReturn(allProjects);

        List<Project> projects = projectController.getAllProjects();

        assertEquals(1, projects.size());
        assertEquals("Project Name", projects.get(0).getName());
        verify(projectService).fetchAllProjects();
    }

    @Test
    public void testGetProjectById() {
        Project project = new Project(1L, "Project Name", "Short Description", "Detailed Description", "http://project-link.com");

        given(projectService.getProjectById(1L)).willReturn(project);

        Project fetchedProject = projectController.getProjectById(1L);

        assertEquals(1L, fetchedProject.getId());
        assertEquals("Project Name", fetchedProject.getName());
        verify(projectService).getProjectById(1L);
    }

    @Test
    public void testUpdateProject() {
        Project project = new Project(1L, "Updated Project Name", "Updated Short Description", "Updated Detailed Description", "http://updated-project-link.com");

        given(projectService.updateProjectById(eq(1L), any(Project.class))).willReturn(project);

        Project updatedProject = projectController.updateProject(1L, new Project(null, "Updated Project Name", "Updated Short Description", "Updated Detailed Description", "http://updated-project-link.com"));

        assertEquals(1L, updatedProject.getId());
        assertEquals("Updated Project Name", updatedProject.getName());
        verify(projectService).updateProjectById(eq(1L), any(Project.class));
    }

    @Test
    public void testDeleteProject() {
        given(projectService.deleteProjectById(1L)).willReturn("Project deleted successfully");

        String response = projectController.deleteProject(1L);

        assertEquals("Project deleted successfully", response);
        verify(projectService).deleteProjectById(1L);
    }
}
