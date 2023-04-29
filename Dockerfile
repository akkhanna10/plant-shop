# Use an official Node.js 
FROM node:alpine

# Set the working directory to /app
WORKDIR '/app'

# Copy package.json and package-lock.json to /app
COPY package.json

# Install dependencies
RUN npm install

# Copy the current directory contents to /app
COPY . .

# Expose port 3000 for the React app
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]
