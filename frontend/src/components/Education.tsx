import React from 'react';
import { 
  ContentContainer, 
  ContentWrapper, 
  Heading, 
  Title, 
  SubTitle, 
  Date, 
  DetailList 
} from '../styles/StyledComponents';


const Education: React.FC = () => (
  <ContentContainer>
    <Heading>Education</Heading>
    <ContentWrapper>
      <Title>University of Melbourne</Title>
      <SubTitle><em>Master of Information Technology (Specialisation in Artificial Intelligence)</em> <Date>Feb 2021 – Jul 2023</Date></SubTitle>
      <DetailList>
        <li>Relevant coursework: Internet Technologies, Algorithms and Complexity, Programming and Software Development (Java), Database Systems & Information Modelling, Cryptography and Security, Software Processes and Management, Security Analytics, Information Visualisation, and Spatial Data Management.</li>
        <li>Publication: Y. Xiang, <strong>T. Li</strong> (co-first author), W. Ren, T. Zhu, and K. K. R. Choo, ``A lightweight privacy-preserving scheme using pixel block mixing for facial image classification in deep learning," <em>Engineering Applications of Artificial Intelligence</em>, vol. 126, pp. 107180, 2023.</li>
      </DetailList>
    </ContentWrapper>

    <ContentWrapper>
      <Title>China University of Geosciences</Title>
      <SubTitle><em>Bachelor of Engineering (Major in Information Security)</em> <Date>Sep 2016 – Jun 2020</Date></SubTitle>
      <DetailList>
        <li>Relevant coursework: Program Design of C Language, Object-Oriented Program Design (C++), Security Program Design, Computer Network and Communication, Management of Software Project, Software Security, Data Structure, Design and Analysis of Algorithms, Network Security, Principle and Security of Database System, Principle and Security of Operating System, and Mathematical Modelling.</li>
        <li>Publication: <strong>T. Li</strong>, W. Ren, Y. Xiang, X. Zheng, T. Zhu, K. K. R. Choo, and G. Srivastava, ``FAPS: A fair, autonomous and privacy-preserving scheme for big data exchange based on oblivious transfer, Ether cheque and smart contracts," <em>Information Sciences</em>, vol. 544, pp. 469-484, 2021.</li>
      </DetailList>
    </ContentWrapper>
  </ContentContainer>
);

export default Education;
