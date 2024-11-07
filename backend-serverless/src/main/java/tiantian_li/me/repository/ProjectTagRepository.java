package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.ProjectTag;

import java.util.Optional;

@Repository
public interface ProjectTagRepository extends JpaRepository<ProjectTag, Long> {
    // Custom method to find a tag by name
    Optional<ProjectTag> findByTagName(String tagName);
}
