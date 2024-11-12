package tiantian_li.me.service;

import tiantian_li.me.entity.SkillCategory;
import java.util.List;

public interface SkillCategoryService {

    SkillCategory saveCategory(SkillCategory category);

    List<SkillCategory> fetchAllCategories();

    SkillCategory getCategoryById(Long id);

    SkillCategory updateCategoryById(Long id, SkillCategory category);

    String deleteCategoryById(Long id);
}
