import React, { useState } from "react";
import { CodeBracketIcon, EyeIcon, InformationCircleIcon } from "@heroicons/react/24/outline";
import Link from "next/link";

const ProjectCard = ({ slug, imgUrl, title, description, gitUrl, previewUrl }) => {
  const [imageError, setImageError] = useState(false);
  console.log('ProjectCard rendering:', { title, imgUrl });

  return (
    <div className="bg-[#181818] rounded-xl overflow-hidden w-full border-2 border-green-500">
      {/* Image Container */}
      <div className="h-52 md:h-72 relative group">
        {!imageError ? (
          <img
            src={imgUrl}
            alt={title}
            className="w-full h-full object-cover"
            onError={() => {
              console.log('Project image failed to load:', imgUrl);
              setImageError(true);
            }}
            onLoad={() => console.log('Project image loaded successfully:', imgUrl)}
          />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-[#181818] text-white text-xl font-bold p-4 text-center">
            {title}
          </div>
        )}
        
        {/* Hover overlay */}
        <div className="absolute inset-0 bg-[#181818] bg-opacity-0 flex items-center justify-center opacity-0 group-hover:opacity-100 group-hover:bg-opacity-80 transition-all duration-500">
          <div className="flex gap-4">
            {gitUrl && (
              <Link
                href={gitUrl}
                target="_blank"
                className="h-14 w-14 border-2 relative rounded-full border-[#ADB7BE] hover:border-white group/link"
              >
                <CodeBracketIcon className="h-10 w-10 text-[#ADB7BE] absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 cursor-pointer group-hover/link:text-white" />
              </Link>
            )}
            {previewUrl && (
              <Link
                href={previewUrl}
                target="_blank"
                className="h-14 w-14 border-2 relative rounded-full border-[#ADB7BE] hover:border-white group/link"
              >
                <EyeIcon className="h-10 w-10 text-[#ADB7BE] absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 cursor-pointer group-hover/link:text-white" />
              </Link>
            )}
            <Link
              href={`/project/${slug}`}
              prefetch={false}
              className="h-14 w-14 border-2 relative rounded-full border-[#ADB7BE] hover:border-white group/link"
            >
              <InformationCircleIcon className="h-10 w-10 text-[#ADB7BE] absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 cursor-pointer group-hover/link:text-white" />
            </Link>
          </div>
        </div>
      </div>

      {/* Text Container */}
      <div className="text-white py-6 px-4">
        <h5 className="text-xl font-semibold mb-2">{title}</h5>
        <p className="text-[#ADB7BE]">{description}</p>
      </div>
    </div>
  );
};

export default ProjectCard;
