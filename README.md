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

```bash
docker run --net=host -p 80:80 fiber-docker-starter 
```