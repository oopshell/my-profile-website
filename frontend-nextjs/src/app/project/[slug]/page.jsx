import { Suspense } from 'react';
import Link from 'next/link';
import { notFound } from 'next/navigation';

async function getProjectData(slug) {
  try {
    const projectResponse = await fetch(`https://d3ufl59cmg25n3.cloudfront.net/prod/api/v1/projects/${slug}`);
    
    if (!projectResponse.ok) {
      notFound();
    }

    const project = await projectResponse.json();
    return {
      name: project.name,
      description: project.description,
      git_url: project.gitUrl,
      preview_url: project.previewUrl,
      details: project.details
    };
  } catch (error) {
    console.error('Failed to fetch project data:', error);
    throw new Error('Failed to fetch project data');
  }
}

function LoadingUI() {
  return (
    <div className="container mx-auto px-4 py-8 text-white min-h-screen">
      <div className="animate-pulse">
        <div className="h-8 bg-gray-700 rounded w-1/2 mb-6"></div>
        <div className="h-4 bg-gray-700 rounded w-3/4 mb-8"></div>
        <div className="flex gap-4 mb-8">
          <div className="h-12 w-32 bg-gray-700 rounded"></div>
          <div className="h-12 w-32 bg-gray-700 rounded"></div>
        </div>
        <div className="space-y-12">
          {[1, 2].map((i) => (
            <div key={i}>
              <div className="h-6 bg-gray-700 rounded w-1/3 mb-4"></div>
              <div className="space-y-3">
                <div className="h-4 bg-gray-700 rounded w-full"></div>
                <div className="h-4 bg-gray-700 rounded w-5/6"></div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

function ProjectContent({ project }) {
  return (
    <div className="container mx-auto px-4 py-8 text-white">
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-4xl font-bold">{project.name}</h1>
        <Link 
          href="/#projects" 
          className="px-6 py-2 bg-[#1E1E1E] rounded-lg hover:bg-[#2E2E2E] transition-colors"
        >
          ← Back to Projects
        </Link>
      </div>
      
      <p className="text-xl text-gray-400 mb-8">{project.description}</p>
      
      <div className="flex gap-4 mb-8">
        {project.git_url && (
          <a
            href={project.git_url}
            target="_blank"
            rel="noopener noreferrer"
            className="px-6 py-3 bg-[#1E1E1E] rounded-lg hover:bg-[#2E2E2E] transition-colors"
          >
            View on GitHub
          </a>
        )}
        {project.preview_url && (
          <a
            href={project.preview_url}
            target="_blank"
            rel="noopener noreferrer"
            className="px-6 py-3 bg-[#1E1E1E] rounded-lg hover:bg-[#2E2E2E] transition-colors"
          >
            Live Preview
          </a>
        )}
      </div>

      <div className="space-y-12">
        {project.details.map((detail, index) => (
          <section key={index} className="mb-8">
            <h2 className="text-2xl font-semibold mb-4">{detail.title}</h2>
            <div className="prose prose-invert max-w-none">
              {detail.description}
            </div>
          </section>
        ))}
      </div>
    </div>
  );
}

export default async function ProjectPage({ params }) {
  const { slug } = params;
  
  return (
    <Suspense fallback={<LoadingUI />}>
      <ProjectContent project={await getProjectData(slug)} />
    </Suspense>
  );
}