# Use official Node.js image cheking for github webhook
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .
#im happy because the app is running know
# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
