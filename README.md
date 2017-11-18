# Sphinx Build Environment for Docker

## Build Docker Image

```
docker build --rm -t codelibs/sphinx-build .
```

## Run Docker Image

```
docker run -i -t --rm -v <YOUR SPHINX DOCS>:/docs/ codelibs/sphinx-build:latest
```

### Push Latest Image

```
docker push codelibs/sphinx-build:latest
```

### Push Release Images

```
docker tag codelibs/sphinx-build codelibs/sphinx-build:1.0.0
docker push codelibs/sphinx-build:1.0.0
```
