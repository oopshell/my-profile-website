// this is project detail page of one project. fetch projects data from the server by an ID and display the data. the data contains project name, short description, technology used, and list of details.
import React from "react";
import { CircularProgress } from "@material-ui/core";
import { useParams } from "react-router-dom";
import { useQuery } from "react-query";
import axios from "axios";

export const ProjectDetail = () => {
  const { slug } = useParams();
  const { data: project, isLoading } = useQuery(["project", slug], () =>
    // fetch(`/api/project/${slug}`).then((res) => res.json())
    axios.get(`https://api.tiantian-li.me/prod/api/v1/projects/slug/${slug}`)
      .then(response => response.data)
  );

  if (isLoading) {
    return <CircularProgress />;
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
}
