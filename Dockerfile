FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
RUN apt-get install -y repo
RUN apt-get install -y libwxgtk2.8-dev
RUN apt-get install -y openjdk-8-jdk openjdk-9-jdk
RUN apt-get install -y python-pip
RUN pip install Mako
RUN apt-get install -y gettext
RUN apt-get install -y dosfstools mtools
RUN apt-get install -y genisoimage
RUN apt-get install -y nano
