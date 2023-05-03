import React from "react"
import { BrowserRouter as Router, Route, Routes, NavLink } from 'react-router-dom';
import AboutUs from "./AboutUs";
import Academics from './Academics';
import Library from './Library';
import Placements from './Placements';
import Admissions from './Admissions';
import Home from './Home';
function Nav() {
    return (
        <Router>
            <nav className="navbar navbar-expand-lg navbar-light bg-light static-top header-a">
                <div className="container nav-container">
                    <NavLink to="/" class="nav-link navbar-brand">
                        <img src="https://www.sfit.ac.in/images/Emblem.jpg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top" />
                        SFIT
                    </NavLink>

                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>

                    <div className="collapse navbar-collapse alink" id="navbarSupportedContent">
                        <ul className="navbar-nav ml-auto">
                            <li className="nav-item">
                                <NavLink to="/aboutus" className="nav-link">About Us</NavLink>
                            </li>
                            <li className="nav-item">
                                <NavLink to="/academics" className="nav-link">Academics</NavLink>
                            </li>
                            <li className="nav-item">
                                <NavLink to="/library" className="nav-link">Library</NavLink>
                            </li>
                            <li className="nav-item">
                                <NavLink to="/placements" className="nav-link">Placements</NavLink>
                            </li>
                            <li className="nav-item">
                                <NavLink to="/admissions" className="nav-link">Admissions</NavLink>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <Routes>
                <Route exact path="/" element={<Home />} />
                <Route path="/aboutus" element={<AboutUs />} />
                <Route path="/academics" element={<Academics />} />
                <Route path="/library" element={<Library />} />
                <Route path="/placements" element={<Placements />} />
                <Route path="/admissions" element={<Admissions />} />
            </Routes>
        </Router>


    );
}

export default Nav;