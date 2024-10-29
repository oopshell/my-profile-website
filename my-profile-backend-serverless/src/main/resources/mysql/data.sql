
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
