# StacksConnect Application

StacksConnect is a social network for developers. This repository contains both the frontend React application and the Node.js backend service.

### Prerequisites

1). Docker and Docker Compose installed on your machine.

2). An .env file in the root directory with necessary environment variables for the backend.
Running the Application

## Using Docker
Building the Docker images:

 ```
 docker-compose build
```

### Starting the services:

 ```
docker-compose up
 ```

This command starts both the frontend and backend. The frontend will be accessible at http://localhost:8080 and the backend at http://localhost:5000.

### Stopping the services:
 ```
docker-compose down
 ```

### Local Development
If you wish to run the frontend and backend locally (outside of Docker), please refer to the individual README files or package.json scripts in the respective directories.
