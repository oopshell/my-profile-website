"use client";
import React, { useState, useRef, useEffect } from "react";
import ProjectCard from "./ProjectCard";
import ProjectTag from "./ProjectTag";
import { motion, useInView } from "framer-motion";

const ProjectsSection = () => {
  const [tag, setTag] = useState("All");
  const [projects, setProjects] = useState([]);
  const [tags, setTags] = useState(["All"]);
  const [isLoading, setIsLoading] = useState(true);
  const ref = useRef(null);
  const isInView = useInView(ref, { once: true });

  useEffect(() => {
    const fetchTags = async () => {
      try {
        const response = await fetch('https://d3ufl59cmg25n3.cloudfront.net/prod/api/v1/projects/project-tags');
        const data = await response.json();
        console.log('Fetched tags:', data);
        setTags(['All', ...data.filter(tag => tag.tagName !== 'All').map(tag => tag.tagName)]);
      } catch (error) {
        console.error('Error fetching tags:', error);
      }
    };

    const fetchProjects = async () => {
      try {
        const response = await fetch('https://d3ufl59cmg25n3.cloudfront.net/prod/api/v1/projects');
        const data = await response.json();
        console.log('Fetched projects:', data);
        setProjects(data);
      } catch (error) {
        console.error('Error fetching projects:', error);
      } finally {
        setIsLoading(false);
      }
    };

    fetchTags();
    fetchProjects();
  }, []);

  const handleTagChange = (newTag) => {
    console.log('Tag changed to:', newTag);
    setTag(newTag);
  };

  const filteredProjects = projects.filter((project) => {
    console.log('Filtering project:', project.name);
    console.log('Current tag:', tag);
    console.log('Project tags:', project.tags);
    if (tag === "All") {
      console.log('Showing all projects');
      return true;
    }
    const hasMatchingTag = project.tags && Array.isArray(project.tags) && project.tags.some(t => {
      console.log('Checking tag:', t.tagName, 'against:', tag);
      return t.tagName === tag;
    });
    console.log('Has matching tag:', hasMatchingTag);
    return hasMatchingTag;
  });

  console.log('Filtered projects:', filteredProjects);

  const cardVariants = {
    initial: { y: 50, opacity: 0 },
    animate: { y: 0, opacity: 1 },
  };

  if (isLoading) {
    return (
      <section id="projects" className="min-h-screen">
        <h2 className="text-center text-4xl font-bold text-white mt-4 mb-8 md:mb-12">
          My Projects
        </h2>
        <div className="flex justify-center items-center min-h-[60vh]">
          <div className="animate-spin rounded-full h-16 w-16 border-t-2 border-b-2 border-white"></div>
        </div>
      </section>
    );
  }

  return (
    <section id="projects">
      <h2 className="text-center text-4xl font-bold text-white mt-4 mb-8 md:mb-12">
        My Projects
      </h2>
      <div className="text-white flex flex-row justify-center items-center gap-2 py-6 flex-wrap">
        {tags.map((tagName) => {
          console.log('Rendering tag:', tagName);
          return (
            <ProjectTag
              key={tagName}
              onClick={handleTagChange}
              name={tagName}
              isSelected={tag === tagName}
            />
          );
        })}
      </div>
      <ul ref={ref} className="grid md:grid-cols-3 gap-8 md:gap-12">
        {filteredProjects.length > 0 ? (
          filteredProjects.map((project, index) => {
            console.log('Rendering project:', project.name);
            return (
              <motion.li
                key={project.projectId}
                variants={cardVariants}
                initial="initial"
                animate={isInView ? "animate" : "initial"}
                transition={{ duration: 0.3, delay: index * 0.4 }}
              >
                <ProjectCard
                  key={project.projectId}
                  slug={project.slug}
                  title={project.name}
                  description={project.description}
                  imgUrl={`/images/projects/${project.slug}.png`}
                  gitUrl={project.gitUrl}
                  previewUrl={project.previewUrl}
                />
              </motion.li>
            );
          })
        ) : (
          <div className="col-span-3 text-center text-white">
            No projects found for this tag.
          </div>
        )}
      </ul>
    </section>
  );
};

export default ProjectsSection;
