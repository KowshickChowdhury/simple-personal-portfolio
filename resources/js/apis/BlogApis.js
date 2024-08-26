const BlogApis = {};

BlogApis.index = async() => {
    const res = await axios.get("/api/blogs")
        .then(response => {
            return response.data;
        })
        .catch(error => {
            return error;
        });
    return res;
};

BlogApis.show = async(title) => {
    const res = await axios.get(`/api/blog/${title}`)
        .then(response => {
            return response.data;
        })
        .catch(error => {
            return error;
        });
    return res;
};

export default BlogApis;