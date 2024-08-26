import React, { useState } from 'react';
import { Link, useLocation } from 'react-router-dom';

const Navbar = () => {
  const [showNavLinks, setShowNavLinks] = useState(false);
  const location = useLocation();

  const handleToggleNav = () => {
    setShowNavLinks(!showNavLinks);
  };

  return (
    <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
      <div className="container">
        <a href="/" className="navbar-brand">Simple Portfolio</a>
        <button
          className="navbar-toggler"
          type="button"
          onClick={handleToggleNav}
          aria-controls="navbarNav"
          aria-expanded={showNavLinks ? "true" : "false"}
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className={`collapse navbar-collapse justify-content-end ${showNavLinks ? "show" : ""}`} id="navbarNav">
          <ul className="navbar-nav ml-auto">
            <li className="nav-item">
              <Link
                to="/"
                className={`nav-link ${location.pathname === '/' ? 'active' : ''}`}
              >
                Home
              </Link>
            </li>
            <li className="nav-item">
              <Link
                to="/about"
                className={`nav-link ${location.pathname === '/about' ? 'active' : ''}`}
              >
                About
              </Link>
            </li>
            <li className="nav-item">
              <Link
                to="/contact"
                className={`nav-link ${location.pathname === '/contact' ? 'active' : ''}`}
              >
                Contact
              </Link>
            </li>
            <li className="nav-item">
              <Link
                to="/blogs"
                className={`nav-link ${location.pathname === '/blog' ? 'active' : ''}`}
              >
                Blogs
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
