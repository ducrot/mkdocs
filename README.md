# MkDocs Documentation

The documentation is built with [MkDocs](https://www.mkdocs.org/) 
using [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/) theme.

## Installation

```
git clone git@git.ducrot.de:websolutions/mkdocs.git my-documentation
cd my-documentation
rm -rf .git
git init
git add .
git commit -m "Initial commit"
docker-compose up -d
```

## Usage

Write docs to `mkdocs/docs`.

Start container with docker-compose:

```
docker-compose up
```

Open startpage in browser: [http://0.0.0.0:8080](http://0.0.0.0:8080). You can live edit.


## Production Deployment

For production run build with docker-compose:

```
docker-compose exec docs mkdocs build
```

and deploy `mkdocs/site/*` to a webserver.
