# 1. Build React frontend
FROM node:14 AS frontend
WORKDIR /app/client
COPY client/package*.json ./
RUN npm install
COPY client/ ./
RUN npm run build

# 2. Setup Node.js server
FROM node:14 AS backend
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY --from=frontend /app/client/build ./client/build

# 3. Nginx for serving frontend
FROM nginx:alpine
# Copy React build files
COPY --from=frontend /app/client/build /usr/share/nginx/html
# Copy Nginx configuration
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
