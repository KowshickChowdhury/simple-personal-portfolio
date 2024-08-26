import React, { useEffect, useState } from 'react'
import BlogApis from '../apis/BlogApis';

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

  // const blogs = [
  //   {
  //     title: "First Blog Post",
  //     content: "This is the content of the first blog post.",
  //     link: "#"
  //   },
  //   {
  //     title: "Second Blog Post",
  //     content: "This is the content of the second blog post.",
  //     link: "#"
  //   },
  //   {
  //     title: "Third Blog Post",
  //     content: "This is the content of the third blog post.",
  //     link: "#"
  //   },
  //   {
  //     title: "Third Blog Post",
  //     content: "This is the content of the third blog post.",
  //     link: "#"
  //   }
  // ];
  return (
    <div className="container">
      <div className='text-center py-4'>
        <h1>Blogs</h1>
      </div>
      <div className="row">
        {blogs.map((blog, index) => (
          <div className="col-md-3 mb-4" key={index}>
            <div className="card" style={{ width: '15rem' }}>
              <div className="card-body">
                <h5 className="card-title">{blog.title}</h5>
                <p className="card-text">{blog.content}</p>
                <a href={blog.link} className="btn btn-primary">See More...</a>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Blogs