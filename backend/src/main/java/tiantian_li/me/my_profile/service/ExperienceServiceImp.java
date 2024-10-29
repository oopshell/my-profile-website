package tiantian_li.me.my_profile.service;

import tiantian_li.me.my_profile.entity.Experience;
import tiantian_li.me.my_profile.repository.ExperienceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class ExperienceServiceImp implements ExperienceService{

    @Autowired
    private ExperienceRepository experienceRepository;

    @Override
    public Experience saveExperience(Experience experience) {
        return experienceRepository.save(experience);
    }

    @Override
    public List<Experience> fetchAllExperiences() {
        List<Experience> allExperiences = experienceRepository.findAll();
        return allExperiences;
    }

    @Override
    public Experience getExperienceById(Long id) {
        Optional<Experience> experience = experienceRepository.findById(id);
        if (experience.isPresent()) {
            return experience.get();
        }
        return null;
    }

    @Override
    public Experience updateExperienceById(Long id, Experience experienceUpdate) {
        Optional<Experience> experience = experienceRepository.findById(id);
        if (experience.isPresent()) {
            Experience originalExperience = experience.get();
            if (Objects.nonNull(experienceUpdate.getCompanyName()) && !"".equalsIgnoreCase(experienceUpdate.getCompanyName())) {
                originalExperience.setCompanyName(experienceUpdate.getCompanyName());
            }
            if (Objects.nonNull(experienceUpdate.getJobTitle()) && !"".equalsIgnoreCase(experienceUpdate.getJobTitle())) {
                originalExperience.setJobTitle(experienceUpdate.getJobTitle());
            }
            if (Objects.nonNull(experienceUpdate.getDateRange()) && !"".equalsIgnoreCase(experienceUpdate.getDateRange())) {
                originalExperience.setDateRange(experienceUpdate.getDateRange());
            }
            if (Objects.nonNull(experienceUpdate.getDescription()) && !"".equalsIgnoreCase(experienceUpdate.getDescription())) {
                originalExperience.setDescription(experienceUpdate.getDescription());
            }
            if (Objects.nonNull(experienceUpdate.getLocation()) && !"".equalsIgnoreCase(experienceUpdate.getLocation())) {
                originalExperience.setLocation(experienceUpdate.getLocation());
            }
            return experienceRepository.save(originalExperience);
        }
        return null;
    }

    @Override
    public String deleteExperienceById(Long id) {
        if (experienceRepository.findById(id).isPresent()) {
            experienceRepository.deleteById(id);
            return "Experience deleted successfully";
        }
        return "No such experience in the database";
    }
}
