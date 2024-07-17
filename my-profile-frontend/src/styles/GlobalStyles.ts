import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  body {
    font-family: Arial, sans-serif;
    width: 100%;
    min-height: 100vh;
    margin: 0;
    padding: 0;
    background-color: #f0f2f5;
  }

  h1 {
    margin-bottom: 0.5rem;
    padding: 10px 0;
  }

  p {
    font-size: 1.2em;
  }

  header {
    background-color: #282c34;
    padding: 1rem;
    text-align: center;
    color: white;
  }

  nav {
    background-color: #333;
    color: white;
    padding: 1rem;
    margin: 0;
  }

  nav ul {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: center;
  }

  nav ul li {
    display: inline;
    margin-right: 1rem;
  }

  nav ul li a {
    color: white;
    text-decoration: none;
  }

  section {
    padding: 2rem;
  }

  footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 1rem;
    position: fixed;
    bottom: 0;
    width: 100%;
  }
`;

export default GlobalStyle;
