# Sphinx Build Environment for Docker

## Build Docker Image

```
docker build --rm -t codelibs/sphinx-build .
```

## Run Docker Image

```
docker run -i -t --rm -v <YOUR SPHINX DOCS>:/docs/ codelibs/sphinx-build:latest
```
