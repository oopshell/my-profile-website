import React from 'react';
import { ContentContainer, Heading, DetailList, Item } from '../styles/StyledComponents';


const Awards: React.FC = () => (
  <ContentContainer>
    <Heading>Awards</Heading>
    <DetailList>
      <Item><strong>Meritorious Winner</strong> of Mathematical Contest in Modeling (MCM), <em>Apr 2019</em>.</Item>
      <Item><strong>State-level First Prize</strong> of Contemporary Undergraduate Mathematical Contest in Modeling (CUMCM), <em>Dec 2018</em>.</Item>
    </DetailList>
  </ContentContainer>
);

export default Awards;
