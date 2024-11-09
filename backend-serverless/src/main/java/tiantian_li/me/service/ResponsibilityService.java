package tiantian_li.me.service;

import tiantian_li.me.entity.Responsibility;
import java.util.List;

public interface ResponsibilityService {

    Responsibility saveResponsibility(Responsibility responsibility);

    List<Responsibility> fetchAllResponsibilities();

    Responsibility getResponsibilityById(Long id);

    Responsibility updateResponsibilityById(Long id, Responsibility responsibility);

    String deleteResponsibilityById(Long id);

    List<Responsibility> fetchResponsibilitiesByExperienceId(Long experienceId);
}
