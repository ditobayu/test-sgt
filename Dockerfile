# Build stage
FROM node:16-alpine as build-stage

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build app for production
RUN npm run build

# Production stage
FROM nginx:stable-alpine as production-stage

# Copy built assets from build stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Copy nginx configuration (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
