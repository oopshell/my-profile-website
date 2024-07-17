import React from "react";
import { ContentContainer, Heading, SkillsContainer, SkillItem } from "../styles/StyledComponents";

// const Skills: React.FC = () => {
//   return (
//     <SkillsWrapper>
//       <h2>Skills</h2>
//       {/* languages */}
//       <h3>Languages</h3>
//       <ul>
//         <li>JavaScript</li>
//         <li>TypeScript</li>
//         <li>Python</li>
//         <li>Java</li>
//         <li>HTML</li>
//         <li>CSS</li>
//       </ul>
//       {/* frontend */}
//       <h3>Frontend</h3>
//       <ul>
//         <li>React</li>
//         <li>Redux</li>
//         <li>Material-UI</li>
//         <li>Bootstrap</li>
//         <li>Styled Components</li>
//       </ul>
//       {/* backend */}
//       <h3>Backend</h3>
//       <ul>
//         <li>Node.js</li>
//         <li>Express</li>
//         <li>Flask</li>
//         <li>Spring Boot</li>
//       </ul>
//       {/* databases */}
//       <h3>Databases</h3>
//       <ul>
//         <li>MySQL</li>
//         <li>MongoDB</li>
//         <li>PostgreSQL</li>
//       </ul>
//       {/* tools */}
//       <h3>Tools</h3>
//       <ul>
//         <li>Git</li>
//         <li>GitHub</li>
//         <li>GitLab</li>
//         <li>Postman</li>
//         <li>VS Code</li>
//         <li>IntelliJ IDEA</li>
//         <li>PyCharm</li>
//       </ul>
//       {/* cloud service */}
//       <h3>Cloud Service</h3>
//       <ul>
//         <li>Heroku</li>
//         <li>Netlify</li>
//         <li>Vercel</li>
//         <li>AWS</li>
//         <li>Google Cloud</li>
//       </ul>
//       {/* testing */}
//       <h3>Testing</h3>
//       <ul>
//         <li>Jest</li>
//         <li>React Testing Library</li>
//         <li>Pytest</li>
//         <li>JUnit</li>
//       </ul>
//       {/* devops */}
//       <h3>DevOps</h3>
//       <ul>
//         <li>Docker</li>
//         <li>Kubernetes</li>
//         <li>Jenkins</li>
//         <li>Travis CI</li>
//         <li>Circle CI</li>
//       </ul>
//       {/* others */}
//       <h3>Others</h3>
//       <ul>
//         <li>Agile</li>
//         <li>Scrum</li>
//         <li>RESTful API</li>
//         <li>GraphQL</li>
//         <li>Microservices</li> 
//       </ul>
//     </SkillsWrapper>
//   );
// };

const Skills: React.FC = () => (
  <ContentContainer>
    <Heading>Skills</Heading>
    <SkillsContainer>
      <SkillItem><strong>Languages:</strong> Java, JavaScript, TypeScript, Python, R, Solidity, C</SkillItem>
      <SkillItem><strong>Frontend:</strong> HTML, CSS, React, Next.js, Vue.js, Bootstrap, Vite</SkillItem>
      <SkillItem><strong>Backend:</strong> Node.js, Spring Boot, Express.js, GraphQL, Nest.js</SkillItem>
      <SkillItem><strong>Databases:</strong> MySQL, PostgreSQL, MongoDB, QGIS</SkillItem>
      <SkillItem><strong>Tools:</strong> Docker, Git, Postman, Jira, Trello, Confluence, Tableau</SkillItem>
      <SkillItem><strong>Cloud Services:</strong> AWS</SkillItem>
      <SkillItem><strong>Other:</strong> REST APIs, Agile, Unit Test, TDD</SkillItem>
    </SkillsContainer>
  </ContentContainer>
);

export default Skills;
