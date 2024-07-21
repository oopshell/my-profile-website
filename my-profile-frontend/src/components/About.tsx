import React from 'react';
import { ContentContainer, Heading, Text } from '../styles/StyledComponents';


const About: React.FC = () => (
  <ContentContainer>
    <Heading>About Me</Heading>
    <Text>Highly motivated Full-Stack developer with two years of experience in designing, developing, and maintaining web applications. Proficient in both frontend and backend technologies, with a strong focus on creating efficient and scalable solutions. A fast learner who is passionate about teamwork and adheres to the SOLID principles to ensure robust and maintainable code.</Text>
    <Heading>Languages</Heading>
    <div><strong>Mandarin:</strong> Native</div>
    <div><strong>English:</strong> Professional</div>
  </ContentContainer>
);

export default About;

