import axios from 'axios';

const postApi = axios.create({
  baseURL: 'https://jsonplaceholder.typicode.com',
});

// const resumeUrl = 'https://s3.ap-southeast-2.amazonaws.com/tiantian-li.me/resume-tiantian_li.pdf';
// const resumeUrl = 'https://d8b56o91hx9z6.cloudfront.net/resume-tiantian_li.pdf';
const resumeUrl = 'https://tiantian-li.me/resume-tiantian_li.pdf';

export const getResumeUrl = () => {
  return resumeUrl;
};

export const getPosts = () => {
  return postApi.get('/posts');
};
