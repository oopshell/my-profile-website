import React from 'react';

async function fetchProjectBySlug(slug) {
  try {
    const response = await fetch(`https://api.tiantian-li.me/prod/api/v1/projects/slug/${slug}`);
    if (!response.ok) {
      throw new Error("Failed to fetch project data");
    }
    return await response.json();
  } catch (error) {
    console.error("Error fetching project data:", error);
    return null;
  }
}

const ProjectDetail = async ({ params }) => {
  const { slug } = params;

  try {
    const project = await fetchProjectBySlug(slug);

    if (!project) {
      return (
        <div>
          <h1>Project Detail</h1>
          <p>Project data is currently unavailable.</p>
          <p>Please check back later or contact support for assistance.</p>
        </div>
      );
    }

    return (
      <div>
        <h1>{project.title}</h1>
        <p>{project.description}</p>
        <p>{project.technology}</p>
        <ul>
          {project.details.map((detail) => (
            <li key={detail}>{detail}</li>
          ))}
        </ul>
      </div>
    );
  } catch (error) {
    return (
      <div>
        <h1>Project Detail</h1>
        <p>Failed to fetch project data.</p>
        <p>Please check back later.</p>
      </div>
    );
  }
};

export default ProjectDetail;
