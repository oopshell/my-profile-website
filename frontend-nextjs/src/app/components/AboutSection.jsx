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
        <li><strong>Frontend: </strong>React, TypeScript, JavaScript, Next.js, Redux</li>
        <li><strong>Backend: </strong>Java, Spring Boot, Python, FastAPI, Node.js, RESTful API, GraphQL, Swagger</li>
        <li><strong>DevOps: </strong>Docker, Kubernetes, Git, CI/CD, GitHub Actions, Jenkins, Vercel, AWS (EC2, Application Load Balancer, S3, Lambda, CloudFront, Route 53, RDS, Amplify)</li>
        <li><strong>AI & Machine Learning: </strong>Scikit-Learn, TensorFlow, PyTorch, LLM (OpenAI API, Llama, Hugging Face Transformers), RAG, LangChain, LLMOps (Prompt Engineering), NLP</li>
        <li><strong>Data & Analytics: </strong>Apache Spark (PySpark), Kafka, Redis, PostgreSQL, MySQL, MongoDB</li>
        <li><strong>Other: </strong>Skilled in Agile development, utilising project tracking and collaboration tools such as Jira and
        Confluence to effectively manage sprints and document workflows</li>
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
        <img src="/images/about-image.png" width={500} height={500} alt="About Image" />
        <div className="mt-4 md:mt-0 text-left flex flex-col h-full">
          <h2 className="text-4xl font-bold text-white mb-4">About Me</h2>
          <p className="text-base lg:text-lg">
            I am a full-stack developer and data scientist skilled in Java, 
            Python, and TypeScript, with expertise across frontend (React, Next.js), 
            backend (Spring Boot, Node.js, RESTful API, GraphQL), and database management with MySQL 
            and NoSQL. Proficient in CI/CD and AWS, I am passionate about working with 
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
