# Use Node 18 base image, Alpine is small and fast.
FROM node:18-alpine

# Make a work folder inside container. All commands run here. (as required: lastName_firstName_site)
WORKDIR /chen_yaohuang_site

# Only copy package files first, so Docker can cache dependencies.
COPY package*.json ./

# Install all project libraries from package.json (npm ci is faster and reproducible)
RUN npm ci

# Copy the rest of the source code
COPY . .

# Set the port number for React server
ENV PORT=7775

# Let the app listen to all IPs
ENV HOST=0.0.0.0

# Tell Docker this container will use port 7775.
EXPOSE 7775

# Run npm start to launch the React app when container starts.
CMD ["npm", "start"]
