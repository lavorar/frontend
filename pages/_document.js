import { Html, Head, Main, NextScript } from 'next/document';

export default function Document() {
    return (
        <Html>
            <Head />
            <body
                className="bg-gray-100
      dark:bg-stone-950
      text-gray-700  dark:text-gray-100"
            >
                <Main />
                <NextScript />
            </body>
        </Html>
    );
}