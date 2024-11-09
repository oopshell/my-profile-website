"use client";
import React, { useState, useRef } from "react";
import ProjectCard from "./ProjectCard";
import ProjectTag from "./ProjectTag";
import { motion, useInView } from "framer-motion";

const projectsData = [
  {
    id: 1,
    title: "Personal Profile Website",
    description: "Full-stack personal website using Java Spring Boot, React-TypeScript, and AWS services with CI/CD automation, performance optimization, and secure deployment",
    image: "/images/projects/1.png",
    tag: ["All", "Web", "Java"],
    gitUrl: "https://github.com/oopshell/my-profile-website",
    previewUrl: "https://tiantian-li.me",
  },
  {
    id: 2,
    title: "Game of Ethics",
    description: "Full-stack MEVN web app for airline ethics game, developed with Agile methodology, featuring robust login, re-join function, real-time UI enhancements, and client collaboration",
    image: "/images/projects/2.png",
    tag: ["All", "Web", "Java"],
    gitUrl: "http://d28tzhn3mqh229.cloudfront.net",
    previewUrl: "/",
  },
  {
    id: 3,
    title: "Bigfoot Sightings in North America",
    description: "Interactive Shiny app for exploring and analyzing Bigfoot sightings with climate and text insights",
    image: "/images/projects/3.png",
    tag: ["All", "Data Visualisation"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 4,
    title: "Sentiment Classifier",
    description: "Twitter Sentiment Classifier using ML Algorithms",
    image: "/images/projects/4.png",
    tag: ["All", "Machine Learning"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 5,
    title: "COVID19 Rumour Detection",
    description: "COVID-19 Rumor Detection in Tweets using Machine Learning Models",
    image: "/images/projects/5.png",
    tag: ["All", "Machine Learning"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 6,
    title: "Lucky Draw Competition",
    description: "Java-Based Lucky Draw System for Competitions and Prize Distribution",
    image: "/images/projects/6.png",
    tag: ["All", "Java"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 7,
    title: "FAPS: A fair, autonomous and privacy-preserving scheme for big data exchange based on oblivious transfer, Ether cheque and smart contracts",
    description: "Autonomous, fair data exchange using Ethereum smart contracts for secure, private, and cost-effective transactions",
    image: "/images/projects/7.png",
    tag: ["All", "Research"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 8,
    title: "A lightweight privacy-preserving scheme using pixel block mixing for facial image classification in deep learning",
    description: "Privacy-preserving facial classification using pixel block mixing algorithm with robust security and performance",
    image: "/images/projects/8.png",
    tag: ["All", "Research", "Machine Learning"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 9,
    title: "AdvEWM: Watermark-Based Adversarial Example Generation for DNNs",
    description: "Adversarial image watermarking framework for fooling dnns with high success and efficiency",
    image: "/images/projects/9.png",
    tag: ["All", "Research", "Machine Learning"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 10,
    title: "BABD: A Bitcoin Address Behavior Dataset for Pattern Analysis",
    description: "Comprehensive Bitcoin transaction dataset creation, subgraph generation, and behavior analysis using machine learning for address classification and feature importance insights",
    image: "/images/projects/10.png",
    tag: ["All", "Research", "Machine Learning"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 11,
    title: "Leveraging Subgraph Structure for Exploration and Analysis of Bitcoin Address",
    description: "Bitcoin address classification using machine learning and graph neural networks to enhance cryptocurrency security with a 91.35% accuracy",
    image: "/images/projects/11.png",
    tag: ["All", "Research", "Machine Learning"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 12,
    title: "Drone Management Database for Universities",
    description: "Spatial Database for University Drone Management with CASA Compliance and Real-time Operational Support",
    image: "/images/projects/12.png",
    tag: ["All", "GIS"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 13,
    title: "Visualising Road Safety: Crash Analysis for VicRoads",
    description: "Interactive Tableau dashboard analyzing Melbourne crash data, providing insights and recommendations for VicRoads to enhance road safety",
    image: "/images/projects/13.png",
    tag: ["All", "Data Visualisation"],
    gitUrl: "/",
    previewUrl: "/",
  },
  {
    id: 14,
    title: "Explore Melbourne: Interactive Tourist Guide",
    description: "Interactive trip website for Melbourne tourists provides easy access to attractions, weather, transport options, and city maps",
    image: "/images/projects/14.png",
    tag: ["All", "Data Visualisation"],
    gitUrl: "/",
    previewUrl: "/",
  },
  // {
  //   id: 15,
  //   title: "disparity",
  //   description: "",
  //   image: "/images/projects/15.png",
  //   tag: ["All", "Computer Vision"],
  //   gitUrl: "/",
  //   previewUrl: "/",
  // },
  // {
  //   id: 16,
  //   title: "Smart Contract Auction System",
  //   description: "",
  //   image: "/images/projects/16.png",
  //   tag: ["All", "Blockchain"],
  //   gitUrl: "/",
  //   previewUrl: "/",
  // },
];

const ProjectsSection = () => {
  const [tag, setTag] = useState("All");
  const ref = useRef(null);
  const isInView = useInView(ref, { once: true });

  const handleTagChange = (newTag) => {
    setTag(newTag);
  };

  const filteredProjects = projectsData.filter((project) =>
    project.tag.includes(tag)
  );

  const cardVariants = {
    initial: { y: 50, opacity: 0 },
    animate: { y: 0, opacity: 1 },
  };

  return (
    <section id="projects">
      <h2 className="text-center text-4xl font-bold text-white mt-4 mb-8 md:mb-12">
        My Projects
      </h2>
      <div className="text-white flex flex-row justify-center items-center gap-2 py-6">
        <ProjectTag
          onClick={handleTagChange}
          name="All"
          isSelected={tag === "All"}
        />
        <ProjectTag
          onClick={handleTagChange}
          name="Web"
          isSelected={tag === "Web"}
        />
        <ProjectTag
          onClick={handleTagChange}
          name="Java"
          isSelected={tag === "Java"}
        />
        <ProjectTag
          onClick={handleTagChange}
          name="GIS"
          isSelected={tag === "GIS"}
        />
        <ProjectTag
          onClick={handleTagChange}
          name="Data Visualisation"
          isSelected={tag === "Data Visualisation"}
        />
        {/* <ProjectTag
          onClick={handleTagChange}
          name="Computer Vision"
          isSelected={tag === "Computer Vision"}
        /> */}
        <ProjectTag
          onClick={handleTagChange}
          name="Machine Learning"
          isSelected={tag === "Machine Learning"}
        />
        <ProjectTag
          onClick={handleTagChange}
          name="Research"
          isSelected={tag === "Research"}
        />
      </div>
      <ul ref={ref} className="grid md:grid-cols-3 gap-8 md:gap-12">
        {filteredProjects.map((project, index) => (
          <motion.li
            key={index}
            variants={cardVariants}
            initial="initial"
            animate={isInView ? "animate" : "initial"}
            transition={{ duration: 0.3, delay: index * 0.4 }}
          >
            <ProjectCard
              key={project.id}
              title={project.title}
              description={project.description}
              imgUrl={project.image}
              gitUrl={project.gitUrl}
              previewUrl={project.previewUrl}
            />
          </motion.li>
        ))}
      </ul>
    </section>
  );
};

export default ProjectsSection;
