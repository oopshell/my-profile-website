package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.ProjectDetail;

import java.util.List;

@Repository
public interface ProjectDetailRepository extends JpaRepository<ProjectDetail, Long> {
    // Custom method to find all details for a specific project
    List<ProjectDetail> findByProjectId(Long projectId);
}
