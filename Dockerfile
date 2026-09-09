# Copy base image
FROM node:26-alpine

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./
# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose application port
EXPOSE 5000

# Start application
CMD ["node", "server.js"]