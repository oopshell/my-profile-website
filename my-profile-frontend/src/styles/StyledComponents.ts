import styled from 'styled-components';

export const HomeWrapper = styled.section`
  padding: 2rem;
  text-align: center;
`;

export const HeaderWrapper = styled.header`
  background-color: #282c34;
  padding: 5rem 0;
  text-align: center;
  color: white;
`;

export const Nav = styled.nav`
  background-color: #333;
  color: white;
  padding: 1rem;
`;

export const NavUl = styled.ul`
  list-style: none;
  padding: 0;
  display: flex;
  justify-content: center;
`;

export const NavLi = styled.li`
  margin-right: 1rem;
  font-size: 1.3em;
`;

export const ContentContainer = styled.section`
  padding: 5vh 10vw;
`;

export const Heading = styled.h2`
  border-bottom: 2px solid #ccc;
  padding-bottom: 5px;
  margin-bottom: 20px;
`;

export const Text = styled.p`
  margin-bottom: 4em;
`;

export const SkillsContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
`;

// export const SkillItem = styled.div`
//   flex: 1 1 45%;
// `;
export const SkillItem = styled.div`
  flex: 1 100%;
  font-size: 1.2em;
`;

export const Title = styled.h3`
  margin-bottom: 12px;
`;

export const SubTitle = styled.p`
  margin-bottom: 10px;
`;

export const ContentWrapper = styled.div`
  padding-bottom: 2vh;
`;

export const Date = styled.span`
  float: right;
`;

export const DetailList = styled.ul`
  list-style: disc outside none; 
  margin-left: 0; 
  padding-left: 1em;
`;

export const Loading = styled.div`
  font-size: 1.3em;
  color: #007BFF;
  text-align: center;
  margin-top: 5vh;
`;

export const Card = styled.div`
  border: 1px solid #ddd;
  padding: 2em 4em;
  margin-bottom: 1rem;
  border-radius: 8px;
  background-color: white;
`;

export const ProjectLink = styled.a`
  display: block;
  margin-top: 1em;
`;

export const Item = styled.li`
  font-size: 1.2em;
`;

export const FooterWrapper = styled.footer`
  background-color: #333;
  color: white;
  text-align: center;
  padding: 1rem;
  position: relative;
  bottom: 0;
  width: 100%;
  font-size: 0.8rem;
  margin-top: 5rem;
`;

export const SocialLinks = styled.div`
  margin: 1rem 0;
  a {
    color: white;
    margin: 0 0.5rem;
    text-decoration: none;
    font-size: 1.5rem;
  }
`;

export const ContactInfo = styled.div`
  margin: 1rem 0;
  p {
    margin: 0.5rem 0;
  }
  a {
    color: white;
    text-decoration: none;
  }
`;

export const Form = styled.form`
  display: flex;
  flex-direction: column;
`;

export const Label = styled.label`
  margin-bottom: 0.5rem;
`;

export const Input = styled.input`
  margin-bottom: 1rem;
  padding: 0.5rem;
  font-size: 1rem;
`;

export const TextArea = styled.textarea`
  margin-bottom: 1rem;
  padding: 0.5rem;
  font-size: 1rem;
`;

export const Button = styled.button`
  padding: 0.5rem;
  font-size: 1rem;
  background-color: #282c34;
  color: white;
  border: none;
  cursor: pointer;
  &:hover {
    background-color: #444;
  }
`;
