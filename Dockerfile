# Use lightweight Node.js base image
FROM node:18-alpine

# Set working directory (as required: lastName_firstName_site)
WORKDIR /chen_yaohuang_site

# Copy only package files first to leverage Docker layer caching
COPY package*.json ./

# Install dependencies (npm ci is faster and reproducible)
RUN npm ci

# Copy the rest of the source code
COPY . .

# CRA dev server respects PORT and HOST env vars
ENV PORT=7775
ENV HOST=0.0.0.0

# Expose the port we want to use
EXPOSE 7775

# Start the development server
CMD ["npm", "start"]
