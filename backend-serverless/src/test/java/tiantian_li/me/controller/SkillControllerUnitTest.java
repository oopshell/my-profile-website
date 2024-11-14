package tiantian_li.me.controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import tiantian_li.me.entity.Skill;
import tiantian_li.me.entity.SkillCategory;
import tiantian_li.me.service.SkillService;

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

public class SkillControllerUnitTest {

    @InjectMocks
    private SkillController skillController;

    @Mock
    private SkillService skillService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSaveSkill() {
        SkillCategory category = new SkillCategory(1L, "Programming", Collections.emptyList());
        Skill skill = new Skill(1L, "Java", category);

        given(skillService.saveSkill(any(Skill.class))).willReturn(skill);

        ResponseEntity<Skill> response = skillController.createSkill(new Skill(null, "Java", category));

        assertEquals(HttpStatus.CREATED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1L, response.getBody().getSkillId());
        assertEquals("Java", response.getBody().getSkillName());
        verify(skillService).saveSkill(any(Skill.class));
    }

    @Test
    public void testGetAllSkills() {
        SkillCategory category = new SkillCategory(1L, "Programming", Collections.emptyList());
        Skill skill = new Skill(1L, "Java", category);
        List<Skill> allSkills = Collections.singletonList(skill);

        given(skillService.fetchAllSkills()).willReturn(allSkills);

        ResponseEntity<List<Skill>> response = skillController.getAllSkills();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1, response.getBody().size());
        verify(skillService).fetchAllSkills();
    }

    @Test
    public void testGetSkillById() {
        SkillCategory category = new SkillCategory(1L, "Programming", Collections.emptyList());
        Skill skill = new Skill(1L, "Java", category);

        given(skillService.findSkillById(1L)).willReturn(skill);

        ResponseEntity<Skill> response = skillController.getSkillById(1L);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1L, response.getBody().getSkillId());
        assertEquals("Java", response.getBody().getSkillName());
        verify(skillService).findSkillById(1L);
    }

    @Test
    public void testUpdateSkill() {
        SkillCategory category = new SkillCategory(1L, "Programming", Collections.emptyList());
        Skill skill = new Skill(1L, "Java", category);

        given(skillService.updateSkillById(eq(1L), any())).willReturn(skill);

        ResponseEntity<Skill> response = skillController.updateSkillById(1L, new Skill(1L, "Java", category));

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1L, response.getBody().getSkillId());
        assertEquals("Java", response.getBody().getSkillName());
        verify(skillService).updateSkillById(eq(1L), any(Skill.class));
    }

    @Test
    public void testDeleteSkill() {
        given(skillService.deleteSkillById(1L)).willReturn("Skill deleted successfully");

        ResponseEntity<String> response = skillController.deleteSkillById(1L);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("Skill deleted successfully", response.getBody());
        verify(skillService).deleteSkillById(1L);
    }
}
