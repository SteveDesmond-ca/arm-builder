FROM debian:stretch

RUN apt-get update \
  && apt-get -y install \
    debootstrap \
    dos2unix \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    qemu-user-static
    
COPY setup.sh .
RUN dos2unix setup.sh
ENTRYPOINT [ "./setup.sh" ]