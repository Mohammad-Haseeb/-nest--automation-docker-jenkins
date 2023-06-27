FROM ubuntu:22.04
FROM node:18
WORKDIR app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your Nest.js app is running on
EXPOSE 3000

# Start the Nest.js app
CMD ["npm", "run", "start"]

