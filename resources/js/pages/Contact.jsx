import React, { useEffect, useState } from 'react'
import ContactApis from '../apis/ContactApis';

function Contact() {
    const [contact, setContact] = useState();

    useEffect(() => {
      getContact();
    }, []);
  
    const getContact = async () => {
      const res = await ContactApis.index();
      if (res.success) {
        setContact(res.data);
      }
    };
    return (
      <div className='container'>
        <div className="row">
            <h3 className='border-bottom pb-2 my-4'>{contact?.title}</h3>
            <div className="col-md-6">
                <form style={{width: '26rem'}}>
                    <div data-mdb-input-init class="form-outline mb-4">
                        <input type="text" id="form4Example1" class="form-control" />
                        <label class="form-label" for="form4Example1">Name</label>
                    </div>

                    <div data-mdb-input-init class="form-outline mb-4">
                        <input type="email" id="form4Example2" class="form-control" />
                        <label class="form-label" for="form4Example2">Email address</label>
                    </div>

                    <div data-mdb-input-init class="form-outline mb-4">
                        <textarea class="form-control" id="form4Example3" rows="4"></textarea>
                        <label class="form-label" for="form4Example3">Message</label>
                    </div>

                    <div class="form-check d-flex justify-content-center mb-4">
                        <input
                        class="form-check-input me-2"
                        type="checkbox"
                        value=""
                        id="form4Example4"
                        checked
                        />
                        <label class="form-check-label" for="form4Example4">
                        Send me a copy of this message
                        </label>
                    </div>

                    <button data-mdb-ripple-init type="button" class="btn btn-primary btn-block mb-4">Send</button>
                </form>
            </div>
            <div className='col-md-6'>
                <p className='text-secondary'>{contact?.content}</p>
            </div>
        </div>
      </div>
    )
}

export default Contact