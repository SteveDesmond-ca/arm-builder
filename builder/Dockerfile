FROM vtsv/arm:base

RUN apt-get update \
  && apt-get -y install \
    bash-completion \
    bison \
    build-essential \
    curl \
    fakeroot \
    flex \
    gawk \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    git \
    libsecret-1-dev \
    libpython2.7 \
    nano \
    pkg-config-arm-linux-gnueabihf \
    python \
    rpm
    
COPY setup.sh .
RUN dos2unix setup.sh
ENTRYPOINT [ "./setup.sh" ]