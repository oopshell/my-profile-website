package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.Company;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Long> {
}
