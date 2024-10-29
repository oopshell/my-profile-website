import React from 'react';
import { FooterWrapper, SocialLinks, ContactInfo } from '../styles/StyledComponents';
import { FaLinkedin, FaGithub, FaEnvelope, FaPhone, FaDownload } from 'react-icons/fa';
import { getResumeUrl } from '../utils/api';



const Footer: React.FC = () => {
  return (
    <FooterWrapper>
      <p>&copy; 2024 My Portfolio. All rights reserved.</p>
      <SocialLinks>
        <a href="https://www.linkedin.com/in/tiant-li/" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn">
          <FaLinkedin />
        </a>
        <a href="https://github.com/oopshell" target="_blank" rel="noopener noreferrer" aria-label="GitHub">
          <FaGithub />
        </a>
        {/* <a href="https://twitter.com/yourprofile" target="_blank" rel="noopener noreferrer" aria-label="Twitter">
          <FaTwitter />
        </a> */}
      </SocialLinks>
      <ContactInfo>
        <p>
          <FaEnvelope /> <a href="mailto:tiantiancscs@gmail.com">tiantiancscs@gmail.com</a>
        </p>
        <p>
          <FaPhone /> (61)0478827929
        </p>
        <p>
          <FaDownload /> <a href={getResumeUrl()} target="_blank" rel="noopener noreferrer" download>Download My Resume</a>
        </p>
      </ContactInfo>
      {/* <nav>
        <a href="/about">About</a> | <a href="/portfolio">Portfolio</a> | <a href="/contact">Contact</a>
      </nav> */}
      {/* <p><a href="/privacy-policy" style={{ color: 'white', textDecoration: 'none' }}>Privacy Policy</a> | <a href="/terms-of-service" style={{ color: 'white', textDecoration: 'none' }}>Terms of Service</a></p> */}
    </FooterWrapper>
  );
};

export default Footer;
