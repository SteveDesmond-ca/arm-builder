FROM ubuntu:xenial

RUN apt-get update \
  && apt-get -y install \
    apt-utils \
    debootstrap \
    dos2unix \
    qemu-user-static

COPY setup.sh .
RUN dos2unix setup.sh
ENTRYPOINT [ "./setup.sh" ]