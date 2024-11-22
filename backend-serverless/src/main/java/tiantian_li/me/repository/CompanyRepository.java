package tiantian_li.me.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import tiantian_li.me.entity.Company;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Long> {
    @Query("SELECT c FROM Company c JOIN c.experiences e WHERE e.experienceId = :experienceId")
    Company findCompanyByExperienceId(@Param("experienceId") Long experienceId);
}
