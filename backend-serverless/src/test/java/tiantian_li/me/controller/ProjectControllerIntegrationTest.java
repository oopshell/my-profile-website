//package tiantian_li.me.controller;
//
//import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.http.MediaType;
//import org.springframework.test.web.servlet.MockMvc;
//
//import tiantian_li.me.entity.Project;
//import tiantian_li.me.entity.ProjectDetail;
//import tiantian_li.me.entity.ProjectTag;
//
//import java.util.Collections;
//import java.util.List;
//
//@SpringBootTest
//@AutoConfigureMockMvc
//class ProjectControllerIntegrationTest {
//
//    @Autowired
//    private MockMvc mockMvc;
//
//    @Autowired
//    private ObjectMapper objectMapper;
//
//    @Test
//    void testCreateAndRetrieveProject() throws Exception {
//        List<ProjectDetail> details = Collections.emptyList();
//        List<ProjectTag> tags = Collections.emptyList();
//        Project project = new Project(null, "new-project-slug", "New Project", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//
//        String response = mockMvc.perform(post("/api/v1/projects")
//                        .contentType(MediaType.APPLICATION_JSON)
//                        .content(objectMapper.writeValueAsString(project)))
//                .andExpect(status().isCreated())
//                .andReturn()
//                .getResponse()
//                .getContentAsString();
//
//        Project createdProject = objectMapper.readValue(response, Project.class);
//
//        mockMvc.perform(get("/api/v1/projects/{id}", createdProject.getProjectId()))
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$.name").value("New Project"))
//                .andExpect(jsonPath("$.slug").value("new-project-slug"));
//    }
//
//    @Test
//    void testGetAllProjects() throws Exception {
//        mockMvc.perform(get("/api/v1/projects"))
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$").isArray());
//    }
//
//    @Test
//    void testGetProjectById_whenProjectExists() throws Exception {
//        // Insert a test project into the database before running this test
//        List<ProjectDetail> details = Collections.emptyList();
//        List<ProjectTag> tags = Collections.emptyList();
//        Project project = new Project(null, "test-project-slug", "Test Project", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//        String projectJson = objectMapper.writeValueAsString(project);
//
//        mockMvc.perform(post("/api/v1/projects")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(projectJson));
//
//        mockMvc.perform(get("/api/v1/projects/1")) // Assuming the ID is 1
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$.name").value("Test Project"))
//                .andExpect(jsonPath("$.slug").value("test-project"));
//    }
//
//    @Test
//    void testGetProjectById_whenProjectDoesNotExist() throws Exception {
//        mockMvc.perform(get("/api/v1/projects/{id}", 999))
//                .andExpect(status().isNotFound());
//    }
//
//    @Test
//    void testGetProjectDetailsBySlug() throws Exception {
//        String slug = "new-project-slug";
//
//        mockMvc.perform(get("/api/v1/projects/slug/{slug}/details", slug))
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$").isArray());
//    }
//
//    @Test
//    void testDeleteProject() throws Exception {
//        // Assuming a project with id 1 exists
//        Long projectId = 1L;
//
//        mockMvc.perform(delete("/api/v1/projects/{id}", projectId))
//                .andExpect(status().isOk())
//                .andExpect(content().string("Project has been deleted"));
//    }
//}
