package tiantian_li.me.service;

import tiantian_li.me.entity.Project;
import tiantian_li.me.entity.ProjectDetail;
import tiantian_li.me.entity.ProjectTag;
import java.util.List;

public interface ProjectService {

    Project saveProject(Project project);

    List<Project> findAllProjects();

    Project findProjectById(Long id);

    Project findProjectBySlug(String slug);

    List<ProjectDetail> findDetailsByProjectId(Long id);

    List<ProjectDetail> findDetailsByProjectSlug(String slug);

    List<ProjectTag> findTagsByProjectId(Long id);

    List<ProjectTag> findTagsByProjectSlug(String slug);

    List<Project> findProjectsByTagName(String tagName);

    Project updateProjectById(Long id, Project project, List<ProjectDetail> details, List<ProjectTag> tags);

    String deleteProjectById(Long id);

    Project addDetailsToProject(Long projectId, List<ProjectDetail> details);

    Project addTagsToProject(Long projectId, List<ProjectTag> tags);
}
