-- Insert skill categories
INSERT INTO skill_category (category_name) VALUES
        ('Languages'),
        ('Frontend'),
        ('Backend'),
        ('Databases'),
        ('Testing'),
        ('Tools'),
        ('Cloud Services'),
        ('Other');

-- Insert skills for each category

-- Languages skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('Java', (SELECT category_id FROM skill_category WHERE category_name = 'Languages')),
        ('JavaScript', (SELECT category_id FROM skill_category WHERE category_name = 'Languages')),
        ('TypeScript', (SELECT category_id FROM skill_category WHERE category_name = 'Languages')),
        ('Python', (SELECT category_id FROM skill_category WHERE category_name = 'Languages')),
        ('R', (SELECT category_id FROM skill_category WHERE category_name = 'Languages')),
        ('Solidity', (SELECT category_id FROM skill_category WHERE category_name = 'Languages')),
        ('C', (SELECT category_id FROM skill_category WHERE category_name = 'Languages'));

-- Frontend skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('HTML5', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('CSS', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('SASS', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('React.js', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('Next.js', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('Vue.js', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('Bootstrap', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend')),
        ('Vite', (SELECT category_id FROM skill_category WHERE category_name = 'Frontend'));

-- Backend skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('Node.js', (SELECT category_id FROM skill_category WHERE category_name = 'Backend')),
        ('Spring Boot', (SELECT category_id FROM skill_category WHERE category_name = 'Backend')),
        ('Express.js', (SELECT category_id FROM skill_category WHERE category_name = 'Backend')),
        ('GraphQL', (SELECT category_id FROM skill_category WHERE category_name = 'Backend')),
        ('Nest.js', (SELECT category_id FROM skill_category WHERE category_name = 'Backend'));

-- Databases skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('MySQL', (SELECT category_id FROM skill_category WHERE category_name = 'Databases')),
        ('PostgreSQL', (SELECT category_id FROM skill_category WHERE category_name = 'Databases')),
        ('MongoDB', (SELECT category_id FROM skill_category WHERE category_name = 'Databases')),
        ('QGIS', (SELECT category_id FROM skill_category WHERE category_name = 'Databases')),
        ('Tableau', (SELECT category_id FROM skill_category WHERE category_name = 'Databases'));

-- Testing skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('Jest', (SELECT category_id FROM skill_category WHERE category_name = 'Testing')),
        ('JUnit', (SELECT category_id FROM skill_category WHERE category_name = 'Testing')),
        ('TDD', (SELECT category_id FROM skill_category WHERE category_name = 'Testing')),
        ('BDD', (SELECT category_id FROM skill_category WHERE category_name = 'Testing')),
        ('Unit Test', (SELECT category_id FROM skill_category WHERE category_name = 'Testing')),
        ('Integration Test', (SELECT category_id FROM skill_category WHERE category_name = 'Testing'));

-- Tools skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('Docker', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Git', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Postman', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Jira', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Trello', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Confluence', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Slack', (SELECT category_id FROM skill_category WHERE category_name = 'Tools')),
        ('Microsoft Teams', (SELECT category_id FROM skill_category WHERE category_name = 'Tools'));

-- Cloud Services skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('AWS: RDS', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services')),
        ('EC2', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services')),
        ('S3', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services')),
        ('CloudFront', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services')),
        ('Route 53', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services')),
        ('Load Balancer', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services')),
        ('Lambda', (SELECT category_id FROM skill_category WHERE category_name = 'Cloud Services'));

-- Other skills
INSERT INTO skill (skill_name, category_id) VALUES
        ('REST APIs', (SELECT category_id FROM skill_category WHERE category_name = 'Other')),
        ('Agile', (SELECT category_id FROM skill_category WHERE category_name = 'Other')),
        ('CI/CD', (SELECT category_id FROM skill_category WHERE category_name = 'Other')),
        ('OAuth', (SELECT category_id FROM skill_category WHERE category_name = 'Other')),
        ('Data Visualisation', (SELECT category_id FROM skill_category WHERE category_name = 'Other')),
        ('SEO', (SELECT category_id FROM skill_category WHERE category_name = 'Other'));


-- Insert experience data

-- Insert into company table
INSERT INTO company (company_name, location) VALUES
    ('BeeQuant AI', 'Melbourne, VIC'),
    ('Dunnhumby', 'Shanghai, China'),
    ('China University of Geosciences', 'Wuhan, China');

-- Insert into work_experience table, referencing company_id dynamically
INSERT INTO work_experience (company_id, position, start_date, end_date) VALUES
(
    (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI'),
    'Full Stack Developer',
    '2024-03-01',
    '2024-07-01'
),
(
    (SELECT company_id FROM company WHERE company_name = 'Dunnhumby'),
    'Applied Data Scientist Intern',
    '2022-01-01',
    '2022-04-01'
),
(
    (SELECT company_id FROM company WHERE company_name = 'China University of Geosciences'),
    'Research Assistant',
    '2020-06-01',
    '2021-02-01'
);

-- Insert responsibility for BeeQuant AI
INSERT INTO responsibility (experience_id, title, description) VALUES
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'Full Stack Development',
    'Developed password update feature with React and TypeScript for account management UI, with Java Spring Boot and RESTful API integrating PostgreSQL for updating user credentials'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'Security & Encryption',
    'Implemented security best practices, including encrypted password storage using bcrypt, JWT-based authentication, and OAuth2 for third-party sign-in to ensure secure user access'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'Testing',
    'Achieved 90% test coverage by writing unit and integration tests for both frontend (Jest) and backend (JUnit)'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'AI Model',
    'Developed BERT-based ML model using Python and PyTorch to predict cryptocurrency price trends by analysing the sentiment of tweets collected via Tweepy, achieving high precision and recall with an AUC of 0.85'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'SEO Optimization',
    'Optimised SEO and reduced page load times by 40% through server-side rendering with Next.js, improving user experience and search engine rankings'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'CI/CD Pipeline',
    'Streamlined DevOps processes by automating CI/CD pipelines with GitHub Actions and Docker and migrating APIs to AWS Lambda, reducing deployment time by 50% and operational costs by 60%'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Full Stack Developer' AND company_id = (SELECT company_id FROM company WHERE company_name = 'BeeQuant AI')),
    'Team Collaboration',
    'Collaborated closely with business analysis and DevOps teams to align development efforts with business requirements and ensure seamless deployment and scalability of the platform'
);

-- Insert responsibility for Dunnhumby
INSERT INTO responsibility (experience_id, title, description) VALUES
(
    (SELECT experience_id FROM work_experience WHERE position = 'Applied Data Scientist Intern' AND company_id = (SELECT company_id FROM company WHERE company_name = 'Dunnhumby')),
    'Data Analysis',
    'Expanded the capability of team''s data query tool by adding support for nested queries, including subqueries and aggregations, resulting in a 20% increase in query request coverage and enabling deeper data insights'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Applied Data Scientist Intern' AND company_id = (SELECT company_id FROM company WHERE company_name = 'Dunnhumby')),
    'Data Query Tool Enhancement',
    'Reorganised the query tool logic by centralising parameter settings at the top, making it more user-friendly and reducing setup time, which led to faster query execution and fewer user errors'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Applied Data Scientist Intern' AND company_id = (SELECT company_id FROM company WHERE company_name = 'Dunnhumby')),
    'Targeted Customer Advertising System',
    'Developed a machine learning-based advertising system that identified customers with declining loyalty, predicted their preferred products using logistic regression, and sent personalised promotional messages, achieving 12% conversion rate and 8% customer retention'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Applied Data Scientist Intern' AND company_id = (SELECT company_id FROM company WHERE company_name = 'Dunnhumby')),
    'Team Collaboration',
    'Utilised Microsoft Teams for effective communication and collaboration with team members, coordinating project tasks, sharing updates, and ensuring alignment on project goals and timelines'
);

-- Insert responsibility for China University of Geosciences
INSERT INTO responsibility (experience_id, title, description) VALUES
(
    (SELECT experience_id FROM work_experience WHERE position = 'Research Assistant' AND company_id = (SELECT company_id FROM company WHERE company_name = 'China University of Geosciences')),
    'Privacy-Preserving in Neural Network Training',
    'Architected a data preprocessing pipeline by developing a pixel block mixing algorithm in Python with PyTorch, protecting image privacy during neural network training while maintaining high model accuracy'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Research Assistant' AND company_id = (SELECT company_id FROM company WHERE company_name = 'China University of Geosciences')),
    'Adversarial Sample Generation Based on Watermarking',
    'Engineered a Python algorithm leveraging watermarking to generate adversarial examples that deceived TensorFlow DNNs on CIFAR-10 dataset with over 95% success, optimising processing time to 1.17s per image'
),
(
    (SELECT experience_id FROM work_experience WHERE position = 'Research Assistant' AND company_id = (SELECT company_id FROM company WHERE company_name = 'China University of Geosciences')),
    'Fairness, Autonomy and Privacy in Big Data Exchange',
    'Designed a Solidity-based blockchain platform with smart contracts and the oblivious transfer protocol, eliminating intermediaries to enable security and fairness in big data exchange'
);

-- Insert project data













