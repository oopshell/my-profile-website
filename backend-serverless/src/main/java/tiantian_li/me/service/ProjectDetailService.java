package tiantian_li.me.service;

import tiantian_li.me.entity.ProjectDetail;
import java.util.List;

public interface ProjectDetailService {

    ProjectDetail saveProjectDetail(ProjectDetail detail);

    List<ProjectDetail> fetchAllProjectDetails();

    ProjectDetail getProjectDetailById(Long id);

    ProjectDetail updateProjectDetailById(Long id, ProjectDetail detail);

    String deleteProjectDetailById(Long id);
}
