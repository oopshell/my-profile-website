package tiantian_li.me.service;

import tiantian_li.me.entity.Project;
import tiantian_li.me.entity.ProjectDetail;
import tiantian_li.me.entity.ProjectTag;
import java.util.List;

public interface ProjectService {

    Project saveProject(Project project);

    List<Project> fetchAllProjects();

    Project getProjectById(Long id);

    Project getProjectBySlug(String slug);

    Project updateProjectById(Long id, Project project, List<ProjectDetail> details, List<ProjectTag> tags);

    String deleteProjectById(Long id);

    Project addDetailsToProject(Long projectId, List<ProjectDetail> details);

    Project addTagsToProject(Long projectId, List<ProjectTag> tags);
}
