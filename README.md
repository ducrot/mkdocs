# MkDocs Documentation

A Docker container to build documentations with [MkDocs](https://www.mkdocs.org/) 
using [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/) theme.

## Installation

```
git clone https://github.com/ducrot/mkdocs.git my-documentation
cd my-documentation
rm -rf .git
git init
git add .
git commit -m "Initial commit"
docker-compose build
```

## Usage

Write docs to `mkdocs/docs`.

Start container with docker-compose:

```
docker-compose run docs mkdocs serve
```

Open startpage in browser: [http://0.0.0.0:8080](http://0.0.0.0:8080). You can live edit.


## Production Deployment

For production run build with docker-compose:

```
docker-compose run docs mkdocs build
```

and deploy `mkdocs/site/*` to a webserver.
