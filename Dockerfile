FROM ubuntu:xenial

RUN apt-get update \
  && apt-get -y install \
    build-essential \
    curl \
    debootstrap \
    dos2unix \
    fakeroot \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    git \
    libsecret-1-dev \
    qemu-user-static \
    python \
    rpm
    
COPY setup.sh .
RUN dos2unix setup.sh
ENTRYPOINT [ "./setup.sh" ]