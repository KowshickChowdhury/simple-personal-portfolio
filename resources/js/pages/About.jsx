import React, { useEffect, useState } from 'react'
import AboutApis from '../apis/AboutApis';

function About() {
    const [about, setAbout] = useState();

  useEffect(() => {
    getAbout();
  }, []);

  const getAbout = async () => {
    const res = await AboutApis.index();
    if (res.success) {
      setAbout(res.data);
    }
  };
  return (
    <div className='container'>
        <div className='my-4'>
            <h3 className='border-bottom pb-2'>{about?.title}</h3>
            <p className='text-secondary'>{about?.content}</p>
        </div>
    </div>
  )
}

export default About