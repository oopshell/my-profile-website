package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.Responsibility;

@Repository
public interface ResponsibilityRepository extends JpaRepository<Responsibility, Long> {
}
