const ContactApis = {};

ContactApis.index = async() => {
    const res = await axios.get("/api/contact")
        .then(response => {
            return response.data;
        })
        .catch(error => {
            return error;
        });
    return res;
};

export default ContactApis;