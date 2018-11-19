FROM ubuntu:xenial

RUN apt-get update \
  && apt-get -y install \
    apt-utils \
    bash-completion \
    bison \
    build-essential \
    curl \
    debootstrap \
    dos2unix \
    fakeroot \
    flex \
    gawk \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    git \
    libsecret-1-dev \
    libpython2.7 \
    nano \
    qemu-user-static \
    pkg-config-arm-linux-gnueabihf \
    python \
    rpm
    
COPY setup.sh .
RUN dos2unix setup.sh
ENTRYPOINT [ "./setup.sh" ]