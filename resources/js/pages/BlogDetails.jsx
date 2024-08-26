import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'
import BlogApis from '../apis/BlogApis';

function BlogDetails() {
    const { title } = useParams();
    // console.log('title', title)
    const [blog, setBlog] = useState();

  useEffect(() => {
    getblog();
  }, []);

  const getblog = async () => {
    const res = await BlogApis.show(title);
    if (res.success) {
      setBlog(res.data);
    }
  };
  return (
    <div className='container'>
        <div className='my-4'>
            <h3 className='border-bottom pb-2'>{blog?.title}</h3>
            <p className='text-secondary'>{blog?.content}</p>
        </div>
    </div>
  )
}

export default BlogDetails