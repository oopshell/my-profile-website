package tiantian_li.me.my_profile.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.my_profile.entity.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long>{
}
