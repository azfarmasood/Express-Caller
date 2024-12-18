# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application source code to the container
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Command to run the application
CMD ["node", "app.js"]
