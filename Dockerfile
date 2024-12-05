FROM node:20-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Force install sharp for alpine
RUN npm install --force @img/sharp-linuxmusl-arm64

# Copy the rest of the application code
COPY . .

# Build the Strapi application
RUN npm run build

# Expose the port the app runs on
EXPOSE 1337

# Start the application
CMD ["npm", "run", "start"]
