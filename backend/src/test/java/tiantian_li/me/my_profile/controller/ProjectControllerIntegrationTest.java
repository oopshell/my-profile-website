package tiantian_li.me.my_profile.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.hamcrest.Matchers.is;
import static org.mockito.BDDMockito.given;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import tiantian_li.me.my_profile.entity.Project;
import tiantian_li.me.my_profile.service.ProjectService;

import java.util.Collections;
import java.util.List;

@WebMvcTest(ProjectController.class)
public class ProjectControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private ProjectService projectService;

    @Test
    public void testSaveProject() throws Exception {
        Project project = new Project(1L, "Project Name", "Short Description", "Detailed Description", "http://project-link.com");

        given(projectService.saveProject(Mockito.any(Project.class))).willReturn(project);

        String projectJson = "{\"name\":\"Project Name\",\"description\":\"Short Description\",\"detail\":\"Detailed Description\",\"link\":\"http://project-link.com\"}";

        mockMvc.perform(post("/api/v1/project")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(projectJson))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.name", is("Project Name")))
                .andExpect(jsonPath("$.description", is("Short Description")))
                .andExpect(jsonPath("$.detail", is("Detailed Description")))
                .andExpect(jsonPath("$.link", is("http://project-link.com")));
    }

    @Test
    public void testGetAllProjects() throws Exception {
        Project project = new Project(1L, "Project Name", "Short Description", "Detailed Description", "http://project-link.com");
        List<Project> allProjects = Collections.singletonList(project);

        given(projectService.fetchAllProjects()).willReturn(allProjects);

        mockMvc.perform(get("/api/v1/project"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id", is(1)))
                .andExpect(jsonPath("$[0].name", is("Project Name")))
                .andExpect(jsonPath("$[0].description", is("Short Description")))
                .andExpect(jsonPath("$[0].detail", is("Detailed Description")))
                .andExpect(jsonPath("$[0].link", is("http://project-link.com")));
    }

    @Test
    public void testGetProjectById() throws Exception {
        Project project = new Project(1L, "Project Name", "Short Description", "Detailed Description", "http://project-link.com");

        given(projectService.getProjectById(1L)).willReturn(project);

        mockMvc.perform(get("/api/v1/project/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.name", is("Project Name")))
                .andExpect(jsonPath("$.description", is("Short Description")))
                .andExpect(jsonPath("$.detail", is("Detailed Description")))
                .andExpect(jsonPath("$.link", is("http://project-link.com")));
    }

    @Test
    public void testUpdateProject() throws Exception {
        Project project = new Project(1L, "Updated Project Name", "Updated Short Description", "Updated Detailed Description", "http://updated-project-link.com");

        given(projectService.updateProjectById(Mockito.eq(1L), Mockito.any(Project.class))).willReturn(project);

        String projectJson = "{\"name\":\"Updated Project Name\",\"description\":\"Updated Short Description\",\"detail\":\"Updated Detailed Description\",\"link\":\"http://updated-project-link.com\"}";

        mockMvc.perform(put("/api/v1/project/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(projectJson))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.name", is("Updated Project Name")))
                .andExpect(jsonPath("$.description", is("Updated Short Description")))
                .andExpect(jsonPath("$.detail", is("Updated Detailed Description")))
                .andExpect(jsonPath("$.link", is("http://updated-project-link.com")));
    }

    @Test
    public void testDeleteProject() throws Exception {
        given(projectService.deleteProjectById(1L)).willReturn("Project deleted successfully");

        mockMvc.perform(delete("/api/v1/project/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", is("Project deleted successfully")));
    }
}
