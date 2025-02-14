# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (if there's a build step, uncomment the next line)
# RUN npm run build

# Specify the command to run the application
CMD ["npm", "start"]

# Expose the application port (modify this as needed)
EXPOSE 3000
