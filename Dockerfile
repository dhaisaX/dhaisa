# Use official Node image
#FROM node:18

# Create app directory
#WORKDIR /app

# Copy and install app dependencies
#COPY package*.json ./
#RUN npm install

# Copy app source
#COPY . .

# Install nginx
#RUN apt-get update && apt-get install -y nginx

# Copy custom nginx config
#COPY nginx.conf /etc/nginx/sites-available/default

# Start both nginx and node app
#CMD service nginx start && node index.js

# Base image for Node
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the Node app
CMD ["node", "index.js"]
