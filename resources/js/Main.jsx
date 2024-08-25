// Main.js
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Route,
  createBrowserRouter,
  createRoutesFromElements,
  RouterProvider} from 'react-router-dom';
import MainLayout from './layout/MainLayout';
import Home from './pages/Home';

const router = createBrowserRouter(
  createRoutesFromElements(
    <Route path="/">        
      <Route element={<MainLayout />}>
        <Route path='/' element={<Home />} />
      </Route>
      <Route path="*" element={<h1>Page not found</h1>} />
    </Route>
  )
);


function Main() {
 
  return(
    <RouterProvider router={router} />
  ) 
}

export default Main;

if (document.getElementById('root')) {
  const Index = ReactDOM.createRoot(document.getElementById("root"));

  Index.render(
    <React.StrictMode>
      <Main/>
    </React.StrictMode>
  );
}
