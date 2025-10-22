FROM node:22.8.0-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the TypeScript files
RUN npm run dev

# Expose the port the app runs on
EXPOSE 9999

# Command to run the application
CMD ["tsx", "src/index.ts"]