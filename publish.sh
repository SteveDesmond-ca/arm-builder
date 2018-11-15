#!/bin/bash
set -e

docker login
docker commit arm-builder_arm-builder_1 vtsv/arm-builder:xenial
docker push vtsv/arm-builder:xenial