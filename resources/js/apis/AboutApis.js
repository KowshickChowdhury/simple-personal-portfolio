const AboutApis = {};

AboutApis.index = async() => {
    const res = await axios.get("/api/about")
        .then(response => {
            return response.data;
        })
        .catch(error => {
            return error;
        });
    return res;
};

export default AboutApis;