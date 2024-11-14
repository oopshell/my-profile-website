-- Insert skill data

-- Languages category
INSERT INTO skill_category (category_name) VALUES ('Languages');
SET @languages_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('Java', @languages_id),
    ('JavaScript', @languages_id),
    ('TypeScript', @languages_id),
    ('Python', @languages_id),
    ('R', @languages_id),
    ('Solidity', @languages_id),
    ('C', @languages_id);

-- Frontend category
INSERT INTO skill_category (category_name) VALUES ('Frontend');
SET @frontend_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('HTML5', @frontend_id),
    ('CSS', @frontend_id),
    ('SASS', @frontend_id),
    ('React.js', @frontend_id),
    ('Next.js', @frontend_id),
    ('Vue.js', @frontend_id),
    ('Bootstrap', @frontend_id),
    ('Vite', @frontend_id);

-- Backend category
INSERT INTO skill_category (category_name) VALUES ('Backend');
SET @backend_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('Node.js', @backend_id),
    ('Spring Boot', @backend_id),
    ('Express.js', @backend_id),
    ('GraphQL', @backend_id),
    ('Nest.js', @backend_id);

-- Databases category
INSERT INTO skill_category (category_name) VALUES ('Databases');
SET @databases_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('MySQL', @databases_id),
    ('PostgreSQL', @databases_id),
    ('MongoDB', @databases_id),
    ('QGIS', @databases_id),
    ('Tableau', @databases_id);

-- Testing category
INSERT INTO skill_category (category_name) VALUES ('Testing');
SET @testing_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('Jest', @testing_id),
    ('JUnit', @testing_id),
    ('TDD', @testing_id),
    ('BDD', @testing_id),
    ('Unit Test', @testing_id),
    ('Integration Test', @testing_id);

-- Tools category
INSERT INTO skill_category (category_name) VALUES ('Tools');
SET @tools_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('Docker', @tools_id),
    ('Git', @tools_id),
    ('Postman', @tools_id),
    ('Jira', @tools_id),
    ('Trello', @tools_id),
    ('Confluence', @tools_id),
    ('Slack', @tools_id),
    ('Microsoft Teams', @tools_id);

-- Cloud Services category
INSERT INTO skill_category (category_name) VALUES ('Cloud Services');
SET @cloud_services_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('AWS: RDS', @cloud_services_id),
    ('EC2', @cloud_services_id),
    ('S3', @cloud_services_id),
    ('CloudFront', @cloud_services_id),
    ('Route 53', @cloud_services_id),
    ('Load Balancer', @cloud_services_id),
    ('Lambda', @cloud_services_id);

-- Other category
INSERT INTO skill_category (category_name) VALUES ('Other');
SET @other_id = LAST_INSERT_ID();

INSERT INTO skill (skill_name, category_id) VALUES
    ('REST APIs', @other_id),
    ('Agile', @other_id),
    ('CI/CD', @other_id),
    ('OAuth', @other_id),
    ('Data Visualisation', @other_id),
    ('SEO', @other_id);


-- Insert experience data

-- Insert into company table

INSERT INTO company (company_name, location) VALUES
    ('BeeQuant AI', 'Melbourne, VIC');
SET @beequant_id = LAST_INSERT_ID();

INSERT INTO company (company_name, location) VALUES
    ('Dunnhumby', 'Shanghai, China');
SET @dunnhumby_id = LAST_INSERT_ID();

INSERT INTO company (company_name, location) VALUES
    ('China University of Geosciences', 'Wuhan, China');
SET @geosciences_id = LAST_INSERT_ID();

-- Insert into experience table, referencing company_id dynamically

INSERT INTO experience (company_id, position, start_date, end_date) VALUES
    (@beequant_id, 'Full Stack Developer', '2024-03-01', '2024-07-01');
SET @beequant_experience_id = LAST_INSERT_ID();

