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


-- Insert experience and project data

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES (
        'BeeQuant AI',
        'Full Stack Developer',
        'Mar 2024 – July 2024',
        'Melbourne, VIC',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Full Stack Development','description', 'Developed password update feature with React and TypeScript for account management UI, with Java Spring Boot and RESTful API integrating PostgreSQL for updating user credentials'),
                JSON_OBJECT('title', 'Security & Encryption','description', 'Implemented security best practices, including encrypted password storage using bcrypt, JWT-based authentication, and OAuth2 for third-party sign-in to ensure secure user access'),
                JSON_OBJECT('title', 'Testing','description', 'Achieved 90% test coverage by writing unit and integration tests for both frontend (Jest) and backend (JUnit)'),
                JSON_OBJECT('title', 'AI Model','description', 'Developed BERT-based ML model using Python and PyTorch to predict cryptocurrency price trends by analysing the sentiment of tweets collected via Tweepy, achieving high precision and recall with an AUC of 0.85'),
                JSON_OBJECT('title', 'SEO Optimisation','description', 'Optimised SEO and reduced page load times by 40% through server-side rendering with Next.js, improving user experience and search engine rankings'),
                JSON_OBJECT('title', 'CI/CD Pipeline','description', 'Streamlined DevOps processes by automating CI/CD pipelines with GitHub Actions and Docker and migrating APIs to AWS Lambda, reducing deployment time by 50% and operational costs by 60%'),
                JSON_OBJECT('title', 'Team Collaboration','description', 'Collaborated closely with business analysis and DevOps teams to align development efforts with business requirements and ensure seamless deployment and scalability of the platform')
        )
);

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES (
        'Dunnhumby',
        'Applied Data Scientist Intern',
        'Jan 2022 – Apr 2022',
        'Shanghai, China',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Data Analysis','description', 'Expanded the capability of team''s data query tool by adding support for nested queries, including subqueries and aggregations, resulting in a 20% increase in query request coverage and enabling deeper data insights'),
                JSON_OBJECT('title', 'Data Query Tool Enhancement','description', 'Reorganised the query tool logic by centralising parameter settings at the top, making it more user-friendly and reducing setup time, which led to faster query execution and fewer user errors'),
                JSON_OBJECT('title', 'Targeted Customer Advertising System','description', 'Developed a machine learning-based advertising system that identified customers with declining loyalty, predicted their preferred products using logistic regression, and sent personalised promotional messages, achieving 12% conversion rate and 8% customer retention'),
                JSON_OBJECT('title', 'Team Collaboration','description', 'Utilised Microsoft Teams for effective communication and collaboration with team members, coordinating project tasks, sharing updates, and ensuring alignment on project goals and timelines')
        )
);

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES (
        'China University of Geosciences',
        'Research Assistant',
        'June 2020 – Feb 2021',
        'Wuhan, China',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Privacy-Preserving in Neural Network Training','description', 'Architected a data preprocessing pipeline by developing a pixel block mixing algorithm in Python with PyTorch, protecting image privacy during neural network training while maintaining high model accuracy'),
                JSON_OBJECT('title', 'Adversarial Sample Generation Based on Watermarking','description', 'Engineered a Python algorithm leveraging watermarking to generate adversarial examples that deceived TensorFlow DNNs on CIFAR-10 dataset with over 95% success, optimising processing time to 1.17s per image'),
                JSON_OBJECT('title', 'Fairness, Autonomy and Privacy in Big Data Exchange','description', 'Designed a Solidity-based blockchain platform with smart contracts and the oblivious transfer protocol, eliminating intermediaries to enable security and fairness in big data exchange')
        )
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'Personal Profile Website',
        'Full-Stack Web Application',
        JSON_ARRAY(
               JSON_OBJECT('title', 'Project Overview','description', 'Designed and developed a personal profile website to showcase my skills and projects'),
               JSON_OBJECT('title', 'Technologies Used','description', 'MySQL, Java Spring Boot, RESTful API, React-TypeScript, AWS: RDS, EC2, S3, CloudFront, Route 53, Load Balancer, and Lambda'),
               JSON_OBJECT('title', 'Backend Implementation','description', 'Developed a robust backend using Java Spring Boot, creating RESTful APIs hosted on an AWS EC2 instance and later migrated to AWS Lambda for cost efficiency'),
               JSON_OBJECT('title', 'Frontend Development','description', 'Built a responsive frontend using React with TypeScript, hosted on AWS S3, ensuring an optimal user experience across various devices'),
               JSON_OBJECT('title', 'Database Management','description', 'Employed MySQL hosted on AWS RDS for database management, ensuring secure and efficient data storage and retrieval'),
               JSON_OBJECT('title', 'Testing','description', 'Conducted unit tests and integration tests for the backend using JUnit, ensuring the reliability and robustness of the application'),
               JSON_OBJECT('title', 'Deployment','description', 'Ensured reliable online accessibility and scalability by deploying backend APIs on AWS Lambda, the database on AWS RDS, and the frontend on AWS S3'),
               JSON_OBJECT('title', 'CI/CD Pipeline','description', 'Used GitHub Actions to implement a CI/CD pipeline, automating the deployment process to continuously update website content'),
               JSON_OBJECT('title', 'Performance Optimisation','description', 'Used AWS CloudFront CDN for frontend content delivery, ensuring high availability and low latency, and employed Load Balancer to manage HTTPS traffic to the backend, leveraging AWS Certificate Manager for enhanced security'),
               JSON_OBJECT('title', 'Domain Management','description', 'Managed domain registration and DNS routing using AWS Route 53, ensuring seamless website access and optimal performance'),
               JSON_OBJECT('title', 'Coding Principles','description', 'Adhered to SOLID programming principles throughout the development, resulting in clean, maintainable, and scalable code that enhances future development and maintenance efforts')
        ),
        JSON_ARRAY('All', 'Web'),
        'https://github.com/oopshell/my-profile-website',
        'https://tiantian-li.me'
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'Game of Ethics',
        'Full-Stack Web Application',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'Engaged in developing a full-stack web app in a real industry setting, involving direct client communication'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'MEVN stack (MongoDB, Express.js, Vue.js, Node.js)'),
                JSON_OBJECT('title', 'Team Collaboration', 'description', 'Worked in a team of five, utilising the MEVN stack (MongoDB, Express.js, Vue.js, Node.js) to create a game addressing ethical issues in the Airline industry'),
                JSON_OBJECT('title', 'Agile Methodology', 'description', 'Involved in all Agile project phases: analysis, design, implementation, testing, management, and delivery'),
                JSON_OBJECT('title', 'Robust Login Function', 'description', 'Developed a robust login feature using MongoDB, effectively preventing multi-login conflicts, ensuring seamless user experience and data integrity'),
                JSON_OBJECT('title', 'Re-Join Feature', 'description', 'Implemented a re-join functionality allowing users to resume the game from their last state, significantly enhancing user engagement and satisfaction'),
                JSON_OBJECT('title', 'User Interface Enhancements', 'description', 'Improved the user interface by integrating real-time online/offline status indicators and a customisable game progress timer with Bootstrap on the game creation page, contributing to a more interactive and user-friendly experience'),
                JSON_OBJECT('title', 'Project Management', 'description', 'Managed project progress with Trello and documentation on Confluence, ensuring smooth team collaboration'),
                JSON_OBJECT('title', 'Delivery', 'description', 'Presented the final version to the client, demonstrating project success and receiving positive feedback')
        ),
        JSON_ARRAY('All', 'Web'),
        '',
        'http://d28tzhn3mqh229.cloudfront.net'
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'Bigfoot Sightings in North America',
        'Shiny Dashboard',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'Developed an interactive Shiny app to visualise and explore Bigfoot sighting data'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'R, Shiny, tidytuesdayR, RColorBrewer'),
                JSON_OBJECT('title', 'Multi-Tab Interface', 'description', 'Includes sections for introduction, sighting distribution, statistics, climate factors, and frequent words'),
                JSON_OBJECT('title', 'Interactive Visualizations', 'description', 'Features map and time-series plots of Bigfoot sightings with dynamic filtering'),
                JSON_OBJECT('title', 'Filter Options', 'description', 'Users can filter data by classification, year range, state, temperature, humidity, and moon phase'),
                JSON_OBJECT('title', 'Climate Analysis', 'description', 'Displays sightings affected by climate factors like moon phase, temperature, and precipitation'),
                JSON_OBJECT('title', 'Text Analysis', 'description', 'Provides a word cloud visualization of frequent words in reports, filtered by season and classification')
        ),
        JSON_ARRAY('All', 'Data Analysis'),
        'https://github.com/oopshell/tidytuesday-bigfoot-dashboard-shiny-app',
        ''
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'Sentiment Classifier',
        'Machine Learning Project',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview','description', 'Built sentiment classifiers using a Twitter dataset to predict user sentiments'),
                JSON_OBJECT('title', 'Technologies Used','description', 'Python, TensorFlow, Keras, Scikit-learn'),
                JSON_OBJECT('title', 'Machine Learning Models','description', 'Implemented four algorithms: K-Nearest Neighbors (KNN), Naive Bayes (NB), Logistic Regression (LR), and Multilayer Perceptron (MLP)'),
                JSON_OBJECT('title', 'Data Preprocessing','description', 'Cleaned and formatted data to ensure proper input for model training and testing'),
                JSON_OBJECT('title', 'Model Training & Evaluation','description', 'Achieved accuracy between 72% and 82% across all models, with precision, recall, and F1-scores consistently ranging from 70% to 81%, showing strong performance for sentiment classification')
        ),
        JSON_ARRAY('All', 'Machine Learning'),
        'https://github.com/oopshell/ML-basic-KNN-NB-LR-MLP-sentiment-classifier',
        ''
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'COVID19 Rumour Detection',
        'Machine Learning Project',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview','description', 'Developed a binary classifier to detect rumours in tweets and performed an in-depth analysis of COVID-19-related tweets'),
                JSON_OBJECT('title', 'Technologies Used','description', 'Python, TensorFlow/Keras, PyTorch, Twitter API, BERT, SVM, MLP, and SMOTE for model development and analysis'),
                JSON_OBJECT('title', 'Data Retrieval & Preprocessing','description', 'Retrieved over 15,000 tweet sets using Twitter API and Tweepy, cleaned text data by removing special characters, URLs, and emojis, and concatenated text for model input'),
                JSON_OBJECT('title', 'Model Development & Performance','description', 'Implemented SVM with TF-IDF and SMOTE for handling data imbalance, an MLP model with a bag-of-words approach, and BERT models (cased and uncased), achieving the highest F1 score (0.917) with the uncased BERT model'),
                JSON_OBJECT('title', 'Rumour Detection & Analysis','description', 'Applied the trained BERT model to classify COVID-19 tweets, identifying 20% as rumours, and performed analysis on the key topics, hashtags, and sentiment in these tweets'),
                JSON_OBJECT('title', 'Key Findings','description', 'Rumours focused on political figures (e.g., #Trump, #Wuhan), spread more negative sentiment, and were created by users with more followers compared to non-rumours')
        ),
        JSON_ARRAY('All', 'Machine Learning'),
        'https://github.com/oopshell/COVID19-Rumour-Detection',
        ''
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'Lucky Draw Competition',
        'Java Project',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'A Java-based application where members buy entries, and winners are drawn after each competition. It manages member balances, competition setup, and prize distribution based on randomly selected lucky numbers'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'Java'),
                JSON_OBJECT('title', 'Lucky Draw System', 'description', 'Developed a system where registered members can purchase lucky draw entries with their balance'),
                JSON_OBJECT('title', 'Competition Mechanism', 'description', 'Implemented a feature allowing competition owners to draw lucky entries after the competition ends'),
                JSON_OBJECT('title', 'Prize Distribution', 'description', 'Designed functionality for members to receive prizes based on purchased entries and lucky numbers'),
                JSON_OBJECT('title', 'Java-Based Implementation', 'description', 'The project is coded in Java, managing competitions, entries, and members through core classes like Member, Competition, and LuckyNumbersCompetition')
        ),
        JSON_ARRAY('All', 'Java'),
        'https://github.com/oopshell/lucky-draw-competition',
        ''
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'FAPS: A fair, autonomous and privacy-preserving scheme for big data exchange based on oblivious transfer, Ether cheque and smart contracts',
        'Publication',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'Developed a fair, autonomous data exchange system using smart contracts, removing the need for third-party arbitration'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'Ethereum smart contracts, oblivious transfer protocol, Solidity'),
                JSON_OBJECT('title', 'Privacy and Fairness', 'description', 'Integrated smart contracts for transaction fairness and timing control with the oblivious transfer protocol for privacy'),
                JSON_OBJECT('title', 'Ether Cheque System', 'description', 'Introduced a novel Ether cheque system to improve fairness and convenience in transactions'),
                JSON_OBJECT('title', 'Cost-Effective Transactions', 'description', 'Enabled autonomous, cost-efficient exchanges with mechanisms to detect cheating parties')
        ),
        JSON_ARRAY('All', 'Publication'),
        '',
        'https://doi.org/10.1016/j.ins.2020.08.116'
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'A lightweight privacy-preserving scheme using pixel block mixing for facial image classification in deep learning',
        'Publication',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'Developed a pixel block mixing algorithm for preserving privacy in facial image classification tasks'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'Python, PyTorch'),
                JSON_OBJECT('title', 'Performance', 'description', 'Achieved privacy protection without compromising model performance or training set availability'),
                JSON_OBJECT('title', 'Privacy Validation', 'description', 'SSIM comparison confirmed effective privacy preservation in the mixed dataset'),
                JSON_OBJECT('title', 'Training Enhancement', 'description', 'Demonstrated data augmentation can improve training effectiveness on the mixed set'),
                JSON_OBJECT('title', 'Security Assurance', 'description', 'Ensured that restoring the original dataset from the mixed version is computationally challenging for attackers'),
                JSON_OBJECT('title', 'Resources', 'description', 'Source code and methodology available on GitHub for transparency and reproducibility: github.com/oopshell/Pixel-Blocks-Mixing-For-Image-Privacy-Preservation')
        ),
        JSON_ARRAY('All', 'Publication'),
        'https://github.com/oopshell/Pixel-Blocks-Mixing-For-Image-Privacy-Preservation',
        'https://doi.org/10.1016/j.engappai.2023.107180'
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'AdvEWM: Watermark-Based Adversarial Example Generation for DNNs',
        'Publication',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'Developed AdvEWM, a framework embedding digital watermarks into images to create adversarial examples that fool DNNs'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'Python, TensorFlow'),
                JSON_OBJECT('title', 'Method', 'description', 'Employed improved DWT-based and DCT-based Patchwork watermarking algorithms for embedding nearly invisible watermark features'),
                JSON_OBJECT('title', 'Performance', 'description', 'Achieved up to 98.71% attack success on CIFAR-10, with an average generation time of 1.17 seconds per image'),
                JSON_OBJECT('title', 'Experimentation', 'description', 'Conducted baseline experiments using Gaussian noise watermarking, confirming effectiveness'),
                JSON_OBJECT('title', 'Impact', 'description', 'Demonstrated high attack success (average 95.47%) and efficient generation of adversarial examples'),
                JSON_OBJECT('title', 'Resources', 'description', 'Source code and methodology made available on GitHub (github.com/Y-Xiang-hub/AdvEWM) for reproducibility')
        ),
        JSON_ARRAY('All', 'Publication'),
        'https://github.com/Y-Xiang-hub/AdvEWM',
        'https://doi.org/10.1016/j.jisa.2023.103662'
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'BABD: A Bitcoin Address Behavior Dataset for Pattern Analysis',
        'Publication',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview','description', 'Proposed a framework for building a comprehensive Bitcoin transaction dataset and developed a subgraph generation algorithm'),
                JSON_OBJECT('title', 'Technologies Used','description', 'Python, PyTorch'),
                JSON_OBJECT('title', 'Dataset Creation','description', 'Proposed a framework for building a comprehensive Bitcoin transaction dataset (BABD-13) with 544,462 labeled data points, 13 types of Bitcoin addresses, 5 indicator categories, and 148 features'),
                JSON_OBJECT('title', 'Algorithm Development','description', 'Developed BTC-SubGen, an efficient subgraph generation algorithm to extract k-hop subgraphs from Bitcoin transaction graphs'),
                JSON_OBJECT('title', 'Machine Learning Application','description', 'Conducted 13-class classification tasks using machine learning models: k-nearest neighbors, decision tree, random forest, multilayer perceptron, and XGBoost, achieving accuracy rates between 93.24% and 97.13%'),
                JSON_OBJECT('title', 'Feature Importance Analysis','description', 'Analysed the relationships and importance of the proposed features and their impact on machine learning performance'),
                JSON_OBJECT('title', 'Behavior Pattern Insights','description', 'Performed a preliminary behavior pattern analysis of different Bitcoin address types, identifying meaningful trends and explainable behavior modes')
        ),
        JSON_ARRAY('All', 'Publication'),
        '',
        'https://doi.org/10.1109/TIFS.2023.3347894'
);

