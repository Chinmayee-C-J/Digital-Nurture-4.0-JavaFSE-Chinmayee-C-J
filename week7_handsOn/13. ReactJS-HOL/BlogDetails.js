
import React from 'react';

function BlogDetails() {
  const blogs = ['React Best Practices', 'Understanding Hooks', 'JSX Explained'];
  return (
    <div>
      <h2>Blog List</h2>
      {blogs.map((blog, index) => <p key={index}>{blog}</p>)}
    </div>
  );
}

export default BlogDetails;
