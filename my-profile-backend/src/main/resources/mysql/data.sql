INSERT INTO skill (category, items) VALUES
    ('Languages', 'Java, JavaScript, TypeScript, Python, R, Solidity, C'),
    ('Frontend', 'HTML, CSS, React.js, Next.js, Vue.js, Bootstrap, Vite'),
    ('Backend', 'Node.js, Spring Boot, Express.js, GraphQL, Nest.js'),
    ('Databases', 'MySQL, PostgreSQL, MongoDB, QGIS, Tableau'),
    ('Tools', 'Docker, Git, Postman, Jira, Trello, Confluence, Slack'),
    ('Cloud Services', 'AWS: RDS, EC2, S3, CloudFront, Route 53'),
    ('Other', 'REST APIs, Agile, Unit Test, TDD, BDD');

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES
    ('BeeQuant AI', 'Full Stack Developer', 'Mar 2024 – Present', 'Sydney, NSW, Australia',
     '[
     {
         "title": "Role",
         "description": "Worked as a full stack developer, contributing to the development of a crypto trading bot platform with a robust and intuitive interface for automated cryptocurrency trading."
     },
     {
         "title": "Database Management",
         "description": "Utilised TypeORM in NestJS for efficient database interaction and schema management, employing PostgreSQL configured with a Docker image and running in a Docker container for high performance, easy deployment, scalability, and robust data integrity."
     },
     {
         "title": "Authentication \\& Security",
         "description": "Implemented login and password update functionalities using React-TypeScript, NestJS, and GraphQL, integrating JWT for secure session management and bcrypt for password hashing."
     },
     {
         "title": "Third-Party Authentication",
         "description": "Implemented custom AuthGuards and strategy configuration in NestJS for integrating Google and Facebook OAuth authentication, using Passport.js for session management."
     },
     {
         "title": "Testing \\& Validation",
         "description": "Wrote comprehensive unit tests using Jest for React components and NestJS services, ensuring high code coverage and robust error handling, and implemented Joi validation schemas to enforce strong password policies."
     }
 ]');

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES
    ('Dunnhumby', 'Data Scientist Intern', 'Jan 2022 – Apr 2022', 'Shanghai, China',
     '[
     {
         "title": "Data Analysis",
         "description": "Utilised PySpark, SQL, and Python to efficiently query, process, clean, and analyse retail customer data from distributed database, collaborating with the client lead team to uncover insights and trends."
     },
     {
         "title": "Ad-Hoc Query Tool Enhancement",
         "description": "Updated and improved the team''s ad-hoc query tool on GitLab, streamlining its functionality to support a wider range of ad-hoc requests. This update improved efficiency and ease of use for the team, facilitating quicker and more accurate data retrieval."
     },
     {
         "title": "Targeted Customer Advertising System",
         "description": "Contributed to developing a targeted customer advertising system using the Alternating Least Squares algorithm. Trained the AI model with customer preferences and engagement data to identify products for regaining and retaining customers with declining loyalty or infrequent engagement."
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Personal Profile Website', 'Full-Stack Web Application', 'https://tiantian-li.me',
     '[
     {
         "title": "Project Overview",
         "description": "Designed and developed a personal profile website to showcase my skills and projects."
     },
     {
         "title": "Technologies Used",
         "description": "MySQL, Java Spring Boot, RESTful API, React-TypeScript, AWS: RDS, EC2, S3, CloudFront, and Route 53."
     },
     {
         "title": "Backend Implementation",
         "description": "Developed a robust backend using Java Spring Boot, creating RESTful APIs hosted on an AWS EC2 instance to handle data transactions efficiently."
     },
     {
         "title": "Frontend Development",
         "description": "Built a responsive frontend using React with TypeScript, hosted on AWS S3, ensuring an optimal user experience across various devices."
     },
     {
         "title": "Database Management",
         "description": "Employed MySQL hosted on AWS RDS for database management, ensuring secure and efficient data storage and retrieval."
     },
     {
         "title": "Deployment",
         "description": "Ensured reliable online accessibility and scalability by deploying the backend API on an AWS EC2 instance, the database on AWS RDS, and the frontend on AWS S3."
     },
     {
         "title": "Coding Principles",
         "description": "Adhered to SOLID programming principles throughout the development, resulting in clean, maintainable, and scalable code that enhances future development and maintenance efforts."
     },
     {
         "title": "Performance Optimisation",
         "description": "Utilised AWS CloudFront CDN for frontend content delivery, ensuring high availability and low latency. Employed a Load Balancer to manage HTTPS traffic to the backend, leveraging AWS Certificate Manager for enhanced security."
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Game of Ethics', 'Full-Stack Web Application', 'http://d28tzhn3mqh229.cloudfront.net',
     '[
     {
         "title": "Project Overview",
         "description": "Engaged in developing a full-stack web app in a real industry setting, involving direct client communication."
     },
     {
         "title": "Team Collaboration",
         "description": "Worked in a team of five, utilising the MEVN stack (MongoDB, Express.js, Vue.js, Node.js) to create a game addressing ethical issues in the Airline industry."
     },
     {
         "title": "Agile Methodology",
         "description": "Involved in all Agile project phases: analysis, design, implementation, testing, management, and delivery."
     },
     {
         "title": "Robust Login Function",
         "description": "Developed a robust login feature using MongoDB, effectively preventing multi-login conflicts, ensuring seamless user experience and data integrity."
     },
     {
         "title": "Re-Join Feature",
         "description": "Implemented a re-join functionality allowing users to resume the game from their last state, significantly enhancing user engagement and satisfaction."
     },
     {
         "title": "User Interface Enhancements",
         "description": "Improved the user interface by integrating real-time online/offline status indicators and a customisable game progress timer with Bootstrap on the game creation page, contributing to a more interactive and user-friendly experience."
     },
     {
         "title": "Project Management",
         "description": "Managed project progress with Trello and documentation on Confluence, ensuring smooth team collaboration."
     },
     {
         "title": "Delivery",
         "description": "Presented the final version to the client, demonstrating project success and receiving positive feedback."
     }
 ]');
