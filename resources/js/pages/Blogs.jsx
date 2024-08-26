import React, { useEffect, useState } from 'react'
import BlogApis from '../apis/BlogApis';
import { Link } from 'react-router-dom';

function Blogs() {
  const [blogs, setBlogs] = useState([]);

  useEffect(() => {
    getblogs();
  }, []);

  const getblogs = async () => {
    const res = await BlogApis.index();
    if (res.success) {
      setBlogs(res.data);
    }
  };

  const truncateContent = (content, wordLimit) => {
    const words = content.split(' ');
    return words.length > wordLimit
      ? words.slice(0, wordLimit).join(' ') + '...'
      : content;
  };

  return (
    <div className="container">
      <div className='text-center py-4'>
        <h1>Blogs</h1>
      </div>
      <div className="row">
        {blogs?.map((blog, index) => (
          <div className="col-md-3 mb-4" key={index}>
            <div className="card" style={{ width: '15rem' }}>
              <div className="card-body">
                <h5 className="card-title">{blog.title}</h5>
                <p className="card-text">{truncateContent(blog.content, 10)}</p>
                <Link to={`/blog/${blog.title}`} className="btn btn-primary">See More...</Link>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Blogs