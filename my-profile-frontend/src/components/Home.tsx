import React from 'react';
import { ContentContainer, HomeWrapper, Text } from '../styles/StyledComponents';
// import About from './About';
// import Skills from './Skills';
// import Experience from './Experience';
// import Portfolio from './Portfolio';
// import Education from './Education';
// import Awards from './Awards';
// import Resume from './Resume';

const Home: React.FC = () => {
  return (
    <ContentContainer>
      <HomeWrapper>
        <h1>Welcome to my website!</h1>
        <Text>Click the tags in the navigation bar to learn more about me and my journey. Dive into my projects, explore my experiences, and connect with my passions. Happy browsing!</Text>
        {/* <About />
        <Skills />
        <Experience />
        <Portfolio />
        <Education />
        <Awards />
        <Resume /> */}
      </HomeWrapper>
    </ContentContainer>
  );
};

export default Home;
