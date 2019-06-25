# Simple Docker container for running a [pg_query](https://github.com/lfittl/pg_query) REST API server

Build the image

```sh
docker build . -t pg_query
```

Run the API server

```sh
docker run -p 4567:4567 --rm -it --name pg_query pg_query
```

Make requests

```sh
curl -d '{"query":"SELECT * FROM users"}' localhost:4567/parse
```
