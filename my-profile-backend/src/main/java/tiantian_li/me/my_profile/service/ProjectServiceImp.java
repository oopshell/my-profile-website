package tiantian_li.me.my_profile.service;

import tiantian_li.me.my_profile.entity.Project;
import tiantian_li.me.my_profile.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class ProjectServiceImp implements ProjectService{

    @Autowired
    private ProjectRepository projectRepository;

    @Override
    public Project saveProject(Project project) {
        return projectRepository.save(project);
    }

    @Override
    public List<Project> fetchAllProjects() {
        List<Project> allProjects = projectRepository.findAll();
        return allProjects;
    }

    @Override
    public Project getProjectById(Long id) {
        Optional<Project> project = projectRepository.findById(id);
        if (project.isPresent()) {
            return project.get();
        }
        return null;
    }

    @Override
    public Project updateProjectById(Long id, Project projectUpdate) {
        Optional<Project> project = projectRepository.findById(id);
        if (project.isPresent()) {
            Project originalProject = project.get();
            if (Objects.nonNull(projectUpdate.getName()) && !"".equalsIgnoreCase(projectUpdate.getName())) {
                originalProject.setName(projectUpdate.getName());
            }
            if (Objects.nonNull(projectUpdate.getDescription()) && !"".equalsIgnoreCase(projectUpdate.getDescription())) {
                originalProject.setDescription(projectUpdate.getDescription());
            }
            if (Objects.nonNull(projectUpdate.getDetail()) && !"".equalsIgnoreCase(projectUpdate.getDetail())) {
                originalProject.setDetail(projectUpdate.getDetail());
            }
            if (Objects.nonNull(projectUpdate.getLink()) && !"".equalsIgnoreCase(projectUpdate.getLink())) {
                originalProject.setLink(projectUpdate.getLink());
            }
            return projectRepository.save(originalProject);
        }
        return null;
    }

    @Override
    public String deleteProjectById(Long id) {
        Optional<Project> project = projectRepository.findById(id);
        if (project.isPresent()) {
            projectRepository.delete(project.get());
            return "Project has been deleted";
        }
        return "Project not found";
    }
}
