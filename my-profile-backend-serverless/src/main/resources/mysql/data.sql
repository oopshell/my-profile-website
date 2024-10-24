INSERT INTO skill (category, items) VALUES
    ('Languages', 'Java, JavaScript, TypeScript, Python, R, Solidity, C'),
    ('Frontend', 'HTML5, CSS, SASS, React.js, Next.js, Vue.js, Bootstrap, Vite'),
    ('Backend', 'Node.js, Spring Boot, Express.js, GraphQL, Nest.js'),
    ('Databases', 'MySQL, PostgreSQL, MongoDB, QGIS, Tableau'),
    ('Testing', 'Jest, JUnit, TDD, BDD, Unit Test, Integration Test'),
    ('Tools', 'Docker, Git, Postman, Jira, Trello, Confluence, Slack, Microsoft Teams'),
    ('Cloud Services', 'AWS: RDS, EC2, S3, CloudFront, Route 53, Load Balancer, Lambda'),
    ('Other', 'REST APIs, Agile, CI/CD, OAuth, Data Visualisation, SEO');

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES
    ('BeeQuant AI', 'Full Stack Developer', 'Mar 2024 – July 2024', 'Melbourne, VIC',
    '[
    {
        "title": "Full Stack Development",
        "description": "Developed password update feature with React and TypeScript for account management UI, with Java Spring Boot and RESTful API integrating PostgreSQL for updating user credentials"
    },
    {
        "title": "Security & Encryption",
        "description": "Implemented security best practices, including encrypted password storage using bcrypt, JWT-based authentication, and OAuth2 for third-party sign-in to ensure secure user access"
    },
    {
        "title": "Testing",
        "description": "Achieved 90% test coverage by writing unit and integration tests for both frontend (Jest) and backend (JUnit)"
    },
    {
        "title": "AI Model",
        "description": "Developed BERT-based ML model using Python and PyTorch to predict cryptocurrency price trends by analysing the sentiment of tweets collected via Tweepy, achieving high precision and recall with an AUC of 0.85"
    },
    {
        "title": "SEO Optimisation",
        "description": "Optimised SEO and reduced page load times by 40% through server-side rendering with Next.js, improving user experience and search engine rankings"
    },
    {
        "title": "CI/CD Pipeline",
        "description": "Streamlined DevOps processes by automating CI/CD pipelines with GitHub Actions and Docker and migrating APIs to AWS Lambda, reducing deployment time by 50% and operational costs by 60%"
    },
    {
        "title": "Team Collaboration",
        "description": "Collaborated closely with business analysis and DevOps teams to align development efforts with business requirements and ensure seamless deployment and scalability of the platform"
    }
]');

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES
    ('Dunnhumby', 'Applied Data Scientist Intern', 'Jan 2022 – Apr 2022', 'Shanghai, China',
    '[
    {
        "title": "Data Analysis",
        "description": "Expanded the capability of team''s data query tool by adding support for nested queries, including subqueries and aggregations, resulting in a 20% increase in query request coverage and enabling deeper data insights"
    },
    {
        "title": "Data Query Tool Enhancement",
        "description": "Reorganised the query tool logic by centralising parameter settings at the top, making it more user-friendly and reducing setup time, which led to faster query execution and fewer user errors"
    },
    {
        "title": "Targeted Customer Advertising System",
        "description": "Developed a machine learning-based advertising system that identified customers with declining loyalty, predicted their preferred products using logistic regression, and sent personalised promotional messages, achieving 12% conversion rate and 8% customer retention"
    },
    {
        "title": "Team Collaboration",
        "description": "Utilised Microsoft Teams for effective communication and collaboration with team members, coordinating project tasks, sharing updates, and ensuring alignment on project goals and timelines"
    }
]');

