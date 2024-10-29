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

