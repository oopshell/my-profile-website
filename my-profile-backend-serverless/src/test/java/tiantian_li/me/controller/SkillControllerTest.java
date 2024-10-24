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
import tiantian_li.me.my_profile.entity.Skill;
import tiantian_li.me.my_profile.service.SkillService;

import java.util.Collections;
import java.util.List;

@WebMvcTest(SkillController.class)
public class SkillControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private SkillService skillService;

    @Test
    public void testSaveSkill() throws Exception {
        Skill skill = new Skill(1L, "Programming Languages", "Java, Python, C++");

        given(skillService.saveSkill(Mockito.any(Skill.class))).willReturn(skill);

        String skillJson = "{\"category\":\"Programming Languages\",\"items\":\"Java, Python, C++\"}";

        mockMvc.perform(post("/api/v1/skill")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(skillJson))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.category", is("Programming Languages")))
                .andExpect(jsonPath("$.items", is("Java, Python, C++")));
    }

    @Test
    public void testGetAllSkills() throws Exception {
        Skill skill = new Skill(1L, "Programming Languages", "Java, Python, C++");
        List<Skill> allSkills = Collections.singletonList(skill);

        given(skillService.fetchAllSkills()).willReturn(allSkills);

        mockMvc.perform(get("/api/v1/skill"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id", is(1)))
                .andExpect(jsonPath("$[0].category", is("Programming Languages")))
                .andExpect(jsonPath("$[0].items", is("Java, Python, C++")));
    }

    @Test
    public void testGetSkillById() throws Exception {
        Skill skill = new Skill(1L, "Programming Languages", "Java, Python, C++");

        given(skillService.getSkillById(1L)).willReturn(skill);

        mockMvc.perform(get("/api/v1/skill/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.category", is("Programming Languages")))
                .andExpect(jsonPath("$.items", is("Java, Python, C++")));
    }

    @Test
    public void testUpdateSkill() throws Exception {
        Skill skill = new Skill(1L, "Programming Languages", "Java, Python, C++");

        given(skillService.updateSkillById(Mockito.eq(1L), Mockito.any(Skill.class))).willReturn(skill);

        String skillJson = "{\"category\":\"Programming Languages\",\"items\":\"Java, Python, C++\"}";

        mockMvc.perform(put("/api/v1/skill/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(skillJson))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id", is(1)))
                .andExpect(jsonPath("$.category", is("Programming Languages")))
                .andExpect(jsonPath("$.items", is("Java, Python, C++")));
    }

    @Test
    public void testDeleteSkill() throws Exception {
        given(skillService.deleteSkillById(1L)).willReturn("Skill deleted successfully");

        mockMvc.perform(delete("/api/v1/skill/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", is("Skill deleted successfully")));
    }
}
