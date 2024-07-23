import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { 
  ContentContainer, 
  Heading, 
  Loading, 
  ContentWrapper, 
  Title,
  SubTitle,
  Date,
  DetailList
} from '../styles/StyledComponents';
// const apiUrl = import.meta.env.BACKEND_API_URL;


interface ExperienceData {
  id: number;
  companyName: string;
  location: string;
  jobTitle: string;
  dateRange: string;
  description: string;
}

type ExperienceDetail = {
  title: string;
  description: string;
};

const Experience: React.FC = () => {
  const [experiences, setExperiences] = useState<ExperienceData[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  useEffect(() => {
    // fetch('http://localhost:8080/experience')
    //   .then(response => response.json())
    //   .then(data => setExperiences(data));
    // axios.get(`${apiUrl}/api/v1/experience`)
    // axios.get('http://localhost:8080/api/v1/experience')
    // axios.get('http://ec2-3-27-120-84.ap-southeast-2.compute.amazonaws.com:8080/api/v1/experience')
    // axios.get('https://ec2-3-27-120-84.ap-southeast-2.compute.amazonaws.com:8080/api/v1/experience')
    // axios.get('https://ec2-3-27-120-84.ap-southeast-2.compute.amazonaws.com:8443/api/v1/experience')
    // axios.get('https://my-profile-website-elb-607651742.ap-southeast-2.elb.amazonaws.com/api/v1/experience')
    axios.get('https://api.tiantian-li.me/api/v1/experience')
      .then(response => {
        setExperiences(response.data);
        setLoading(false);
      })
      .catch(error => {
        console.error('There was an error fetching the experiences!', error);
        setLoading(false);
      });
  }, []);
  
  return (
    <ContentContainer>
      <Heading>Professional Experience</Heading>
      { loading ? (
        <Loading><i><b>Loading...</b></i></Loading>
      ) : (
        experiences.map(exp => (
          <ContentWrapper key={exp.id}>
            <Title>{exp.jobTitle}, {exp.companyName}</Title>
            <SubTitle><em>{exp.location}</em> <Date>{exp.dateRange}</Date></SubTitle>
            <DetailList>
              {JSON.parse(exp.description).map((detail: ExperienceDetail, index: number) => (
                <li key={index}>
                  <strong>{detail.title}:</strong> {detail.description}
                </li>
              ))}
            </DetailList>
          </ContentWrapper>
        ))
      )}
    </ContentContainer>
  )
};

export default Experience;
