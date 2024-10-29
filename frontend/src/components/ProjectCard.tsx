import React from 'react';
import { Card, DetailList, ProjectLink, Title } from '../styles/StyledComponents';


interface Project {
  id: number;
  name: string;
  description: string;
  detail: string;
  link: string;
}

interface ProjectDetail {
  title: string;
  description: string;
}

interface Props {
  project: Project;
}

const ProjectCard: React.FC<Props> = ({ project }) => {
  return (
    <Card>
      <Title>{project.name}, {project.description}</Title>
      <DetailList>
        {JSON.parse(project.detail).map((detail: ProjectDetail, index: number) => (
          <li key={index}>
            <strong>{detail.title}:</strong> {detail.description}
          </li>
        ))}
      </DetailList>
      <ProjectLink href={project.link} target="_blank" rel="noopener noreferrer">View Project</ProjectLink>
    </Card>
  );
};

export default ProjectCard;
