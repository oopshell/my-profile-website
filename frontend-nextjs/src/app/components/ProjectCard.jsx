import React, { useState } from "react";
import { CodeBracketIcon, EyeIcon, InformationCircleIcon } from "@heroicons/react/24/outline";
import Link from "next/link";
import Image from "next/image";

const ProjectCard = ({ slug, imgUrl, title, description, gitUrl, previewUrl }) => {
  const [imageError, setImageError] = useState(false);

  return (
    <div className="bg-[#181818] rounded-xl overflow-hidden">
      <div className="h-52 md:h-72 relative group">
        {!imageError ? (
          <div className="relative w-full h-full">
            <Image
              src={imgUrl}
              alt={title}
              fill
              style={{ objectFit: 'cover' }}
              onError={() => {
                console.log('Image failed to load:', imgUrl);
                setImageError(true);
              }}
              onLoad={() => console.log('Image loaded successfully:', imgUrl)}
              unoptimized={true}
              priority={true}
            />
          </div>
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-[#181818] text-white text-xl font-bold p-4 text-center">
            {title}
          </div>
        )}
        <div className="overlay items-center justify-center absolute top-0 left-0 w-full h-full bg-[#181818] bg-opacity-0 hidden group-hover:flex group-hover:bg-opacity-80 transition-all duration-500">
          {gitUrl && (
            <Link
              href={gitUrl}
              target="_blank"
              className="h-14 w-14 mr-2 border-2 relative rounded-full border-[#ADB7BE] hover:border-white group/link"
            >
              <CodeBracketIcon className="h-10 w-10 text-[#ADB7BE] absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 cursor-pointer group-hover/link:text-white" />
            </Link>
          )}
          {previewUrl && (
            <Link
              href={previewUrl}
              target="_blank"
              className="h-14 w-14 mr-2 border-2 relative rounded-full border-[#ADB7BE] hover:border-white group/link"
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
      <div className="text-white py-6 px-4">
        <h5 className="text-xl font-semibold mb-2">{title}</h5>
        <p className="text-[#ADB7BE]">{description}</p>
      </div>
    </div>
  );
};

export default ProjectCard;
