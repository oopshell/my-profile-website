package tiantian_li.me.service;

import tiantian_li.me.entity.Project;
import tiantian_li.me.entity.ProjectDetail;
import tiantian_li.me.entity.ProjectTag;
import tiantian_li.me.repository.ProjectRepository;
import tiantian_li.me.repository.ProjectDetailRepository;
import tiantian_li.me.repository.ProjectTagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class ProjectServiceImp implements ProjectService {

    private final ProjectRepository projectRepository;
    private final ProjectDetailRepository projectDetailRepository;
    private final ProjectTagRepository projectTagRepository;

    @Autowired
    public ProjectServiceImp(ProjectRepository projectRepository,
                             ProjectTagRepository projectTagRepository,
                             ProjectDetailRepository projectDetailRepository) {
        this.projectRepository = projectRepository;
        this.projectTagRepository = projectTagRepository;
        this.projectDetailRepository = projectDetailRepository;
    }

    @Override
    public Project saveProject(Project project) {
        return projectRepository.save(project);
    }

    @Override
    public List<Project> findAllProjects() {
        return projectRepository.findAll();
    }

    @Override
    public Project findProjectById(Long id) {
        return projectRepository.findById(id).orElse(null);
    }

    @Override
    public Project findProjectBySlug(String slug) {
        return projectRepository.findBySlug(slug).orElse(null);
    }

    @Override
    public List<Project> findProjectsByTagName(String tagName) {
        return projectRepository.findProjectsByTagName(tagName);
    }

    @Override
    public List<ProjectDetail> findDetailsByProjectId(Long id) {
        return projectDetailRepository.findDetailsByProjectId(id);
    }

    @Override
    public List<ProjectDetail> findDetailsByProjectSlug(String slug) {
        return projectDetailRepository.findDetailsByProjectSlug(slug);
    }

    @Override
    public List<ProjectTag> findAllTags() {
        return projectTagRepository.findAll();
    }

    @Override
    public List<ProjectTag> findTagsByProjectId(Long id) {
        return projectTagRepository.findTagsByProjectId(id);
    }

    @Override
    public List<ProjectTag> findTagsByProjectSlug(String slug) {
        return projectTagRepository.findTagsByProjectSlug(slug);
    }

    @Override
    public Project updateProjectById(Long id, Project projectUpdate, List<ProjectDetail> details, List<ProjectTag> tags) {
        Optional<Project> project = projectRepository.findById(id);
        if (project.isPresent()) {
            Project existingProject = project.get();

            if (Objects.nonNull(projectUpdate.getName())) {
                existingProject.setName(projectUpdate.getName());
            }
            if (Objects.nonNull(projectUpdate.getSlug())) {
                existingProject.setSlug(projectUpdate.getSlug());
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