INSERT INTO experience (company_id, position, start_date, end_date) VALUES
    (@dunnhumby_id, 'Applied Data Scientist Intern', '2022-01-01', '2022-04-01');
SET @dunnhumby_experience_id = LAST_INSERT_ID();

INSERT INTO experience (company_id, position, start_date, end_date) VALUES
    (@geosciences_id, 'Research Assistant', '2020-06-01', '2021-02-01');
SET @geosciences_experience_id = LAST_INSERT_ID();

-- Insert into responsibility table, referencing experience_id

-- Insert responsibilities for BeeQuant AI
INSERT INTO responsibility (experience_id, title, description) VALUES
    (@beequant_experience_id, 'Full Stack Development', 'Developed password update feature with React and TypeScript for account management UI, with Java Spring Boot and RESTful API integrating PostgreSQL for updating user credentials'),
    (@beequant_experience_id, 'Security & Encryption', 'Implemented security best practices, including encrypted password storage using bcrypt, JWT-based authentication, and OAuth2 for third-party sign-in to ensure secure user access'),
    (@beequant_experience_id, 'Testing', 'Achieved 90% test coverage by writing unit and integration tests for both frontend (Jest) and backend (JUnit)'),
    (@beequant_experience_id, 'AI Model', 'Developed BERT-based ML model using Python and PyTorch to predict cryptocurrency price trends by analysing the sentiment of tweets collected via Tweepy, achieving high precision and recall with an AUC of 0.85'),
    (@beequant_experience_id, 'SEO Optimization', 'Optimised SEO and reduced page load times by 40% through server-side rendering with Next.js, improving user experience and search engine rankings'),
    (@beequant_experience_id, 'CI/CD Pipeline', 'Streamlined DevOps processes by automating CI/CD pipelines with GitHub Actions and Docker and migrating APIs to AWS Lambda, reducing deployment time by 50% and operational costs by 60%'),
    (@beequant_experience_id, 'Team Collaboration', 'Collaborated closely with business analysis and DevOps teams to align development efforts with business requirements and ensure seamless deployment and scalability of the platform');

-- Insert responsibilities for Dunnhumby
INSERT INTO responsibility (experience_id, title, description) VALUES
    (@dunnhumby_experience_id, 'Data Analysis', 'Expanded the capability of team''s data query tool by adding support for nested queries, including subqueries and aggregations, resulting in a 20% increase in query request coverage and enabling deeper data insights'),
    (@dunnhumby_experience_id, 'Data Query Tool Enhancement', 'Reorganised the query tool logic by centralising parameter settings at the top, making it more user-friendly and reducing setup time, which led to faster query execution and fewer user errors'),
    (@dunnhumby_experience_id, 'Targeted Customer Advertising System', 'Developed a machine learning-based advertising system that identified customers with declining loyalty, predicted their preferred products using logistic regression, and sent personalised promotional messages, achieving 12% conversion rate and 8% customer retention'),
    (@dunnhumby_experience_id, 'Team Collaboration', 'Utilised Microsoft Teams for effective communication and collaboration with team members, coordinating project tasks, sharing updates, and ensuring alignment on project goals and timelines');

-- Insert responsibilities for China University of Geosciences
INSERT INTO responsibility (experience_id, title, description) VALUES
    (@geosciences_experience_id, 'Privacy-Preserving in Neural Network Training', 'Architected a data preprocessing pipeline by developing a pixel block mixing algorithm in Python with PyTorch, protecting image privacy during neural network training while maintaining high model accuracy'),
    (@geosciences_experience_id, 'Adversarial Sample Generation Based on Watermarking', 'Engineered a Python algorithm leveraging watermarking to generate adversarial examples that deceived TensorFlow DNNs on CIFAR-10 dataset with over 95% success, optimising processing time to 1.17s per image'),
    (@geosciences_experience_id, 'Fairness, Autonomy and Privacy in Big Data Exchange', 'Designed a Solidity-based blockchain platform with smart contracts and the oblivious transfer protocol, eliminating intermediaries to enable security and fairness in big data exchange');


