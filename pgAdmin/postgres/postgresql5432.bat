docker stop postgresql 
docker rm postgresql 
docker run -p 127.0.0.1:5432:5432  --name postgresql -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password -d postgres:latest

docker run -p 127.0.0.1:5432:5432  --name postgresql -e POSTGRES_USER=user -e POSTGRES_PASSWORD=passwordr -e POSTGRES_DB=calypso -d postgres:latest                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       docker stop postgresql 
docker rm postgresql 
docker run -p 127.0.0.1:5432:5432  --name postgresql -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password -d postgres:latest

docker run -p 127.0.0.1:5432:5432  --name postgresql -e POSTGRES_USER=user -e POSTGRES_PASSWORD=passwordr -e POSTGRES_DB=calypso -d postgres:latest