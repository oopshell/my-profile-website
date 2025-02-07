import { NextResponse } from 'next/server';

export async function GET() {
  try {
    const response = await fetch('https://d3ufl59cmg25n3.cloudfront.net/prod/api/v1/projects');
    const projects = await response.json();
    return NextResponse.json(projects);
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch projects' }, { status: 500 });
  }
}