package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import tiantian_li.me.entity.ProjectTag;

import java.util.List;


@Repository
public interface ProjectTagRepository extends JpaRepository<ProjectTag, Long> {
    @Query("SELECT t FROM ProjectTag t JOIN t.projects p WHERE p.id = :projectId")
    List<ProjectTag> findTagsByProjectId(@Param("projectId") Long projectId);
}