-- Insert project data

-- Insert into project table

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('my-profile-website', 'Personal Profile Website', 'Full-Stack Web Application', 'https://github.com/oopshell/my-profile-website', 'https://tiantian-li.me');
SET @project_id_1 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('game-of-ethics', 'Game of Ethics', 'Full-Stack Web Application', '', 'http://d28tzhn3mqh229.cloudfront.net');
SET @project_id_2 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('bigfoot-sightings', 'Bigfoot Sightings in North America', 'Shiny Dashboard', 'https://github.com/oopshell/tidytuesday-bigfoot-dashboard-shiny-app', '');
SET @project_id_3 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('sentiment-classifier', 'Sentiment Classifier', 'Machine Learning Project', 'https://github.com/oopshell/ML-basic-KNN-NB-LR-MLP-sentiment-classifier', '');
SET @project_id_4 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('covid19-rumour-detection', 'COVID19 Rumour Detection', 'Machine Learning Project', 'https://github.com/oopshell/COVID19-Rumour-Detection', '');
SET @project_id_5 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('luck-draw-competition', 'Lucky Draw Competition', 'Java Project', 'https://github.com/oopshell/lucky-draw-competition', '');
SET @project_id_6 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('fair-autonomous-privacy-preserving-scheme', 'FAPS: A fair, autonomous and privacy-preserving scheme for big data exchange based on oblivious transfer, Ether cheque and smart contracts', 'Publication', '', 'https://doi.org/10.1016/j.ins.2020.08.116');
SET @project_id_7 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('lightweight-privacy-preserving-scheme', 'A lightweight privacy-preserving scheme using pixel block mixing for facial image classification in deep learning', 'Publication', 'https://github.com/oopshell/Pixel-Blocks-Mixing-For-Image-Privacy-Preservation', 'https://doi.org/10.1016/j.engappai.2023.107180');
SET @project_id_8 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('advewm-adversarial-example-generation', 'AdvEWM: Watermark-Based Adversarial Example Generation for DNNs', 'Publication', 'https://github.com/Y-Xiang-hub/AdvEWM', 'https://doi.org/10.1016/j.jisa.2023.103662');
SET @project_id_9 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('babd-bitcoin-address-behavior-dataset', 'BABD: A Bitcoin Address Behavior Dataset for Pattern Analysis', 'Publication', '', 'https://doi.org/10.1109/TIFS.2023.3347894');
SET @project_id_10 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('bitcoin-address-subgraph-structure', 'Leveraging Subgraph Structure for Exploration and Analysis of Bitcoin Address', 'Publication', '', 'https://doi.org/10.1109/BigData55660.2022.10020980');
SET @project_id_11 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('drone-management-database', 'Drone Management Database for Universities', 'Spatial Database for University Drone Management with CASA Compliance and Real-time Operational Support', '', '');
SET @project_id_12 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('visualising-road-safety', 'Visualising Road Safety: Crash Analysis for VicRoads', 'Interactive Tableau dashboard analyzing Melbourne crash data, providing insights and recommendations for VicRoads to enhance road safety', '', '');
SET @project_id_13 = LAST_INSERT_ID();

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('tourist-guide-melbourne', 'Explore Melbourne: Interactive Tourist Guide', 'Interactive trip website for Melbourne tourists provides easy access to attractions, weather, transport options, and city maps', '', '');
SET @project_id_14 = LAST_INSERT_ID();


-- Insert into project_tag table

INSERT INTO project_tag (tag_name) VALUES ('All');
SET @tag_all = LAST_INSERT_ID();

INSERT INTO project_tag (tag_name) VALUES ('Web');
SET @tag_web = LAST_INSERT_ID();

INSERT INTO project_tag (tag_name) VALUES ('Data Visualisation');
SET @tag_data_visualisation = LAST_INSERT_ID();

