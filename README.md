Before running, add the seed data to the data folder in separate JSON files for each collection. 

To run a MongoDB local instance in a Docker container with the seed data, follow these steps:

1. Build the Docker image:
`docker build -t mongodb-with-data .`

2. Run the Docker container:
`docker run -d -p 27017:27017 --name mongodb-container mongodb-with-data`

3. Connect using the local url:
`mongodb://localhost:27017`

or: 
- Create a Docker network:
 `docker network create my-network`
- Run your MongoDB container on this network:
 `docker run -d --name mongodb-container --network my-network mongo:latest`
- Run your application container on the same network:
 `docker run -d --name my-app --network my-network my-app-image`
- use mongodb-container as the hostname: `mongodb://mongodb-container:27017`

4. Use the url in the `.env` file when running the app!

Additional connection types for reviewing data:

1. Using the MongoDB Compass GUI with these settings:
- Hostname: `localhost` (or `mongodb-container` when running in the same Docker Network)
- Port: `27017`

2. Using MongoDB shell directly within the container:
`docker exec -it mongodb-container mongo`