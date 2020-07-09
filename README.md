# Android x86 build assist scripts

This repository houses scattered binaries and scripts that I've used to build android x86 los/cm-14.1 and aosp 9.0 with microg and various changes

signature spoofing patches came fom https://github.com/lineageos4microg/docker-lineage-cicd

Note that the docker file listed here is a place holder, haven't got a chance to verify whether it works or not due to ubuntu dpkg not behaving with podman build with selinux enabled

if a build environment container is desired, the Dockerfile hosted on https://github.com/lineageos4microg/docker-lineage-cicd works minus a few android x86 specific packages (android x86 iso image building expects ubuntu genisoimage however, changes on standard iso generation make files has to be made using genisoimage provided by a debian container)

likely you'll need these few packages on top of the one provided by lineageos4microg

```
RUN apt-get install -y python-pip
RUN pip install Mako
RUN apt-get install -y gettext
RUN apt-get install -y dosfstools mtools
RUN apt-get install -y genisoimage
```

TODO: prepare working Dockerfile
TODO: brief usage guide
