# docker-qt

A docker image that provides a full Qt installation, except for Sources, Examples, and Tools packages.

## Use

```bash
docker run --rm -it -v $(pwd):/tmp/dev -w /tmp/dev ksfo/qt:latest /bin/bash -c "qmake && make"
```
