# base_ubuntu_18.04
base ubuntu 18.04

# docker build
```
docker build -f ./DockerfileBaseUbuntu18_04 -t zmart/base_ubuntu_18.04 .
```

# docker run
```
docker run -e uid=`id -u` -v `pwd`:/export --rm -it zmart/base_ubuntu_18_04 /bin/bash
```
