-- Disable foreign key checks
-- SET FOREIGN_KEY_CHECKS = 0;

-- Drop tables in the correct order
-- DROP TABLE IF EXISTS responsibility;
-- DROP TABLE IF EXISTS experience;
-- DROP TABLE IF EXISTS company;

-- Enable foreign key checks again
-- SET FOREIGN_KEY_CHECKS = 1;

-- Let MySQL handle the drop order
DROP TABLE IF EXISTS skill_category, skill;
DROP TABLE IF EXISTS company, experience, responsibility;
DROP TABLE IF EXISTS project, project_detail, project_tag, project_tag_mapping;
-- DROP TABLE IF EXISTS flyway_schema_history;


-- Tables for skills --

CREATE TABLE skill_category (
    category_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE skill (
    skill_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(50) NOT NULL,
    category_id BIGINT,
    FOREIGN KEY (category_id) REFERENCES skill_category(category_id)
);

-- Tables for experience --

CREATE TABLE company (
    company_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);

CREATE TABLE experience (
    experience_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    position VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE,
    company_id BIGINT,
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);

CREATE TABLE responsibility (
    responsibility_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    experience_id BIGINT,
    FOREIGN KEY (experience_id) REFERENCES experience(experience_id)
);

-- Tables for projects --

CREATE TABLE project (
    project_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    slug VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    git_url VARCHAR(255),
    preview_url VARCHAR(255)
);

CREATE TABLE project_detail (
    detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    project_id BIGINT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    FOREIGN KEY (project_id) REFERENCES project(project_id) ON DELETE CASCADE
);

CREATE TABLE project_tag (
    tag_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE project_tag_mapping (
    project_id BIGINT,
    tag_id BIGINT,
    FOREIGN KEY (project_id) REFERENCES project(project_id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES project_tag(tag_id) ON DELETE CASCADE,
    PRIMARY KEY (project_id, tag_id)
);
