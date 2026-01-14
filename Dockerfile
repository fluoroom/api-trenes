FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application files
COPY . .

# Expose the port the app runs on
EXPOSE 3056

# Start the application
CMD ["npm", "start"]
