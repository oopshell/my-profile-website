//package tiantian_li.me.controller;
//
//import static org.mockito.Mockito.*;
//import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
//import static org.junit.jupiter.api.Assertions.assertEquals;
//import static org.junit.jupiter.api.Assertions.assertNotNull;
//import static org.mockito.ArgumentMatchers.any;
//import static org.mockito.ArgumentMatchers.eq;
//import static org.mockito.BDDMockito.given;
//import static org.mockito.Mockito.verify;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.InjectMocks;
//import org.mockito.Mock;
//import org.mockito.MockitoAnnotations;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.MediaType;
//import org.springframework.test.web.servlet.MockMvc;
//import org.springframework.test.web.servlet.setup.MockMvcBuilders;
//
//import tiantian_li.me.entity.Project;
//import tiantian_li.me.entity.ProjectDetail;
//import tiantian_li.me.entity.ProjectTag;
//import tiantian_li.me.service.ProjectService;
//
//import java.util.Collections;
//import java.util.List;
//import java.util.Optional;
//
//class ProjectControllerUnitTest {
//
//    @InjectMocks
//    private ProjectController projectController;
//
//    @Mock
//    private ProjectService projectService;
//
//    private final ObjectMapper objectMapper = new ObjectMapper();
//
//    private MockMvc mockMvc;
//
//    @BeforeEach
//    void setUp() {
//        MockitoAnnotations.openMocks(this);
//        mockMvc = MockMvcBuilders.standaloneSetup(projectController).build();
//    }
//
//    @Test
//    void testCreateProject() throws Exception {
//        List<ProjectDetail> details = Collections.emptyList();
//        List<ProjectTag> tags = Collections.emptyList();
//        Project project = new Project(null, "new-project-slug", "New Project", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//        Project savedProject = new Project(1L, "new-project-slug", "New Project", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//
//        when(projectService.saveProject(any(Project.class))).thenReturn(savedProject);
//
//        mockMvc.perform(post("/api/v1/projects")
//                        .contentType(MediaType.APPLICATION_JSON)
//                        .content(objectMapper.writeValueAsString(project)))
//                .andExpect(status().isCreated())
//                .andExpect(jsonPath("$.projectId").value(1L))
//                .andExpect(jsonPath("$.name").value("New Project"))
//                .andExpect(jsonPath("$.slug").value("new-project-slug"));
//
//        verify(projectService, times(1)).saveProject(any(Project.class));
//    }
//
//    @Test
//    void testGetAllProjects() throws Exception {
//        List<ProjectDetail> details = Collections.emptyList();
//        List<ProjectTag> tags = Collections.emptyList();
//        Project project1 = new Project(1L, "project-1-slug", "Project 1", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//        Project project2 = new Project(2L, "project-2-slug", "Project 2", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//
//        when(projectService.findAllProjects()).thenReturn(List.of(project1, project2));
//
//        mockMvc.perform(get("/api/v1/projects"))
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$[0].name").value("Project 1"))
//                .andExpect(jsonPath("$[1].name").value("Project 2"));
//
//        verify(projectService, times(1)).findAllProjects();
//    }
//
//    @Test
//    void testGetProjectById_whenProjectExists() throws Exception {
//        List<ProjectDetail> details = Collections.emptyList();
//        List<ProjectTag> tags = Collections.emptyList();
//        Project project = new Project(1L, "existing-project", "Existing Project", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//
//        when(projectService.findProjectById(1L)).thenReturn(project);
//
//        mockMvc.perform(get("/api/v1/projects/{id}", 1L))
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$.projectId").value(1L))
//                .andExpect(jsonPath("$.name").value("Existing Project"))
//                .andExpect(jsonPath("$.slug").value("existing-project"));
//    }
//
//    @Test
//    void testGetProjectById_whenProjectDoesNotExist() throws Exception {
//        when(projectService.findProjectById(1L)).thenReturn(null);
//
//        mockMvc.perform(get("/api/v1/projects/{id}", 1L))
//                .andExpect(status().isNotFound());
//    }
//
//    @Test
//    void testGetProjectById() throws Exception {
//        List<ProjectDetail> details = Collections.emptyList();
//        List<ProjectTag> tags = Collections.emptyList();
//        Long projectId = 1L;
//        Project project = new Project(projectId, "project-1-slug", "Project 1", "Short Description", "Detailed Description", "http://project-link.com", details, tags);
//
//        when(projectService.findProjectById(projectId)).thenReturn(project);
//
//        mockMvc.perform(get("/api/v1/projects/{id}", projectId))
//                .andExpect(status().isOk())
//                .andExpect(jsonPath("$.projectId").value(projectId))
//                .andExpect(jsonPath("$.name").value("Project 1"))
//                .andExpect(jsonPath("$.slug").value("project-1-slug"));
//
//        verify(projectService, times(1)).findProjectById(projectId);
//    }
//
//    @Test
//    void testDeleteProjectById() throws Exception {
//        Long projectId = 1L;
//        when(projectService.deleteProjectById(projectId)).thenReturn("Project has been deleted");
//
//        mockMvc.perform(delete("/api/v1/projects/{id}", projectId))
//                .andExpect(status().isOk())
//                .andExpect(content().string("Project has been deleted"));
//
//        verify(projectService, times(1)).deleteProjectById(projectId);
//    }
//}
