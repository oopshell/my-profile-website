import styled from 'styled-components';
import { devices } from './breakpoints';

export const AppWrapper = styled.div`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  min-width: 100vw;
`;

export const MainContent = styled.main`
  flex: 1;
`;

export const HomeWrapper = styled.section`
  padding: 2rem;
  text-align: center;

  @media ${devices.tablet} {
    padding: 4rem;
  }

  @media ${devices.laptop} {
    padding: 6rem;
  }
`;

export const HomeHeading = styled.h1`
  font-size: 2rem;
  text-align: center;
  margin-bottom: 1rem;

  @media ${devices.tablet} {
    font-size: 2.5rem;
  }

  @media ${devices.laptop} {
    font-size: 3rem;
  }

  @media (prefers-color-scheme: dark) {
    color: #f1f1f1;
  }
`;

export const HeaderWrapper = styled.header`
  background-color: #282c34;
  padding: 5rem 0;
  text-align: center;
  color: white;

  @media ${devices.tablet} {
    padding: 3rem 0;
  }

  @media ${devices.laptop} {
    padding: 2rem 0;
  }

  @media (prefers-color-scheme: dark) {
    background-color: #1b1b1b;
    color: #f1f1f1;
  }
`;

export const Nav = styled.nav`
  background-color: #333;
  color: white;
  padding: 1rem;

  @media ${devices.tablet} {
    padding: 0.5rem;
  }

  @media ${devices.laptop} {
    padding: 1.5rem;
  }

  @media (prefers-color-scheme: dark) {
    background-color: #222;
  }
`;

export const NavUl = styled.ul`
  list-style: none;
  padding: 0;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
`;

export const NavLi = styled.li`
  margin-right: 1rem;
  font-size: 1.3em;

  @media ${devices.tablet} {
    font-size: 1.1em;
  }

  @media ${devices.laptop} {
    font-size: 1.5em;
  }
`;

export const ContentContainer = styled.section`
  padding: 5vh 10vw;

  @media ${devices.tablet} {
    padding: 5vh 5vw;
  }

  @media ${devices.laptop} {
    padding: 5vh 15vw;
  }

  @media (prefers-color-scheme: dark) {
    background-color: #121212;
    color: #e1e1e1;
  }
`;

export const Heading = styled.h2`
  border-bottom: 2px solid #ccc;
  padding-bottom: 5px;
  margin-bottom: 20px;

  @media ${devices.tablet} {
    font-size: 1.5rem;
  }

  @media ${devices.laptop} {
    font-size: 2rem;
  }

  @media (prefers-color-scheme: dark) {
    border-color: #444;
  }
`;

export const Text = styled.p`
  margin-bottom: 4em;

  @media ${devices.tablet} {
    font-size: 1rem;
  }

  @media ${devices.laptop} {
    font-size: 1.2rem;
  }

  @media (prefers-color-scheme: dark) {
    color: #d1d1d1;
  }
`;

export const SkillsContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
`;

export const SkillItem = styled.div`
  flex: 1 100%;
  font-size: 1.2em;

  @media ${devices.tablet} {
    flex: 1 45%;
  }

  @media ${devices.laptop} {
    flex: 1 30%;
  }
`;

export const Title = styled.h3`
  margin-bottom: 12px;

  @media (prefers-color-scheme: dark) {
    color: #e1e1e1;
  }
`;

export const SubTitle = styled.p`
  margin-bottom: 10px;

  @media (prefers-color-scheme: dark) {
    color: #c1c1c1;
  }
`;

export const ContentWrapper = styled.div`
  padding-bottom: 2vh;
`;

export const Date = styled.span`
  float: right;

  @media (prefers-color-scheme: dark) {
    color: #b1b1b1;
  }
`;

export const DetailList = styled.ul`
  list-style: disc outside none;
  margin-left: 0;
  padding-left: 1em;

  @media (prefers-color-scheme: dark) {
    color: #c1c1c1;
  }
`;

export const Loading = styled.div`
  font-size: 1.3em;
  color: #007bff;
  text-align: center;
  margin-top: 5vh;
`;

export const Card = styled.div`
  border: 1px solid #ddd;
  padding: 2em 4em;
  margin-bottom: 1rem;
  border-radius: 8px;
  background-color: white;

  @media ${devices.tablet} {
    padding: 1.5em 3em;
  }

  @media ${devices.laptop} {
    padding: 2.5em 5em;
  }

  @media (prefers-color-scheme: dark) {
    background-color: #1e1e1e;
    border-color: #444;
  }
`;

export const ProjectLink = styled.a`
  display: block;
  margin-top: 1em;

  @media (prefers-color-scheme: dark) {
    color: #81a1c1;
  }
`;

export const Item = styled.li`
  font-size: 1.2em;

  @media (prefers-color-scheme: dark) {
    color: #c1c1c1;
  }
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

  @media ${devices.tablet} {
    padding: 0.5rem;
  }

  @media ${devices.laptop} {
    padding: 1.5rem;
  }

  @media (prefers-color-scheme: dark) {
    background-color: #222;
  }
`;

export const SocialLinks = styled.div`
  margin: 1rem 0;

  a {
    color: white;
    margin: 0 0.5rem;
    text-decoration: none;
    font-size: 1.5rem;

    @media ${devices.tablet} {
      font-size: 1.2rem;
    }

    @media ${devices.laptop} {
      font-size: 1.8rem;
    }

    @media (prefers-color-scheme: dark) {
      color: #81a1c1;
    }
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

    @media (prefers-color-scheme: dark) {
      color: #81a1c1;
    }
  }
`;

export const Form = styled.form`
  display: flex;
  flex-direction: column;
`;

export const Label = styled.label`
  margin-bottom: 0.5rem;

  @media (prefers-color-scheme: dark) {
    color: #e1e1e1;
  }
`;

export const Input = styled.input`
  margin-bottom: 1rem;
  padding: 0.5rem;
  font-size: 1rem;

  @media (prefers-color-scheme: dark) {
    background-color: #2e2e2e;
    color: #f1f1f1;
  }
`;

export const TextArea = styled.textarea`
  margin-bottom: 1rem;
  padding: 0.5rem;
  font-size: 1rem;

  @media (prefers-color-scheme: dark) {
    background-color: #2e2e2e;
    color: #f1f1f1;
  }
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

  @media (prefers-color-scheme: dark) {
    background-color: #444;
    &:hover {
      background-color: #666;
    }
  }
`;
