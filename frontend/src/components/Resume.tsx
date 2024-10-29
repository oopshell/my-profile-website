import React from 'react';
import { ContentContainer, Heading } from '../styles/StyledComponents';
import { FaDownload } from 'react-icons/fa';
import { getResumeUrl } from '../utils/api';


const Resume: React.FC = () => {
  return (
    <ContentContainer>
      <Heading>Resume</Heading>
      <p>
        <FaDownload /> <a href={getResumeUrl()} target="_blank" rel="noopener noreferrer" download>Download My Resume</a>
      </p>
    </ContentContainer>
  );
};

export default Resume;
