# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
