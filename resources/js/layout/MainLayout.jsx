import { Navigate, Outlet } from "react-router-dom";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

const MainLayout = () => {

  return(
    <div className="d-flex flex-column min-vh-100">
      <Navbar />
      <div className="container flex-grow-1">
        <Outlet />
      </div>
      <Footer />
    </div>
  )
};

export default MainLayout;