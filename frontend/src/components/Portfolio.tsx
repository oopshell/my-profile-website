import React, { useEffect, useState } from 'react';
import { ContentContainer, Heading, Loading } from '../styles/StyledComponents';
import axios from 'axios';
import ProjectCard from './ProjectCard';
// const apiUrl = import.meta.env.BACKEND_API_URL;


interface Project {
  id: number;
  name: string;
  description: string;
  detail: string;
  link: string;
}

const Portfolio: React.FC = () => {
  const [projects, setProjects] = useState<Project[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  useEffect(() => {
    // axios.get(`${apiUrl}/api/v1/project`)
    axios.get('https://api.tiantian-li.me/api/v1/project')
    // axios.get('https://4b3m5hspfd.execute-api.ap-southeast-2.amazonaws.com/dev/api/v1/project')
      .then(response => {
        setProjects(response.data);
        setLoading(false);
      })
      .catch(error => {
        console.error('There was an error fetching the projects!', error);
        setLoading(false);
      });
  }, []);

  return (
    <ContentContainer>
      <Heading>My Projects</Heading>
      { loading ? (
        <Loading><i><b>Loading...</b></i></Loading>
      ) : (
        projects.map(project => (
          <ProjectCard key={project.id} project={project} />
        ))
      )}
    </ContentContainer>
  );
};

export default Portfolio;
