# ZPL to PDF Converter

This project is a Node.js application that converts ZPL (Zebra Programming Language) files to PDF format. It uses Express for handling HTTP requests, Multer for file uploads, and integrates with an external API for the conversion process.

## Project Structure

```
zpl-converter
├── src
│   └── index.ts          # Main application logic
├── package.json          # NPM configuration and dependencies
├── tsconfig.json         # TypeScript configuration
├── Dockerfile             # Docker image build instructions
├── docker-compose.yml     # Docker Compose configuration
├── .dockerignore          # Files to ignore when building the Docker image
└── README.md              # Project documentation
```

## Getting Started

### Prerequisites

- Node.js (version 14 or higher)
- Docker and Docker Compose (for containerization)

### Installation

1. Clone the repository:

   ```
   git clone <repository-url>
   cd zpl-converter
   ```

2. Install dependencies:

   ```
   npm install
   ```

### Running the Application

You can run the application in two ways: directly using Node.js or using Docker.

#### Running with Node.js

1. Start the application:

   ```
   npm start
   ```

2. Access the application at `http://localhost:3333/conversor-zpl`.

#### Running with Docker

1. Build the Docker image:

   ```
   docker-compose build
   ```

2. Start the application:

   ```
   docker-compose up
   ```

3. Access the application at `http://localhost:3333/conversor-zpl`.

### API Endpoints

- `GET /conversor-zpl`: Serves the HTML interface for file uploads.
- `POST /conversor-zpl/upload`: Uploads a ZIP file containing ZPL files for conversion.
- `GET /conversor-zpl/status/:id`: Checks the status of the conversion process.

### License

This project is licensed under the MIT License. See the LICENSE file for details.