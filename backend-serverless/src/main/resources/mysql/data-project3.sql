-- Insert project data

-- Insert into project table

INSERT INTO project (slug, name, description, git_url, preview_url) VALUES
    ('bigfoot-sightings', 'Bigfoot Sightings in North America', 'Shiny Dashboard', 'https://github.com/oopshell/tidytuesday-bigfoot-dashboard-shiny-app', '');
SET @project_id_3 = LAST_INSERT_ID();

-- Insert into project_detail table

-- Project Details for "Bigfoot Sightings in North America"
INSERT INTO project_detail (project_id, title, description) VALUES
    (@project_id_3, 'Project Overview', 'Developed an interactive Shiny app to visualise and explore Bigfoot sighting data'),
    (@project_id_3, 'Technologies Used', 'R, Shiny, tidytuesdayR, RColorBrewer'),
    (@project_id_3, 'Multi-Tab Interface', 'Includes sections for introduction, sighting distribution, statistics, climate factors, and frequent words'),
    (@project_id_3, 'Interactive Visualizations', 'Features map and time-series plots of Bigfoot sightings with dynamic filtering'),
    (@project_id_3, 'Filter Options', 'Users can filter data by classification, year range, state, temperature, humidity, and moon phase'),
    (@project_id_3, 'Climate Analysis', 'Displays sightings affected by climate factors like moon phase, temperature, and precipitation'),
    (@project_id_3, 'Text Analysis', 'Provides a word cloud visualization of frequent words in reports, filtered by season and classification');
