package tiantian_li.me.service;

import tiantian_li.me.entity.Company;
import tiantian_li.me.entity.Experience;
import tiantian_li.me.entity.Responsibility;
import tiantian_li.me.repository.CompanyRepository;
import tiantian_li.me.repository.ExperienceRepository;
import tiantian_li.me.repository.ResponsibilityRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class ExperienceServiceImp implements ExperienceService {

    private final ExperienceRepository experienceRepository;
    private final CompanyRepository companyRepository;
    private final ResponsibilityRepository responsibilityRepository;

    @Autowired
    public ExperienceServiceImp(ExperienceRepository experienceRepository, CompanyRepository companyRepository, ResponsibilityRepository responsibilityRepository) {
        this.experienceRepository = experienceRepository;
        this.companyRepository = companyRepository;
        this.responsibilityRepository = responsibilityRepository;
    }

    @Override
    public Experience saveExperience(Experience experience) {
        // Ensure Company exists or associate an existing Company with Experience
        if (experience.getCompany() != null) {
            Company company = companyRepository.findById(experience.getCompany().getCompanyId())
                    .orElseGet(() -> companyRepository.save(experience.getCompany()));
            experience.setCompany(company);
        }
        return experienceRepository.save(experience);
    }

    @Override
    public List<Experience> fetchAllExperiences() {
        return experienceRepository.findAll();
    }

    @Override
    public Experience findExperienceById(Long id) {
        return experienceRepository.findById(id).orElse(null);
    }

    @Override
    public Experience updateExperienceById(Long id, Experience experienceUpdate) {
        Optional<Experience> experienceOpt = experienceRepository.findById(id);
        if (experienceOpt.isPresent()) {
            Experience originalExperience = experienceOpt.get();
            if (experienceUpdate.getCompany() != null) {
                Company company = companyRepository.findById(experienceUpdate.getCompany().getCompanyId())
                        .orElseGet(() -> companyRepository.save(experienceUpdate.getCompany()));
                originalExperience.setCompany(company);
            }
            if (Objects.nonNull(experienceUpdate.getPosition())) {
                originalExperience.setPosition(experienceUpdate.getPosition());
            }
            if (Objects.nonNull(experienceUpdate.getStartDate())) {
                originalExperience.setStartDate(experienceUpdate.getStartDate());
            }
            if (Objects.nonNull(experienceUpdate.getEndDate())) {
                originalExperience.setEndDate(experienceUpdate.getEndDate());
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

    @Override
    public Company saveCompany(Company company) {
        return companyRepository.save(company);
    }

    @Override
    public Responsibility addResponsibilityToExperience(Long experienceId, Responsibility responsibility) {
        Optional<Experience> experienceOpt = experienceRepository.findById(experienceId);
        if (experienceOpt.isPresent()) {
            responsibility.setExperience(experienceOpt.get());
            return responsibilityRepository.save(responsibility);
        }
        return null;
    }

    @Override
    public List<Responsibility> findResponsibilitiesByExperienceId(Long experienceId) {
        return responsibilityRepository.findResponsibilitiesByExperienceId(experienceId);
    }
}
