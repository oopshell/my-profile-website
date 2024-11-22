package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import tiantian_li.me.entity.ProjectDetail;

import java.util.List;

@Repository
public interface ProjectDetailRepository extends JpaRepository<ProjectDetail, Long> {
    @Query("SELECT d FROM ProjectDetail d WHERE d.project.id = :projectId")
    List<ProjectDetail> findDetailsByProjectId(@Param("projectId") Long projectId);

    @Query("SELECT d FROM ProjectDetail d WHERE d.project.slug = :slug")
    List<ProjectDetail> findDetailsByProjectSlug(@Param("slug") String slug);
}
