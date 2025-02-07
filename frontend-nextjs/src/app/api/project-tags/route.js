import { NextResponse } from 'next/server';

export async function GET() {
  try {
    const response = await fetch('https://d3ufl59cmg25n3.cloudfront.net/prod/api/v1/projects/project-tags');
    const tags = await response.json();
    return NextResponse.json(tags);
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch tags' }, { status: 500 });
  }
}