INSERT INTO project_tag (tag_name) VALUES ('Machine Learning');
SET @tag_machine_learning = LAST_INSERT_ID();

INSERT INTO project_tag (tag_name) VALUES ('Java');
SET @tag_java = LAST_INSERT_ID();

INSERT INTO project_tag (tag_name) VALUES ('Research');
SET @tag_research = LAST_INSERT_ID();

INSERT INTO project_tag (tag_name) VALUES ('GIS');
SET @tag_gis = LAST_INSERT_ID();


-- Insert into project_tag_mapping table

INSERT INTO project_tag_mapping (project_id, tag_id) VALUES
    (@project_id_1, @tag_all), (@project_id_1, @tag_web),
    (@project_id_2, @tag_all), (@project_id_2, @tag_web),
    (@project_id_3, @tag_all), (@project_id_3, @tag_data_visualisation),
    (@project_id_4, @tag_all), (@project_id_4, @tag_machine_learning),
    (@project_id_5, @tag_all), (@project_id_5, @tag_machine_learning),
    (@project_id_6, @tag_all), (@project_id_6, @tag_java),
    (@project_id_7, @tag_all), (@project_id_7, @tag_research),
    (@project_id_8, @tag_all), (@project_id_8, @tag_research),
    (@project_id_9, @tag_all), (@project_id_9, @tag_research),
    (@project_id_10, @tag_all), (@project_id_10, @tag_research),
    (@project_id_11, @tag_all), (@project_id_11, @tag_research),
    (@project_id_12, @tag_all), (@project_id_12, @tag_gis),
    (@project_id_13, @tag_all), (@project_id_13, @tag_data_visualisation),
    (@project_id_14, @tag_all), (@project_id_14, @tag_data_visualisation);


-- Insert into project_detail table

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

-- Project Details for "Game of Ethics"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_2, 'Project Overview', 'Engaged in developing a full-stack web app in a real industry setting, involving direct client communication'),
    (@project_id_2, 'Technologies Used', 'MEVN stack (MongoDB, Express.js, Vue.js, Node.js)'),
    (@project_id_2, 'Team Collaboration', 'Worked in a team of five, utilising the MEVN stack (MongoDB, Express.js, Vue.js, Node.js) to create a game addressing ethical issues in the Airline industry'),
    (@project_id_2, 'Agile Methodology', 'Involved in all Agile project phases: analysis, design, implementation, testing, management, and delivery'),
    (@project_id_2, 'Robust Login Function', 'Developed a robust login feature using MongoDB, effectively preventing multi-login conflicts, ensuring seamless user experience and data integrity'),
    (@project_id_2, 'Re-Join Feature', 'Implemented a re-join functionality allowing users to resume the game from their last state, significantly enhancing user engagement and satisfaction'),
    (@project_id_2, 'User Interface Enhancements', 'Improved the user interface by integrating real-time online/offline status indicators and a customisable game progress timer with Bootstrap on the game creation page, contributing to a more interactive and user-friendly experience'),
    (@project_id_2, 'Project Management', 'Managed project progress with Trello and documentation on Confluence, ensuring smooth team collaboration'),
    (@project_id_2, 'Delivery', 'Presented the final version to the client, demonstrating project success and receiving positive feedback');

-- Project Details for "Bigfoot Sightings in North America"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_3, 'Project Overview', 'Developed an interactive Shiny app to visualise and explore Bigfoot sighting data'),
    (@project_id_3, 'Technologies Used', 'R, Shiny, tidytuesdayR, RColorBrewer'),
    (@project_id_3, 'Multi-Tab Interface', 'Includes sections for introduction, sighting distribution, statistics, climate factors, and frequent words'),
    (@project_id_3, 'Interactive Visualizations', 'Features map and time-series plots of Bigfoot sightings with dynamic filtering'),
    (@project_id_3, 'Filter Options', 'Users can filter data by classification, year range, state, temperature, humidity, and moon phase'),
    (@project_id_3, 'Climate Analysis', 'Displays sightings affected by climate factors like moon phase, temperature, and precipitation'),
    (@project_id_3, 'Text Analysis', 'Provides a word cloud visualization of frequent words in reports, filtered by season and classification');

