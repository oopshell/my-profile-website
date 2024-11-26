package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import tiantian_li.me.entity.Project;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long> {
    Optional<Project> findBySlug(String slug);

    @Query("SELECT p FROM Project p JOIN p.tags t WHERE t.tagName = :tagName")
    List<Project> findProjectsByTagName(@Param("tagName") String tagName);
}
