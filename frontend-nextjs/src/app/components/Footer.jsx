import React from "react";

const Footer = () => {
  return (
    <footer className="footer border z-10 border-t-[#33353F] border-l-transparent border-r-transparent text-white">
      <div className="container p-12 flex justify-between">
        <span>
          <img src="logo.svg" alt="Logo" className="h-10 w-10 bg-transparent rounded-full" />
        </span>
        <p className="text-slate-600">&copy; 2024 My Portfolio. All rights reserved.</p>
      </div>
    </footer>
  );
};

export default Footer;
