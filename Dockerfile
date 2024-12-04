# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Strapi application
RUN npm run build

# Expose the port the app runs on
EXPOSE 1337

# Start the application
CMD ["npm", "run", "develop"]

