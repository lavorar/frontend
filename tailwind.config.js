/** @type {import('tailwindcss').Config} */

const { join } = require('path');

module.exports = {
  content: [
    join(__dirname, './pages/**/*.{js,ts,jsx,tsx}'),
    join(__dirname, './components/**/*.{js,ts,jsx,tsx}'),
  ],
  theme: {
    extend: {
      colors: {
        "orange-brand": "#FF784F",
        "orange-high": "#FF7750",
        "orange-dark": "#FF5F63",
        "orange-pastel": "#ff9a22",
        "white-ghost": "rgb(250,250,250)",
      },
    },
  },
  plugins: [],
}
