package tiantian_li.me.service;

import tiantian_li.me.entity.ProjectTag;
import java.util.List;

public interface ProjectTagService {

    ProjectTag saveProjectTag(ProjectTag tag);

    List<ProjectTag> fetchAllProjectTags();

    ProjectTag getProjectTagById(Long id);

    ProjectTag updateProjectTagById(Long id, ProjectTag tag);

    String deleteProjectTagById(Long id);
}
