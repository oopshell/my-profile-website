-- Insert project 1 data

-- Insert into project table

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('my-profile-website', 'Personal Profile Website', 'Full-Stack Web Application', 'https://github.com/oopshell/my-profile-website', 'https://tiantian-li.me');
SET @project_id_1 = LAST_INSERT_ID();

-- Project Details for "Personal Profile Website"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_1, 'Project Overview', 'Designed and developed a personal profile website to showcase my skills and projects'),
    (@project_id_1, 'Technologies Used', 'MySQL, Java Spring Boot, RESTful API, React-TypeScript, AWS: RDS, EC2, S3, CloudFront, Route 53, Load Balancer, and Lambda'),
    (@project_id_1, 'Backend Implementation', 'Developed a robust backend using Java Spring Boot, creating RESTful APIs hosted on an AWS EC2 instance and later migrated to AWS Lambda for cost efficiency'),
    (@project_id_1, 'Frontend Development', 'Built a responsive frontend using React with TypeScript, hosted on AWS S3, ensuring an optimal user experience across various devices'),
    (@project_id_1, 'Database Management', 'Employed MySQL hosted on AWS RDS for database management, ensuring secure and efficient data storage and retrieval'),
    (@project_id_1, 'Testing', 'Conducted unit tests and integration tests for the backend using JUnit, ensuring the reliability and robustness of the application'),
    (@project_id_1, 'Deployment', 'Ensured reliable online accessibility and scalability by deploying backend APIs on AWS Lambda, the database on AWS RDS, and the frontend on AWS S3'),
    (@project_id_1, 'CI/CD Pipeline', 'Used GitHub Actions to implement a CI/CD pipeline, automating the deployment process to continuously update website content'),
    (@project_id_1, 'Performance Optimisation', 'Used AWS CloudFront CDN for frontend content delivery, ensuring high availability and low latency, and employed Load Balancer to manage HTTPS traffic to the backend, leveraging AWS Certificate Manager for enhanced security'),
    (@project_id_1, 'Domain Management', 'Managed domain registration and DNS routing using AWS Route 53, ensuring seamless website access and optimal performance'),
    (@project_id_1, 'Coding Principles', 'Adhered to SOLID programming principles throughout the development, resulting in clean, maintainable, and scalable code that enhances future development and maintenance efforts');
