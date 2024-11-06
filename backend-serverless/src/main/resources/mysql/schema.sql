-- Tables for skills --

DROP TABLE IF EXISTS skill_category;
CREATE TABLE skill_category (
        category_id INT PRIMARY KEY AUTO_INCREMENT,
        category_name VARCHAR(50) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS skill;
CREATE TABLE skill (
        skill_id INT PRIMARY KEY AUTO_INCREMENT,
        skill_name VARCHAR(50) NOT NULL,
        category_id INT,
        FOREIGN KEY (category_id) REFERENCES skill_category(category_id)
);

-- Tables for experience --

DROP TABLE IF EXISTS company;
CREATE TABLE company (
        company_id INT PRIMARY KEY AUTO_INCREMENT,
        company_name VARCHAR(255) NOT NULL,
        location VARCHAR(255)
);

DROP TABLE IF EXISTS work_experience;
CREATE TABLE work_experience (
        experience_id INT PRIMARY KEY AUTO_INCREMENT,
        company_id INT,
        position VARCHAR(255) NOT NULL,
        start_date DATE,
        end_date DATE,
        FOREIGN KEY (company_id) REFERENCES company(company_id)
);

DROP TABLE IF EXISTS responsibility;
CREATE TABLE responsibility (
        responsibility_id INT PRIMARY KEY AUTO_INCREMENT,
        experience_id INT,
        title VARCHAR(255) NOT NULL,
        description TEXT,
        FOREIGN KEY (experience_id) REFERENCES work_experience(experience_id)
);

-- Tables for projects --

DROP TABLE IF EXISTS project;
CREATE TABLE project (
        project_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        description VARCHAR(500),
        git_url VARCHAR(255),
        preview_url VARCHAR(255)
);

DROP TABLE IF EXISTS project_detail;
CREATE TABLE project_detail (
        detail_id INT AUTO_INCREMENT PRIMARY KEY,
        project_id INT,
        title VARCHAR(255) NOT NULL,
        description TEXT,
        FOREIGN KEY (project_id) REFERENCES project(project_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS project_tag;
CREATE TABLE project_tag (
        tag_id INT AUTO_INCREMENT PRIMARY KEY,
        tag_name VARCHAR(50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS project_tag_mapping;
CREATE TABLE project_tag_mapping (
        project_id INT,
        tag_id INT,
        FOREIGN KEY (project_id) REFERENCES project(project_id) ON DELETE CASCADE,
        FOREIGN KEY (tag_id) REFERENCES project_tag(tag_id) ON DELETE CASCADE,
        PRIMARY KEY (project_id, tag_id)
);