INSERT INTO project (name, description, detail, tag, git_url, preview_url)
VALUES (
        'Leveraging Subgraph Structure for Exploration and Analysis of Bitcoin Address',
        'Publication',
        JSON_ARRAY(
                JSON_OBJECT('title', 'Project Overview', 'description', 'Proposed BASD-8, the first Bitcoin address subgraph dataset, using machine learning and graph neural networks to classify Bitcoin addresses and enhance cryptocurrency security with a 91.35% f1-score'),
                JSON_OBJECT('title', 'Technologies Used', 'description', 'Python, PyTorch'),
                JSON_OBJECT('title', 'Dataset Creation', 'description', 'Developed BASD-8, the first Bitcoin address subgraph dataset, containing 3,830 labeled Bitcoin address subgraphs'),
                JSON_OBJECT('title', 'Research Focus', 'description', 'Focused on analyzing structural characteristics of Bitcoin subgraphs to identify and distinguish eight common types of Bitcoin addresses'),
                JSON_OBJECT('title', 'Objective', 'description', 'Aimed to classify addresses as normal or abnormal, helping prevent financial loss and improve community safety in cryptocurrency markets'),
                JSON_OBJECT('title', 'Analytical Approaches', 'description', 'Utilized three approaches to analyze subgraph patterns: complex network analysis, machine learning, and empirical analysis'),
                JSON_OBJECT('title', 'Feature Engineering', 'description', 'Extracted ten vital subgraph metrics as features to train basic machine learning classifiers'),
                JSON_OBJECT('title', 'Model Development', 'description', 'Trained a graph neural network (GNN) model as a graph-level classifier for Bitcoin addresses'),
                JSON_OBJECT('title', 'Performance', 'description', 'Achieved a best f1-score of 91.35%, demonstrating the effectiveness of the dataset and the methods used'),
                JSON_OBJECT('title', 'Empirical Insights', 'description', 'Conducted an in-depth empirical analysis that combined subgraph structures with the definitions of each category of Bitcoin addresses')
        ),
        JSON_ARRAY('All', 'Publication'),
        '',
        'https://doi.org/10.1109/BigData55660.2022.10020980'
);
