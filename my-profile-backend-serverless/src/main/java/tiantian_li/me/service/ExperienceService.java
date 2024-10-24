package tiantian_li.me.service;

import tiantian_li.me.entity.Experience;
import java.util.List;

public interface ExperienceService {

        Experience saveExperience(Experience experience);

        List<Experience> fetchAllExperiences();

        Experience getExperienceById(Long id);

        Experience updateExperienceById(Long id, Experience experience);

        String deleteExperienceById(Long id);
}
