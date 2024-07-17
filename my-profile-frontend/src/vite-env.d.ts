/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly BACKEND_API_URL: string;
  // add more variables here as needed
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