-- Project Details for "Sentiment Classifier"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_4, 'Project Overview', 'Built sentiment classifiers using a Twitter dataset to predict user sentiments'),
    (@project_id_4, 'Technologies Used', 'Python, TensorFlow, Keras, Scikit-learn'),
    (@project_id_4, 'Machine Learning Models', 'Implemented four algorithms: K-Nearest Neighbors (KNN), Naive Bayes (NB), Logistic Regression (LR), and Multilayer Perceptron (MLP)'),
    (@project_id_4, 'Data Preprocessing', 'Cleaned and formatted data to ensure proper input for model training and testing'),
    (@project_id_4, 'Model Training & Evaluation', 'Achieved accuracy between 72% and 82% across all models, with precision, recall, and F1-scores consistently ranging from 70% to 81%');

-- Project Details for "COVID19 Rumour Detection"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_5, 'Project Overview', 'Developed a binary classifier to detect rumours in tweets and performed an in-depth analysis of COVID-19-related tweets'),
    (@project_id_5, 'Technologies Used', 'Python, TensorFlow/Keras, PyTorch, Twitter API, BERT, SVM, MLP, and SMOTE for model development and analysis'),
    (@project_id_5, 'Data Retrieval & Preprocessing', 'Retrieved over 15,000 tweet sets using Twitter API and Tweepy, cleaned text data by removing special characters, URLs, and emojis, and concatenated text for model input'),
    (@project_id_5, 'Model Development & Performance', 'Implemented SVM with TF-IDF and SMOTE for handling data imbalance, an MLP model with a bag-of-words approach, and BERT models (cased and uncased), achieving the highest F1 score (0.917) with the uncased BERT model'),
    (@project_id_5, 'Rumour Detection & Analysis', 'Applied the trained BERT model to classify COVID-19 tweets, identifying 20% as rumours, and performed analysis on the key topics, hashtags, and sentiment in these tweets'),
    (@project_id_5, 'Key Findings', 'Rumours focused on political figures (e.g., #Trump, #Wuhan), spread more negative sentiment, and were created by users with more followers compared to non-rumours');

-- Project Details for "Lucky Draw Competition"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_6, 'Project Overview', 'A Java-based application where members buy entries, and winners are drawn after each competition. It manages member balances, competition setup, and prize distribution based on randomly selected lucky numbers'),
    (@project_id_6, 'Technologies Used', 'Java'),
    (@project_id_6, 'Lucky Draw System', 'Developed a system where registered members can purchase lucky draw entries with their balance'),
    (@project_id_6, 'Competition Mechanism', 'Implemented a feature allowing competition owners to draw lucky entries after the competition ends'),
    (@project_id_6, 'Prize Distribution', 'Designed functionality for members to receive prizes based on purchased entries and lucky numbers'),
    (@project_id_6, 'Java-Based Implementation', 'The project is coded in Java, managing competitions, entries, and members through core classes like Member, Competition, and LuckyNumbersCompetition');

-- Project Details for "FAPS: A fair, autonomous and privacy-preserving scheme..."
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_7, 'Project Overview', 'Developed a fair, autonomous data exchange system using smart contracts, removing the need for third-party arbitration'),
    (@project_id_7, 'Technologies Used', 'Ethereum smart contracts, oblivious transfer protocol, Solidity'),
    (@project_id_7, 'Privacy and Fairness', 'Integrated smart contracts for transaction fairness and timing control with the oblivious transfer protocol for privacy'),
    (@project_id_7, 'Ether Cheque System', 'Introduced a novel Ether cheque system to improve fairness and convenience in transactions'),
    (@project_id_7, 'Cost-Effective Transactions', 'Enabled autonomous, cost-efficient exchanges with mechanisms to detect cheating parties');

