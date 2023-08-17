# Use Node.js as base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy server.js
COPY server.js .

# Expose port 3000
EXPOSE 3000

# Start web server
CMD [ "npm", "start" ]

