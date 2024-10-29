import React from 'react';
import { Link } from 'react-router-dom';
import { Nav, NavUl, NavLi } from '../styles/StyledComponents';

const Navbar: React.FC = () => {
  return (
    <Nav>
      <NavUl>
        <NavLi><Link to="/">Home</Link></NavLi>
        <NavLi><Link to="/about">About</Link></NavLi>
        <NavLi><Link to="/skills">Skills</Link></NavLi>
        <NavLi><Link to="/experience">Experience</Link></NavLi>
        <NavLi><Link to="/portfolio">Portfolio</Link></NavLi>
        <NavLi><Link to="/education">Education</Link></NavLi>
        <NavLi><Link to="/awards">Awards</Link></NavLi>
        {/* <Li><Link to="/certifications">Certifications</Link></Li> */}
        <NavLi><Link to="/resume">Resume</Link></NavLi>
        {/* <Li><Link to="/services">Services</Link></Li> */}
        {/* <Li><Link to="/contact">Contact</Link></Li> */}
      </NavUl>
    </Nav>
  );
};

export default Navbar;
