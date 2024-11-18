package tiantian_li.me.service;

import tiantian_li.me.entity.Company;
import tiantian_li.me.entity.Experience;
import tiantian_li.me.entity.Responsibility;

import java.util.List;

public interface ExperienceService {

        Experience saveExperience(Experience experience);

        List<Experience> fetchAllExperiences();

        Experience findExperienceById(Long id);

        Experience updateExperienceById(Long id, Experience experience);

        String deleteExperienceById(Long id);

        Company saveCompany(Company company);

        Responsibility addResponsibilityToExperience(Long experienceId, Responsibility responsibility);

        List<Responsibility> findResponsibilitiesByExperienceId(Long experienceId);
}
