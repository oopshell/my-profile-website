DROP TABLE IF EXISTS experience;
CREATE TABLE experience (
        id INT AUTO_INCREMENT PRIMARY KEY,
        company_name VARCHAR(255) NOT NULL,
        job_title VARCHAR(255) NOT NULL,
        date_range VARCHAR(255) NOT NULL,
        description JSON,
        location VARCHAR(255)
);

DROP TABLE IF EXISTS project;
CREATE TABLE project (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        description VARCHAR(255),
        detail JSON,
        tag JSON,
        git_url VARCHAR(255),
        preview_url VARCHAR(255)
);

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
