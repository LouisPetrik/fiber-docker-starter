# fiber-docker-starter


Building: 
```bash
docker build -t fiber-docker-starter .
```

Executing the image on your machine: 
```bash
docker run -d -p 80:80 fiber-docker-starter 
```

Executing it for production: 
(The difference is in using the local machine's network, and not mapping the container ports to the machine's ports. This reduces latency but does not work on MacOS or Windows. )
```bash
docker run --net=host -p 80:80 fiber-docker-starter 
```