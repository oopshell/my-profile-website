import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Navbar from './components/Navbar';
import Header from './components/Header';
import Home from './components/Home';
import About from './components/About';
import Skills from './components/Skills';
import Experience from './components/Experience';
import Education from './components/Education';
import Awards from './components/Awards';
import Resume from './components/Resume';
import Portfolio from './components/Portfolio';
import Footer from './components/Footer';
import GlobalStyle from './styles/GlobalStyles';
import { AppWrapper, MainContent } from './styles/StyledComponents';


function App() {
  return (
    <Router>
      <GlobalStyle />
      <AppWrapper>
        <Header />
        <Navbar />
        <MainContent>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/about" element={<About />} />
            <Route path="/skills" element={<Skills />} />
            <Route path="/experience" element={<Experience />} />
            <Route path="/portfolio" element={<Portfolio />} />
            <Route path="/education" element={<Education />} />
            <Route path="/awards" element={<Awards />} />
            {/* <Route path="/certifications" element={<Certifications />} /> */}
            <Route path="/resume" element={<Resume />} />
            {/* <Route path="/services" element={<Services />} /> */}
            {/* <Route path="/contact" element={<Contact />} /> */}
          </Routes>
        </MainContent>
        <Footer />
      </AppWrapper>
    </Router>
  );
}

export default App;
