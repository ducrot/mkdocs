FROM python:3-alpine
RUN apk add build-base
COPY ./mkdocs/ /mkdocs/
WORKDIR /mkdocs/
RUN pip install mkdocs mkdocs-material
EXPOSE 8080
CMD ["mkdocs", "serve"]
