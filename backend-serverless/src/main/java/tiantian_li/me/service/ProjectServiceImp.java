package tiantian_li.me.service;

import tiantian_li.me.entity.Project;
import tiantian_li.me.entity.ProjectDetail;
import tiantian_li.me.entity.ProjectTag;
import tiantian_li.me.repository.ProjectRepository;
import tiantian_li.me.repository.ProjectDetailRepository;
import tiantian_li.me.repository.ProjectTagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class ProjectServiceImp implements ProjectService {

    @Autowired
    private ProjectRepository projectRepository;

    @Autowired
    private ProjectDetailRepository projectDetailRepository;

    @Autowired
    private ProjectTagRepository projectTagRepository;

    @Override
    public Project saveProject(Project project) {
        return projectRepository.save(project);
    }

    @Override
    public List<Project> fetchAllProjects() {
        return projectRepository.findAll();
    }

    @Override
    public Project getProjectById(Long id) {
        return projectRepository.findById(id).orElse(null);
    }

    @Override
    public Project getProjectBySlug(String slug) {
        return projectRepository.findBySlug(slug).orElse(null);
    }

    @Override
    public Project updateProjectById(Long id, Project projectUpdate, List<ProjectDetail> details, List<ProjectTag> tags) {
        Optional<Project> project = projectRepository.findById(id);
        if (project.isPresent()) {
            Project existingProject = project.get();

            if (Objects.nonNull(projectUpdate.getSlug())) {
                existingProject.setSlug(projectUpdate.getSlug());
            }

            if (Objects.nonNull(projectUpdate.getName())) {
                existingProject.setName(projectUpdate.getName());
            }
            if (Objects.nonNull(projectUpdate.getDescription())) {
                existingProject.setDescription(projectUpdate.getDescription());
            }
            if (Objects.nonNull(projectUpdate.getGitUrl())) {
                existingProject.setGitUrl(projectUpdate.getGitUrl());
            }
            if (Objects.nonNull(projectUpdate.getPreviewUrl())) {
                existingProject.setPreviewUrl(projectUpdate.getPreviewUrl());
            }

            // Update ProjectDetails
            if (details != null) {
                details.forEach(detail -> detail.setProject(existingProject));
                projectDetailRepository.saveAll(details);
            }

            // Update ProjectTags
            if (tags != null) {
                existingProject.setTags(tags);
                projectTagRepository.saveAll(tags);
            }

            return projectRepository.save(existingProject);
        }
        return null;
    }

    @Override
    public String deleteProjectById(Long id) {
        if (projectRepository.existsById(id)) {
            projectRepository.deleteById(id);
            return "Project has been deleted";
        }
        return "Project not found";
    }

    @Override
    public Project addDetailsToProject(Long projectId, List<ProjectDetail> details) {
        Optional<Project> projectOpt = projectRepository.findById(projectId);
        if (projectOpt.isPresent()) {
            Project project = projectOpt.get();
            details.forEach(detail -> detail.setProject(project));
            projectDetailRepository.saveAll(details);
            return project;
        }
        return null;
    }

    @Override
    public Project addTagsToProject(Long projectId, List<ProjectTag> tags) {
        Optional<Project> projectOpt = projectRepository.findById(projectId);
        if (projectOpt.isPresent()) {
            Project project = projectOpt.get();
            project.setTags(tags);
            projectRepository.save(project);
            return project;
        }
        return null;
    }
}
