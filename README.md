# MkDocs Documentation

A Docker container to build documentations with [MkDocs](https://www.mkdocs.org/) 
using [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/) theme.

Batteries Included: There is also a production ready docker setup powered by [Traefik proxy](https://traefik.io/traefik/) and [NGINX](https://www.nginx.com/). 


## Installation

Clone from GitHub and start a new project: 

```
git clone https://github.com/ducrot/mkdocs.git my-documentation
cd my-documentation
rm -rf .git
git init
git add .
git commit -m "Initial commit"
```

## Usage

### Development

Write docs to `mkdocs/docs`.

Start development container with docker-compose:

    docker-compose -f docker-compose-dev.yml up

Open startpage in browser: [http://0.0.0.0:8080](http://0.0.0.0:8080). You can live edit.


### Production deployment to existing webserver

To generate static production files, run `mkdocs build` with docker-compose:

    docker-compose -f docker-compose-dev.yml run docs-dev mkdocs build

and deploy `mkdocs/site/*` to a webserver.


### Production with nginx and traefik

Update at least Traefik host configuration.

Start production container and serve static files with NGINX and Traefik configuration:

    docker-compose up -d

Default:

- [https://mydomain.test/docs/](https://mydomain.test/docs/)
- Username: user
- Password: test
