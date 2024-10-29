package tiantian_li.me.my_profile.service;

import tiantian_li.me.my_profile.entity.Project;
import java.util.List;

public interface ProjectService {

            Project saveProject(Project project);

            List<Project> fetchAllProjects();

            Project getProjectById(Long id);

            Project updateProjectById(Long id, Project project);

            String deleteProjectById(Long id);
}
