# Currency Converter

![React](https://img.shields.io/badge/React-18.3.1-blue) 
![Tailwind CSS](https://img.shields.io/badge/TailwindCSS-3.0-blue) 
![JavaScript](https://img.shields.io/badge/JavaScript-ES6-yellow) 
![Vercel](https://img.shields.io/badge/Hosted%20on-Vercel-black)

### 🚀 [Live Demo](https://currency-converter-jaytillu.vercel.app/)

## 🌟 Overview

**Currency Converter** is a feature-rich web application built using **React**, **Tailwind CSS**, and **JavaScript** and hosted on **Vercel**, ensuring fast, reliable deployment. This app converts between multiple currencies using **live exchange rates**. The project is structured with React components and Vite for faster builds. The use of Tailwind CSS ensures a modern and responsive UI. ESLint is integrated for code linting. The app fetches real-time data via API, to display accurate conversions between selected currencies.

## ✨ React Features

- **Functional Components**: This app uses React functional components to build the user interface, ensuring reusability and modularity.
- **State Management with `useState`**: The app utilizes `useState` to manage dynamic data, such as input values and conversion results.
- **Side Effects with `useEffect`**: useEffect is used to fetch live exchange rates, ensuring the data is updated when the component mounts or dependencies change.
- **`useId` for Unique Identifiers**: Used `useId` to generate unique IDs for elements, ensuring accessibility and preventing collisions, especially in dynamic form inputs.
- **Custom Hooks for API Data**: Created custom hooks to encapsulate logic for fetching live currency data from an API, promoting reusability and separation of concerns. This approach improves code organization and simplifies component structure by isolating the data-fetching logic.
- **Props**: Components communicate via props, passing data like selected currencies or conversion rates.
- **Vite**: This tool is used for fast development builds, improving performance compared to traditional bundlers.

## ✨ JavaScript Features

- **API Integration**: The app fetches live exchange rates from an external API using `fetch()` for real-time conversions.
- **ES6+ Features**: It leverages modern JS features like arrow functions, and template literals for cleaner, more concise code.
- **Data Mapping**: The app maps over arrays (e.g., currency options) to dynamically generate elements, ensuring scalability when more currencies are added.
- **Error Handling**: Error boundaries or `try/catch` blocks manage potential API or data fetching errors to enhance user experience.


## 📸 Screenshots

![Alt text](./public/Currency-Converter.png?raw=true "Optional Title")

## 🔧 Installation and Setup

To run this project locally:

1. Clone the repository:  
   ```bash
   git clone https://github.com/Jay-Tillu/Currency-Converter.git
   ```

2. Navigate to the project directory:  
   ```bash
   cd your-repo-name
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Run the Project:
   ```bash
   npm run dev
   ```

Thanks for your time and attention.