-- Project Details for "A lightweight privacy-preserving scheme using pixel block mixing..."
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_8, 'Project Overview', 'Developed a pixel block mixing algorithm for preserving privacy in facial image classification tasks'),
    (@project_id_8, 'Technologies Used', 'Python, PyTorch'),
    (@project_id_8, 'Performance', 'Achieved privacy protection without compromising model performance or training set availability'),
    (@project_id_8, 'Privacy Validation', 'SSIM comparison confirmed effective privacy preservation in the mixed dataset'),
    (@project_id_8, 'Training Enhancement', 'Demonstrated data augmentation can improve training effectiveness on the mixed set'),
    (@project_id_8, 'Security Assurance', 'Ensured that restoring the original dataset from the mixed version is computationally challenging for attackers');

-- Project Details for "AdvEWM: Watermark-Based Adversarial Example Generation..."
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_9, 'Project Overview', 'Developed AdvEWM, a framework embedding digital watermarks into images to create adversarial examples that fool DNNs'),
    (@project_id_9, 'Technologies Used', 'Python, TensorFlow'),
    (@project_id_9, 'Method', 'Employed improved DWT-based and DCT-based Patchwork watermarking algorithms for embedding nearly invisible watermark features'),
    (@project_id_9, 'Performance', 'Achieved up to 98.71% attack success on CIFAR-10, with an average generation time of 1.17 seconds per image'),
    (@project_id_9, 'Experimentation', 'Conducted baseline experiments using Gaussian noise watermarking, confirming effectiveness'),
    (@project_id_9, 'Impact', 'Demonstrated high attack success (average 95.47%) and efficient generation of adversarial examples');

-- Project Details for "BABD: A Bitcoin Address Behavior Dataset for Pattern Analysis"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_10, 'Project Overview', 'Proposed a framework for building a comprehensive Bitcoin transaction dataset and developed a subgraph generation algorithm'),
    (@project_id_10, 'Technologies Used', 'Python, PyTorch'),
    (@project_id_10, 'Dataset Creation', 'Proposed a framework for building a comprehensive Bitcoin transaction dataset (BABD-13) with 544,462 labeled data points, 13 types of Bitcoin addresses, 5 indicator categories, and 148 features'),
    (@project_id_10, 'Algorithm Development', 'Developed BTC-SubGen, an efficient subgraph generation algorithm to extract k-hop subgraphs from Bitcoin transaction graphs'),
    (@project_id_10, 'Machine Learning Application', 'Conducted 13-class classification tasks using machine learning models: k-nearest neighbors, decision tree, random forest, multilayer perceptron, and XGBoost, achieving accuracy rates between 93.24% and 97.13%'),
    (@project_id_10, 'Feature Importance Analysis', 'Analysed the relationships and importance of the proposed features and their impact on machine learning performance'),
    (@project_id_10, 'Behavior Pattern Insights', 'Performed a preliminary behavior pattern analysis of different Bitcoin address types, identifying meaningful trends and explainable behavior modes');

-- Project Details for "Leveraging Subgraph Structure for Exploration and Analysis..."
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_11, 'Project Overview', 'Proposed BASD-8, the first Bitcoin address subgraph dataset, using machine learning and graph neural networks to classify Bitcoin addresses and enhance cryptocurrency security with a 91.35% f1-score'),
    (@project_id_11, 'Technologies Used', 'Python, PyTorch'),
    (@project_id_11, 'Dataset Creation', 'Developed BASD-8, the first Bitcoin address subgraph dataset, containing 3,830 labeled Bitcoin address subgraphs'),
    (@project_id_11, 'Research Focus', 'Focused on analyzing structural characteristics of Bitcoin subgraphs to identify and distinguish eight common types of Bitcoin addresses'),
    (@project_id_11, 'Objective', 'Aimed to classify addresses as normal or abnormal, helping prevent financial loss and improve community safety in cryptocurrency markets'),
    (@project_id_11, 'Analytical Approaches', 'Utilized three approaches to analyze subgraph patterns: complex network analysis, machine learning, and empirical analysis'),
    (@project_id_11, 'Feature Engineering', 'Extracted ten vital subgraph metrics as features to train basic machine learning classifiers'),
    (@project_id_11, 'Model Development', 'Trained a graph neural network (GNN) model as a graph-level classifier for Bitcoin addresses'),
    (@project_id_11, 'Performance', 'Achieved a best f1-score of 91.35%, demonstrating the effectiveness of the dataset and the methods used'),
    (@project_id_11, 'Empirical Insights', 'Conducted an in-depth empirical analysis that combined subgraph structures with the definitions of each category of Bitcoin addresses');

