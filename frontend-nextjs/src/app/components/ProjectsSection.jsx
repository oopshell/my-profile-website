"use client";
import React, { useState, useRef, useEffect } from "react";
import ProjectCard from "./ProjectCard";
import TestProjectCard from "./TestProjectCard";
import ProjectTag from "./ProjectTag";
import { motion, useInView } from "framer-motion";

const ProjectsSection = () => {
  const [tag, setTag] = useState("All");
  const [projects, setProjects] = useState([]);
  const [tags, setTags] = useState(["All"]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState(null);
  const ref = useRef(null);
  const isInView = useInView(ref, { once: true });

  useEffect(() => {
    const fetchTags = async () => {
      try {
        const response = await fetch('/api/project-tags');
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        setTags(['All', ...data.filter(tag => tag.tagName !== 'All').map(tag => tag.tagName)]);
      } catch (error) {
        console.error('Error fetching tags:', error);
        setError('Failed to load project tags');
      }
    };

    const fetchProjects = async () => {
      try {
        const response = await fetch('/api/projects');
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        setProjects(data);
      } catch (error) {
        console.error('Error fetching projects:', error);
        setError('Failed to load projects');
      } finally {
        setIsLoading(false);
      }
    };

    fetchTags();
    fetchProjects();
  }, []);

  const handleTagChange = (newTag) => {
    setTag(newTag);
  };

  const filteredProjects = projects.filter((project) => {
    if (tag === "All") return true;
    return project.tags && Array.isArray(project.tags) && project.tags.some(t => t.tagName === tag);
  });

  if (error) {
    return (
      <section id="projects">
        <h2 className="text-center text-4xl font-bold text-white mt-4 mb-8 md:mb-12">
          My Projects
        </h2>
        <div className="flex justify-center items-center min-h-[60vh]">
          <p className="text-red-500">{error}</p>
        </div>
      </section>
    );
  }

  if (isLoading) {
    return (
      <section id="projects">
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
    <section id="projects" className="min-h-screen">
      <h2 className="text-center text-4xl font-bold text-white mt-4 mb-8 md:mb-12">
        My Projects
      </h2>
      <div className="text-white flex flex-row justify-center items-center gap-2 py-6">
        {tags.map((tagName) => (
          <ProjectTag
            key={tagName}
            onClick={handleTagChange}
            name={tagName}
            isSelected={tag === tagName}
          />
        ))}
      </div>
      <motion.div
        ref={ref}
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="container mx-auto px-4"
      >
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {filteredProjects.length === 0 ? (
            <div className="col-span-full text-center text-white text-xl">
              No projects found for this tag
            </div>
          ) : (
            filteredProjects.map((project) => (
              <div key={project.projectId}>
                <ProjectCard
                  slug={project.slug}
                  title={project.name}
                  description={project.description}
                  imgUrl={`https://my-profile-projects.s3.ap-southeast-2.amazonaws.com/${project.slug}.png`}
                  gitUrl={project.gitUrl}
                  previewUrl={project.previewUrl}
                />
              </div>
            ))
          )}
        </div>
      </motion.div>
    </section>
  );
};

export default ProjectsSection;
