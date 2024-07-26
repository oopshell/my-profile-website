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
import tiantian_li.me.my_profile.entity.Experience;
import tiantian_li.me.my_profile.service.ExperienceService;

import java.util.Collections;
import java.util.List;

@WebMvcTest(ExperienceController.class)
public class ExperienceControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private ExperienceService experienceService;

    @Test
    public void testSaveExperience() throws Exception {
        Experience experience = new Experience(1L, "Tech Company", "Software Engineer", "2020-2023", "Developed software solutions.", "New York");

        given(experienceService.saveExperience(Mockito.any(Experience.class))).willReturn(experience);

        String experienceJson = "{\"companyName\":\"Tech Company\",\"jobTitle\":\"Software Engineer\",\"dateRange\":\"2020-2023\",\"description\":\"Developed software solutions.\",\"location\":\"New York\"}";

        mockMvc.perform(post("/api/v1/experience")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(experienceJson))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.companyName", is("Tech Company")))
                .andExpect(jsonPath("$.jobTitle", is("Software Engineer")))
                .andExpect(jsonPath("$.dateRange", is("2020-2023")))
                .andExpect(jsonPath("$.description", is("Developed software solutions.")))
                .andExpect(jsonPath("$.location", is("New York")));
    }

    @Test
    public void testGetAllExperiences() throws Exception {
        Experience experience = new Experience(1L, "Tech Company", "Software Engineer", "2020-2023", "Developed software solutions.", "New York");
        List<Experience> allExperiences = Collections.singletonList(experience);

        given(experienceService.fetchAllExperiences()).willReturn(allExperiences);

        mockMvc.perform(get("/api/v1/experience"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id", is(1)))
                .andExpect(jsonPath("$[0].companyName", is("Tech Company")))
                .andExpect(jsonPath("$[0].jobTitle", is("Software Engineer")))
                .andExpect(jsonPath("$[0].dateRange", is("2020-2023")))
                .andExpect(jsonPath("$[0].description", is("Developed software solutions.")))
                .andExpect(jsonPath("$[0].location", is("New York")));
    }

    @Test
    public void testGetExperienceById() throws Exception {
        Experience experience = new Experience(1L, "Tech Company", "Software Engineer", "2020-2023", "Developed software solutions.", "New York");

        given(experienceService.getExperienceById(1L)).willReturn(experience);

        mockMvc.perform(get("/api/v1/experience/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.companyName", is("Tech Company")))
                .andExpect(jsonPath("$.jobTitle", is("Software Engineer")))
                .andExpect(jsonPath("$.dateRange", is("2020-2023")))
                .andExpect(jsonPath("$.description", is("Developed software solutions.")))
                .andExpect(jsonPath("$.location", is("New York")));
    }

    @Test
    public void testUpdateExperience() throws Exception {
        Experience experience = new Experience(1L, "Tech Company", "Senior Software Engineer", "2020-2023", "Developed software solutions.", "New York");

        given(experienceService.updateExperienceById(Mockito.eq(1L), Mockito.any(Experience.class))).willReturn(experience);

        String experienceJson = "{\"companyName\":\"Tech Company\",\"jobTitle\":\"Senior Software Engineer\",\"dateRange\":\"2020-2023\",\"description\":\"Developed software solutions.\",\"location\":\"New York\"}";

        mockMvc.perform(put("/api/v1/experience/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(experienceJson))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.companyName", is("Tech Company")))
                .andExpect(jsonPath("$.jobTitle", is("Senior Software Engineer")))
                .andExpect(jsonPath("$.dateRange", is("2020-2023")))
                .andExpect(jsonPath("$.description", is("Developed software solutions.")))
                .andExpect(jsonPath("$.location", is("New York")));
    }

    @Test
    public void testDeleteExperience() throws Exception {
        given(experienceService.deleteExperienceById(1L)).willReturn("Experience deleted successfully");

        mockMvc.perform(delete("/api/v1/experience/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", is("Experience deleted successfully")));
    }
}