-- Project Details for "Drone Management Database for Universities"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_12, 'Project Overview', 'Developed a spatial database for managing drones in universities, ensuring compliance with CASA regulations and providing real-time operational support'),
    (@project_id_12, 'Technologies Used', 'MySQL, QGIS, CASA regulations'),
    (@project_id_12, 'Database Design', 'Designed a spatial database to store drone flight data, including flight paths, altitudes, and flight durations'),
    (@project_id_12, 'Regulatory Compliance', 'Ensured compliance with CASA regulations by storing drone registration details, pilot certifications, and flight logs'),
    (@project_id_12, 'Real-Time Monitoring', 'Implemented a real-time monitoring system to track drone locations, flight paths, and battery levels, enabling operational support and emergency response'),
    (@project_id_12, 'User Interface', 'Developed a user-friendly interface using QGIS to visualise drone flight data, monitor airspace usage, and plan flight routes'),
    (@project_id_12, 'Operational Efficiency', 'Optimised drone management processes by automating flight log generation, airspace monitoring, and pilot certification tracking');

-- Project Details for "Visualising Road Safety: Crash Analysis for VicRoads"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_13, 'Project Overview', 'Developed an interactive Tableau dashboard to analyse Melbourne crash data, providing insights and recommendations for VicRoads to enhance road safety'),
    (@project_id_13, 'Technologies Used', 'Tableau, Python, Pandas'),
    (@project_id_13, 'Data Analysis', 'Analysed crash data from VicRoads to identify trends, patterns, and high-risk areas'),
    (@project_id_13, 'Interactive Dashboard', 'Created an interactive Tableau dashboard with filters, maps, and charts to visualise crash data and explore insights'),
    (@project_id_13, 'Key Insights', 'Identified common crash causes, high-risk locations, and peak crash times to inform road safety strategies'),
    (@project_id_13, 'Recommendations', 'Provided recommendations to VicRoads for improving road safety, including targeted awareness campaigns, infrastructure upgrades, and traffic management strategies'),
    (@project_id_13, 'Data Processing', 'Cleaned and processed raw crash data using Python and Pandas to prepare it for Tableau visualisation');

-- Project Details for "Explore Melbourne: Interactive Tourist Guide"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_14, 'Project Overview', 'Developed an interactive trip website for Melbourne tourists, providing easy access to attractions, weather, transport options, and city maps'),
    (@project_id_14, 'Technologies Used', 'HTML, CSS, JavaScript, Bootstrap, Leaflet.js'),
    (@project_id_14, 'User-Friendly Interface', 'Designed a user-friendly interface with interactive maps, weather forecasts, and transport information to enhance the tourist experience'),
    (@project_id_14, 'Attraction Information', 'Provided detailed information on popular attractions, including opening hours, ticket prices, and visitor reviews'),
    (@project_id_14, 'Weather Forecast', 'Integrated real-time weather data to help tourists plan their trips and activities accordingly'),
    (@project_id_14, 'Transport Options', 'Displayed public transport routes, schedules, and fares to assist tourists in navigating the city efficiently'),
    (@project_id_14, 'Responsive Design', 'Ensured the website is responsive and accessible on various devices, including desktops, tablets, and smartphones');
