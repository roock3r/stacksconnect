# Backend Dockerfile

FROM node:14

WORKDIR /app

# Install backend dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the backend files
COPY . .

EXPOSE 5000

CMD ["npm", "start"]
