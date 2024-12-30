import Link from "next/link";
import Image from "next/image"; // Import Image component
//import global css
import "./globals.css";
//import font
import "@fortawesome/fontawesome-svg-core/styles.css"
import { config } from "@fortawesome/fontawesome-svg-core";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPen, faTrash, faHeart } from '@fortawesome/free-solid-svg-icons';

config.autoAddCss = false;
export default function RootLayout({
   children,
   }: Readonly<{ 
    children: React.ReactNode;
   }>) {
  return (
    <html lang="en" data-theme="light">
      <body>
        {/* Area Header */}
        <header>
          {/* Image Area */}
          {/*<img src="../images/Logoo.jpg" alt="Logo UTI" />*/}
          <Image src="/images/logoo.jpg" alt="Logo UTI" width={320} height={60} />

          {/* Menu Area */}
          <nav className="mt-5 flex justify-center">
            <Link href="/" className="bg-red-400 rounded-full text-white px-5 py-2.5 hover:bg-blue-500 mr-2 w-64">
              Data Mahasiswa
            </Link>
            <Link href="/" className="bg-red-400 rounded-full text-white px-5 py-2.5 hover:bg-blue-500 ml-2 w-64">
              Log Data Mahasiswa
            </Link>
          </nav>
        </header>

        {/* Content Area */}
        {children}

        {/* Footer Area */}
        <footer className="text-white bg-blue-600 py-2 text-center mt-5 flex justify-center">
          Copyright &copy; 2024 - ridhopraa
        </footer>
      </body>
    </html>
  );
}