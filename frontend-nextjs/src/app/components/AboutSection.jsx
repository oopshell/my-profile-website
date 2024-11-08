"use client";
import React, { useTransition, useState } from "react";
// import Image from "next/image";
import TabButton from "./TabButton";

const TAB_DATA = [
  {
    title: "Skills",
    id: "skills",
    content: (
      <ul className="list-disc pl-2">
        <li><strong>Languages: </strong>Java, Python, TypeScript, JavaScript, R, Solidity, C</li>
        <li><strong>Frontend: </strong>HTML5, CSS, SASS, React.js, Next.js, Vue.js, Bootstrap, Vite</li>
        <li><strong>Backend: </strong>Node.js, Spring Boot, Express.js, GraphQL, Nest.js</li>
        <li><strong>Database: </strong>MySQL, PostgreSQL, NoSQL, MongoDB, QGIS, Tableau</li>
        <li><strong>Testing: </strong>Jest, JUnit, TDD, BDD, Unit Test, Integration Test</li>
        <li><strong>DevOps: </strong>Docker, CI/CD, GitHub Actions, AWS (RDS, EC2, S3, CloudFront, Route 53, Load Balancer, Lambda)</li>
        <li><strong>Tools: </strong>Git, Postman, Jira, Trello, Confluence, Slack, Microsoft Teams</li>
        <li><strong>Other: </strong>REST APIs, Agile, CI/CD, OAuth, Data Visualisation, SEO</li>
      </ul>
    ),
  },
  {
    title: "Education",
    id: "education",
    content: (
      <ul className="list-disc pl-2">
        <li><strong>University of Melbourne</strong>, Master of Information Technology in Artificial Intelligence, July 2023</li>
        <li><strong>China University of Geosciences</strong>, Bachelor of Engineering in Information Security, June 2020</li>
      </ul>
    ),
  },
  {
    title: "Certifications",
    id: "certifications",
    content: (
      <ul className="list-disc pl-2">
        <li>AWS Cloud Practitioner</li>
        <li>Google Professional Cloud Developer</li>
      </ul>
    ),
  },
  {
    title: "Awards",
    id: "awards",
    content: (
      <ul className="list-disc pl-2">
        <li><strong>Meritorious Winner</strong> of Mathematical Contest in Modeling (MCM), Apr 2019</li>
        <li><strong>State-level First Prize</strong> of Contemporary Undergraduate Mathematical Contest in Modeling (CUMCM), Dec 2018</li>
      </ul>
    ),
  },
];

const AboutSection = () => {
  const [tab, setTab] = useState("skills");
  const [isPending, startTransition] = useTransition();

  const handleTabChange = (id) => {
    startTransition(() => {
      setTab(id);
    });
  };

  return (
    <section className="text-white" id="about">
      <div className="md:grid md:grid-cols-2 gap-8 items-center py-8 px-4 xl:gap-16 sm:py-16 xl:px-16">
        <img src="/images/about-image.png" width={500} height={1200} alt="About Image" />
        <div className="mt-4 md:mt-0 text-left flex flex-col h-full">
          <h2 className="text-4xl font-bold text-white mb-4">About Me</h2>
          <p className="text-base lg:text-lg">
            I am a full-stack developer and data scientist skilled in Java, 
            Python, and TypeScript, with expertise across frontend (React, Next.js), 
            backend (Node.js, Spring Boot, GraphQL), and database management with MySQL 
            and MongoDB. Proficient in CI/CD and AWS, I am passionate about working with 
            teams to craft secure, high-performance applications and deliver optimised, 
            innovative solutions. Explore my work on my portfolio and GitHub.
          </p>
          <div className="flex flex-row justify-start mt-8">
            <TabButton
              selectTab={() => handleTabChange("skills")}
              active={tab === "skills"}
            >
              {" "}
              Skills{" "}
            </TabButton>
            <TabButton
              selectTab={() => handleTabChange("education")}
              active={tab === "education"}
            >
              {" "}
              Education{" "}
            </TabButton>
            {/* <TabButton
              selectTab={() => handleTabChange("certifications")}
              active={tab === "certifications"}
            >
              {" "}
              Certifications{" "}
            </TabButton> */}
            <TabButton
              selectTab={() => handleTabChange("awards")}
              active={tab === "awards"}
            >
              {" "}
              Awards{" "}
            </TabButton>
          </div>
          <div className="mt-8">
            {TAB_DATA.find((t) => t.id === tab).content}
          </div>
        </div>
      </div>
    </section>
  );
};

export default AboutSection;
