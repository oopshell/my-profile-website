package tiantian_li.me.service;

import tiantian_li.me.entity.ProjectTag;
import tiantian_li.me.repository.ProjectTagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ProjectTagServiceImp implements ProjectTagService {

    @Autowired
    private ProjectTagRepository projectTagRepository;

    @Override
    public ProjectTag saveProjectTag(ProjectTag tag) {
        return projectTagRepository.save(tag);
    }

    @Override
    public List<ProjectTag> fetchAllProjectTags() {
        return projectTagRepository.findAll();
    }

    @Override
    public ProjectTag getProjectTagById(Long id) {
        return projectTagRepository.findById(id).orElse(null);
    }

    @Override
    public ProjectTag updateProjectTagById(Long id, ProjectTag tagUpdate) {
        Optional<ProjectTag> tagOpt = projectTagRepository.findById(id);
        if (tagOpt.isPresent()) {
            ProjectTag tag = tagOpt.get();
            tag.setTagName(tagUpdate.getTagName());
            return projectTagRepository.save(tag);
        }
        return null;
    }

    @Override
    public String deleteProjectTagById(Long id) {
        if (projectTagRepository.existsById(id)) {
            projectTagRepository.deleteById(id);
            return "Project tag has been deleted";
        }
        return "Project tag not found";
    }
}
