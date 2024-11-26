// Unit tests for ExperienceController

package tiantian_li.me.controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import tiantian_li.me.entity.Company;
import tiantian_li.me.entity.Experience;
import tiantian_li.me.entity.Responsibility;
import tiantian_li.me.service.ExperienceService;

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

public class ExperienceControllerUnitTest {

    @InjectMocks
    private ExperienceController experienceController;

    @Mock
    private ExperienceService experienceService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSaveExperience() {
        Company company = new Company(1L, "Company Name", "Location", Collections.emptyList());
        List<Responsibility> responsibilities = Collections.emptyList();
        Experience experience = new Experience(1L, "Job Title", "Start Date", "End Date", company, responsibilities);

        given(experienceService.saveExperience(any(Experience.class))).willReturn(experience);

        ResponseEntity<Experience> response = experienceController.saveExperience(new Experience(null, "Job Title", "Start Date", "End Date", company, responsibilities));

        assertEquals(HttpStatus.CREATED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1L, response.getBody().getExperienceId());
        assertEquals("Job Title", response.getBody().getPosition());
        assertEquals("Start Date", response.getBody().getStartDate());
        verify(experienceService).saveExperience(any(Experience.class));
    }

    @Test
    public void testGetAllExperiences() {
        Company company = new Company(1L, "Company Name", "Location", Collections.emptyList());
        List<Responsibility> responsibilities = Collections.emptyList();
        Experience experience = new Experience(1L, "Job Title", "Start Date", "End Date", company, responsibilities);
        List<Experience> experiences = Collections.singletonList(experience);

        given(experienceService.fetchAllExperiences()).willReturn(experiences);

        ResponseEntity<List<Experience>> response = experienceController.getAllExperiences();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1, response.getBody().size());
        assertEquals(1L, response.getBody().get(0).getExperienceId());
        assertEquals("Job Title", response.getBody().get(0).getPosition());
        assertEquals("Start Date", response.getBody().get(0).getStartDate());
        verify(experienceService).fetchAllExperiences();
    }

    @Test
    public void testGetExperienceById() {
        Company company = new Company(1L, "Company Name", "Location", Collections.emptyList());
        List<Responsibility> responsibilities = Collections.emptyList();
        Experience experience = new Experience(1L, "Job Title", "Start Date", "End Date", company, responsibilities);

        given(experienceService.findExperienceById(1L)).willReturn(experience);

        ResponseEntity<Experience> response = experienceController.getExperienceById(1L);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1L, response.getBody().getExperienceId());
        assertEquals("Job Title", response.getBody().getPosition());
        assertEquals("Start Date", response.getBody().getStartDate());
        verify(experienceService).findExperienceById(1L);
    }

    @Test
    public void testUpdateExperienceById() {
        Company company = new Company(1L, "Company Name", "Location", Collections.emptyList());
        List<Responsibility> responsibilities = Collections.emptyList();
        Experience experience = new Experience(1L, "Job Title", "Start Date", "End Date", company, responsibilities);

        given(experienceService.updateExperienceById(1L, experience)).willReturn(experience);

        ResponseEntity<Experience> response = experienceController.updateExperienceById(1L, experience);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1L, response.getBody().getExperienceId());
        assertEquals("Job Title", response.getBody().getPosition());
        assertEquals("Start Date", response.getBody().getStartDate());
        verify(experienceService).updateExperienceById(1L, experience);
    }

    @Test
    public void testDeleteExperienceById() {
        given(experienceService.deleteExperienceById(1L)).willReturn("Experience deleted successfully");

        ResponseEntity<String> response = experienceController.deleteExperienceById(1L);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("Experience deleted successfully", response.getBody());
        verify(experienceService).deleteExperienceById(1L);
    }
}
