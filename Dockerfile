# Use the official Node.js 20.9.0 image as a base
FROM node:20.9.0-alpine

# Install ImageMagick

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the NestJS application
RUN yarn build

# Expose the application port
EXPOSE 3000

# Start the NestJS application
CMD ["yarn", "start:prod"]