INSERT INTO experience (company_name, job_title, date_range, location, description)
VALUES
    ('China University of Geosciences', 'Research Assistant', 'June 2020 – Feb 2021', 'Wuhan, China',
     '[
     {
         "title": "Privacy-Preserving in Neural Network Training",
         "description": "Architected a data preprocessing pipeline by developing a pixel block mixing algorithm in Python with PyTorch, protecting image privacy during neural network training while maintaining high model accuracy"
     },
     {
         "title": "Adversarial Sample Generation Based on Watermarking",
         "description": "Engineered a Python algorithm leveraging watermarking to generate adversarial examples that deceived TensorFlow DNNs on CIFAR-10 dataset with over 95% success, optimising processing time to 1.17s per image"
     },
     {
         "title": "Fairness, Autonomy and Privacy in Big Data Exchange",
         "description": "Designed a Solidity-based blockchain platform with smart contracts and the oblivious transfer protocol, eliminating intermediaries to enable security and fairness in big data exchange"
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Personal Profile Website', 'Full-Stack Web Application', 'https://tiantian-li.me',
     '[
     {
         "title": "Project Overview",
         "description": "Designed and developed a personal profile website to showcase my skills and projects"
     },
     {
         "title": "Technologies Used",
         "description": "MySQL, Java Spring Boot, RESTful API, React-TypeScript, AWS: RDS, EC2, S3, CloudFront, Route 53, Load Balancer, and Lambda"
     },
     {
         "title": "Backend Implementation",
         "description": "Developed a robust backend using Java Spring Boot, creating RESTful APIs hosted on an AWS EC2 instance and later migrated to AWS Lambda for cost efficiency"
     },
     {
         "title": "Frontend Development",
         "description": "Built a responsive frontend using React with TypeScript, hosted on AWS S3, ensuring an optimal user experience across various devices"
     },
     {
         "title": "Database Management",
         "description": "Employed MySQL hosted on AWS RDS for database management, ensuring secure and efficient data storage and retrieval"
     },
     {
         "title": "Testing",
         "description": "Conducted unit tests and integration tests for the backend using JUnit, ensuring the reliability and robustness of the application"
     },
     {
         "title": "Deployment",
         "description": "Ensured reliable online accessibility and scalability by deploying backend APIs on AWS Lambda, the database on AWS RDS, and the frontend on AWS S3"
     },
     {
         "title": "CI/CD Pipeline",
         "description": "Used GitHub Actions to implement a CI/CD pipeline, automating the deployment process to continuously update website content"
     },
     {
         "title": "Performance Optimisation",
         "description": "Used AWS CloudFront CDN for frontend content delivery, ensuring high availability and low latency, and employed Load Balancer to manage HTTPS traffic to the backend, leveraging AWS Certificate Manager for enhanced security"
     },
     {
         "title": "Domain Management",
         "description": "Managed domain registration and DNS routing using AWS Route 53, ensuring seamless website access and optimal performance"
     },
     {
         "title": "Coding Principles",
         "description": "Adhered to SOLID programming principles throughout the development, resulting in clean, maintainable, and scalable code that enhances future development and maintenance efforts"
     },
     {
         "title": "GitHub Repository",
         "description": "github.com/oopshell/my-profile-website"
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Game of Ethics', 'Full-Stack Web Application', 'http://d28tzhn3mqh229.cloudfront.net',
    '[
    {
        "title": "Project Overview",
        "description": "Engaged in developing a full-stack web app in a real industry setting, involving direct client communication"
    },
    {
        "title": "Technologies Used",
        "description": "MEVN stack (MongoDB, Express.js, Vue.js, Node.js)"
    },
    {
        "title": "Team Collaboration",
        "description": "Worked in a team of five, utilising the MEVN stack (MongoDB, Express.js, Vue.js, Node.js) to create a game addressing ethical issues in the Airline industry"
    },
    {
        "title": "Agile Methodology",
        "description": "Involved in all Agile project phases: analysis, design, implementation, testing, management, and delivery"
    },
    {
        "title": "Robust Login Function",
        "description": "Developed a robust login feature using MongoDB, effectively preventing multi-login conflicts, ensuring seamless user experience and data integrity"
    },
    {
        "title": "Re-Join Feature",
        "description": "Implemented a re-join functionality allowing users to resume the game from their last state, significantly enhancing user engagement and satisfaction"
    },
    {
        "title": "User Interface Enhancements",
        "description": "Improved the user interface by integrating real-time online/offline status indicators and a customisable game progress timer with Bootstrap on the game creation page, contributing to a more interactive and user-friendly experience"
    },
    {
        "title": "Project Management",
        "description": "Managed project progress with Trello and documentation on Confluence, ensuring smooth team collaboration"
    },
    {
        "title": "Delivery",
        "description": "Presented the final version to the client, demonstrating project success and receiving positive feedback"
    }
]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Bigfoot Sightings in North America', 'Shiny Dashboard', 'https://github.com/oopshell/tidytuesday-bigfoot-dashboard-shiny-app',
     '[
     {
         "title": "Project Overview",
         "description": "Developed an interactive Shiny app to visualise and explore Bigfoot sighting data"
     },
     {
         "title": "Technologies Used",
         "description": "R, Shiny, tidytuesdayR, RColorBrewer"
     },
     {
         "title": "Multi-Tab Interface",
         "description": "Includes sections for introduction, sighting distribution, statistics, climate factors, and frequent words"
     },
     {
         "title": "Interactive Visualizations",
         "description": "Features map and time-series plots of Bigfoot sightings with dynamic filtering"
     },
     {
         "title": "Filter Options",
         "description": "Users can filter data by classification, year range, state, temperature, humidity, and moon phase"
     },
     {
         "title": "Climate Analysis",
         "description": "Displays sightings affected by climate factors like moon phase, temperature, and precipitation"
     },
     {
         "title": "Text Analysis",
         "description": "Provides a word cloud visualization of frequent words in reports, filtered by season and classification"
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Sentiment Classifier', 'Machine Learning Project', 'https://github.com/oopshell/ML-basic-KNN-NB-LR-MLP-sentiment-classifier',
     '[
     {
         "title": "Project Overview",
         "description": "Built sentiment classifiers using a Twitter dataset to predict user sentiments"
     },
     {
         "title": "Technologies Used",
         "description": "Python, TensorFlow, Keras, Scikit-learn"
     },
     {
         "title": "Machine Learning Models",
         "description": "Implemented four algorithms: K-Nearest Neighbors (KNN), Naive Bayes (NB), Logistic Regression (LR), and Multilayer Perceptron (MLP)"
     },
     {
         "title": "Data Preprocessing",
         "description": "Cleaned and formatted data to ensure proper input for model training and testing"
     },
     {
         "title": "Model Training & Evaluation",
         "description": "Achieved accuracy between 72% and 82% across all models, with precision, recall, and F1-scores consistently ranging from 70% to 81%, showing strong performance for sentiment classification"
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('COVID19 Rumour Detection', 'Machine Learning Project', 'https://github.com/oopshell/COVID19-Rumour-Detection',
     '[
     {
         "title": "Project Overview",
         "description": "Developed a binary classifier to detect rumours in tweets and performed an in-depth analysis of COVID-19-related tweets"
     },
     {
         "title": "Technologies Used",
         "description": "Python, TensorFlow/Keras, PyTorch, Twitter API, BERT, SVM, MLP, and SMOTE for model development and analysis"
     },
     {
         "title": "Data Retrieval & Preprocessing",
         "description": "Retrieved over 15,000 tweet sets using Twitter API and Tweepy, cleaned text data by removing special characters, URLs, and emojis, and concatenated text for model input"
     },
     {
         "title": "Model Development & Performance",
         "description": "Implemented SVM with TF-IDF and SMOTE for handling data imbalance, an MLP model with a bag-of-words approach, and BERT models (cased and uncased), achieving the highest F1 score (0.917) with the uncased BERT model"
     },
     {
         "title": "Rumour Detection & Analysis",
         "description": "Applied the trained BERT model to classify COVID-19 tweets, identifying 20% as rumours, and performed analysis on the key topics, hashtags, and sentiment in these tweets"
     },
     {
         "title": "Key Findings",
         "description": "Rumours focused on political figures (e.g., #Trump, #Wuhan), spread more negative sentiment, and were created by users with more followers compared to non-rumours"
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Lucky Draw Competition', 'Java Project', 'https://github.com/oopshell/lucky-draw-competition',
     '[
     {
         "title": "Project Overview",
         "description": "A Java-based application where members buy entries, and winners are drawn after each competition. It manages member balances, competition setup, and prize distribution based on randomly selected lucky numbers"
     },
     {
         "title": "Technologies Used",
         "description": "Java"
     },
     {
         "title": "Lucky Draw System",
         "description": "Developed a system where registered members can purchase lucky draw entries with their balance"
     },
     {
         "title": "Competition Mechanism",
         "description": "Implemented a feature allowing competition owners to draw lucky entries after the competition ends"
     },
     {
         "title": "Prize Distribution",
         "description": "Designed functionality for members to receive prizes based on purchased entries and lucky numbers"
     },
     {
         "title": "Java-Based Implementation",
         "description": "The project is coded in Java, managing competitions, entries, and members through core classes like Member, Competition, and LuckyNumbersCompetition"
     }
 ]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('FAPS: A fair, autonomous and privacy-preserving scheme for big data exchange based on oblivious transfer, Ether cheque and smart contracts', 'Publication', 'https://doi.org/10.1016/j.ins.2020.08.116',
    '[
    {
        "title": "Project Overview",
        "description": "Developed a fair, autonomous data exchange system using smart contracts, removing the need for third-party arbitration"
    },
    {
        "title": "Technologies Used",
        "description": "Ethereum smart contracts, oblivious transfer protocol, Solidity"
    },
    {
        "title": "Privacy and Fairness",
        "description": "Integrated smart contracts for transaction fairness and timing control with the oblivious transfer protocol for privacy"
    },
    {
        "title": "Ether Cheque System",
        "description": "Introduced a novel Ether cheque system to improve fairness and convenience in transactions"
    },
    {
        "title": "Cost-Effective Transactions",
        "description": "Enabled autonomous, cost-efficient exchanges with mechanisms to detect cheating parties"
    }
]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('A lightweight privacy-preserving scheme using pixel block mixing for facial image classification in deep learning', 'Publication', 'https://doi.org/10.1016/j.engappai.2023.107180',
    '[
    {
        "title": "Project Overview",
        "description": "Developed a pixel block mixing algorithm for preserving privacy in facial image classification tasks"
    },
    {
        "title": "Technologies Used",
        "description": "Python, PyTorch"
    },
    {
        "title": "Performance",
        "description": "Achieved privacy protection without compromising model performance or training set availability"
    },
    {
        "title": "Privacy Validation",
        "description": "SSIM comparison confirmed effective privacy preservation in the mixed dataset"
    },
    {
        "title": "Training Enhancement",
        "description": "Demonstrated data augmentation can improve training effectiveness on the mixed set"
    },
    {
        "title": "Security Assurance",
        "description": "Ensured that restoring the original dataset from the mixed version is computationally challenging for attackers"
    },
    {
        "title": "Resources",
        "description": "Source code and methodology available on GitHub for transparency and reproducibility: github.com/oopshell/Pixel-Blocks-Mixing-For-Image-Privacy-Preservation"
    }
]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('AdvEWM: Watermark-Based Adversarial Example Generation for DNNs', 'Publication', 'https://doi.org/10.1016/j.jisa.2023.103662',
    '[
    {
        "title": "Project Overview",
        "description": "Developed AdvEWM, a framework embedding digital watermarks into images to create adversarial examples that fool DNNs"
    },
    {
        "title": "Technologies Used",
        "description": "Python, TensorFlow"
    },
    {
        "title": "Method",
        "description": "Employed improved DWT-based and DCT-based Patchwork watermarking algorithms for embedding nearly invisible watermark features"
    },
    {
        "title": "Performance",
        "description": "Achieved up to 98.71% attack success on CIFAR-10, with an average generation time of 1.17 seconds per image"
    },
    {
        "title": "Experimentation",
        "description": "Conducted baseline experiments using Gaussian noise watermarking, confirming effectiveness"
    },
    {
        "title": "Impact",
        "description": "Demonstrated high attack success (average 95.47%) and efficient generation of adversarial examples"
    },
    {
        "title": "Resources",
        "description": "Source code and methodology made available on GitHub (github.com/Y-Xiang-hub/AdvEWM) for reproducibility"
    }
]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('BABD: A Bitcoin Address Behavior Dataset for Pattern Analysis', 'Publication', 'https://doi.org/10.1109/TIFS.2023.3347894',
    '[
    {
        "title": "Project Overview",
        "description": "Proposed a framework for building a comprehensive Bitcoin transaction dataset and developed a subgraph generation algorithm"
    },
    {
        "title": "Technologies Used",
        "description": "Python, PyTorch"
    },
    {
        "title": "Dataset Creation",
        "description": "Proposed a framework for building a comprehensive Bitcoin transaction dataset (BABD-13) with 544,462 labeled data points, 13 types of Bitcoin addresses, 5 indicator categories, and 148 features"
    },
    {
        "title": "Algorithm Development",
        "description": "Developed BTC-SubGen, an efficient subgraph generation algorithm to extract k-hop subgraphs from Bitcoin transaction graphs"
    },
    {
        "title": "Machine Learning Application",
        "description": "Conducted 13-class classification tasks using machine learning models: k-nearest neighbors, decision tree, random forest, multilayer perceptron, and XGBoost, achieving accuracy rates between 93.24% and 97.13%"
    },
    {
        "title": "Feature Importance Analysis",
        "description": "Analysed the relationships and importance of the proposed features and their impact on machine learning performance"
    },
    {
        "title": "Behavior Pattern Insights",
        "description": "Performed a preliminary behavior pattern analysis of different Bitcoin address types, identifying meaningful trends and explainable behavior modes"
    }
]');

INSERT INTO project (name, description, link, detail)
VALUES
    ('Leveraging Subgraph Structure for Exploration and Analysis of Bitcoin Address', 'Publication', 'https://doi.org/10.1109/BigData55660.2022.10020980',
     '[
     {
         "title": "Project Overview",
         "description": "Proposed BASD-8, the first Bitcoin address subgraph dataset, using machine learning and graph neural networks to classify Bitcoin addresses and enhance cryptocurrency security with a 91.35% f1-score"
     },
     {
         "title": "Technologies Used",
         "description": "Python, PyTorch"
     },
     {
         "title": "Dataset Creation",
         "description": "Developed BASD-8, the first Bitcoin address subgraph dataset, containing 3,830 labeled Bitcoin address subgraphs"
     },
     {
         "title": "Research Focus",
         "description": "Focused on analyzing structural characteristics of Bitcoin subgraphs to identify and distinguish eight common types of Bitcoin addresses"
     },
     {
         "title": "Objective",
         "description": "Aimed to classify addresses as normal or abnormal, helping prevent financial loss and improve community safety in cryptocurrency markets"
     },
     {
         "title": "Analytical Approaches",
         "description": "Utilized three approaches to analyze subgraph patterns: complex network analysis, machine learning, and empirical analysis"
     },
     {
         "title": "Feature Engineering",
         "description": "Extracted ten vital subgraph metrics as features to train basic machine learning classifiers"
     },
     {
         "title": "Model Development",
         "description": "Trained a graph neural network (GNN) model as a graph-level classifier for Bitcoin addresses"
     },
     {
         "title": "Performance",
         "description": "Achieved a best f1-score of 91.35%, demonstrating the effectiveness of the dataset and the methods used"
     },
     {
         "title": "Empirical Insights",
         "description": "Conducted an in-depth empirical analysis that combined subgraph structures with the definitions of each category of Bitcoin addresses"
     }
]');
