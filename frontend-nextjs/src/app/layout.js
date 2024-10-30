import './globals.css'
import { Inter } from 'next/font/google'

const inter = Inter({ subsets: ['latin'] })

export const metadata = {
  title: 'Tiantian Li',
  description: 'Tiantian Li is a skilled fullstack developer and data scientist. Expert in Java, Python, JavaScript, TypeScript, and more. Get in touch for professional solutions and services.',
}

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className={inter.className}>{children}</body>
    </html>
  )
}
