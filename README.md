# Sphinx Build Environment for Docker

## Build Docker Image

```
docker build --rm -t ghcr.io/codelibs/sphinx-build .
```

## Run Docker Image

```
docker run -i -t --rm -v <YOUR SPHINX DOCS>:/docs/ ghcr.io/codelibs/sphinx-build:latest
```

### Push Latest Image

```
docker push ghcr.io/codelibs/sphinx-build:latest
```

### Push Release Images

```
docker tag ghcr.io/codelibs/sphinx-build ghcr.io/codelibs/sphinx-build:1.0.0
docker push ghcr.io/codelibs/sphinx-build:1.0.0
```
