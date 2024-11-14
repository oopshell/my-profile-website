-- Insert project 2 data

-- Insert into project table

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('game-of-ethics', 'Game of Ethics', 'Full-Stack Web Application', '', 'http://d28tzhn3mqh229.cloudfront.net');
SET @project_id_2 = LAST_INSERT_ID();

-- Insert into project_detail table

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
