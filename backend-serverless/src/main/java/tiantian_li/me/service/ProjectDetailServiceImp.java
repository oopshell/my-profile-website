package tiantian_li.me.service;

import tiantian_li.me.entity.ProjectDetail;
import tiantian_li.me.repository.ProjectDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ProjectDetailServiceImp implements ProjectDetailService {

    @Autowired
    private ProjectDetailRepository projectDetailRepository;

    @Override
    public ProjectDetail saveProjectDetail(ProjectDetail detail) {
        return projectDetailRepository.save(detail);
    }

    @Override
    public List<ProjectDetail> fetchAllProjectDetails() {
        return projectDetailRepository.findAll();
    }

    @Override
    public ProjectDetail getProjectDetailById(Long id) {
        return projectDetailRepository.findById(id).orElse(null);
    }

    @Override
    public ProjectDetail updateProjectDetailById(Long id, ProjectDetail detailUpdate) {
        Optional<ProjectDetail> detailOpt = projectDetailRepository.findById(id);
        if (detailOpt.isPresent()) {
            ProjectDetail detail = detailOpt.get();
            detail.setTitle(detailUpdate.getTitle());
            detail.setDescription(detailUpdate.getDescription());
            return projectDetailRepository.save(detail);
        }
        return null;
    }

    @Override
    public String deleteProjectDetailById(Long id) {
        if (projectDetailRepository.existsById(id)) {
            projectDetailRepository.deleteById(id);
            return "Project detail has been deleted";
        }
        return "Project detail not found";
    }
}
