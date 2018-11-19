#!/bin/bash
set -e

docker ps -a | grep "arm-builder_$1_1" | awk '{print $NF}' | xargs -I % docker commit % vtsv/arm:$1