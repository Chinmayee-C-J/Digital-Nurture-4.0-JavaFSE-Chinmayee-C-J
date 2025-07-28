
import React from 'react';

function CourseDetails() {
  const courses = ['React Basics', 'Advanced React', 'React with TypeScript'];
  return (
    <div>
      <h2>Courses</h2>
      {courses.length > 0 ? (
        <ul>
          {courses.map((course, index) => (
            <li key={index}>{course}</li>
          ))}
        </ul>
      ) : (
        <p>No courses available</p>
      )}
    </div>
  );
}

export default CourseDetails;
