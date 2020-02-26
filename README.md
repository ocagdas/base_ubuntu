# base_ubuntu
base ubuntu

# docker build
```
docker build -f ./DockerfileBaseUbuntu -t zmart/base_ubuntu .
```

# docker run
```
docker run -e uid=`id -u` -v `pwd`:/export --rm -it zmart/base_ubuntu_18_04 /bin/bash
```
