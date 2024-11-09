package tiantian_li.me.service;

import tiantian_li.me.entity.Company;
import tiantian_li.me.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class CompanyServiceImp implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public Company saveCompany(Company company) {
        return companyRepository.save(company);
    }

    @Override
    public List<Company> fetchAllCompanies() {
        return companyRepository.findAll();
    }

    @Override
    public Company getCompanyById(Long id) {
        return companyRepository.findById(id).orElse(null);
    }

    @Override
    public Company updateCompanyById(Long id, Company companyUpdate) {
        Optional<Company> companyOpt = companyRepository.findById(id);
        if (companyOpt.isPresent()) {
            Company originalCompany = companyOpt.get();
            if (companyUpdate.getCompanyName() != null) {
                originalCompany.setCompanyName(companyUpdate.getCompanyName());
            }
            if (companyUpdate.getLocation() != null) {
                originalCompany.setLocation(companyUpdate.getLocation());
            }
            return companyRepository.save(originalCompany);
        }
        return null;
    }

    @Override
    public String deleteCompanyById(Long id) {
        if (companyRepository.findById(id).isPresent()) {
            companyRepository.deleteById(id);
            return "Company deleted successfully";
        }
        return "No such company in the database";
    }
}
