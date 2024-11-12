package tiantian_li.me.service;

import tiantian_li.me.entity.Experience;
import tiantian_li.me.entity.Responsibility;
import tiantian_li.me.repository.ExperienceRepository;
import tiantian_li.me.repository.ResponsibilityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ResponsibilityServiceImp implements ResponsibilityService {

    @Autowired
    private ResponsibilityRepository responsibilityRepository;

    @Autowired
    private ExperienceRepository experienceRepository;

    @Override
    public Responsibility saveResponsibility(Responsibility responsibility) {
        return responsibilityRepository.save(responsibility);
    }

    @Override
    public List<Responsibility> fetchAllResponsibilities() {
        return responsibilityRepository.findAll();
    }

    @Override
    public Responsibility getResponsibilityById(Long id) {
        return responsibilityRepository.findById(id).orElse(null);
    }

    @Override
    public Responsibility updateResponsibilityById(Long id, Responsibility responsibilityUpdate) {
        Optional<Responsibility> responsibilityOpt = responsibilityRepository.findById(id);
        if (responsibilityOpt.isPresent()) {
            Responsibility originalResponsibility = responsibilityOpt.get();
            if (responsibilityUpdate.getTitle() != null) {
                originalResponsibility.setTitle(responsibilityUpdate.getTitle());
            }
            if (responsibilityUpdate.getDescription() != null) {
                originalResponsibility.setDescription(responsibilityUpdate.getDescription());
            }
            return responsibilityRepository.save(originalResponsibility);
        }
        return null;
    }

    @Override
    public String deleteResponsibilityById(Long id) {
        if (responsibilityRepository.findById(id).isPresent()) {
            responsibilityRepository.deleteById(id);
            return "Responsibility deleted successfully";
        }
        return "No such responsibility in the database";
    }

    @Override
    public List<Responsibility> fetchResponsibilitiesByExperienceId(Long experienceId) {
        Optional<Experience> experienceOpt = experienceRepository.findById(experienceId);
        return experienceOpt.map(Experience::getResponsibilities).orElse(null);
    }
}
