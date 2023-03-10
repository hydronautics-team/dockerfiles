#!/usr/bin/env bash

docker run --rm -it \
    -v /home/hydro/stingray:/stingray \
    --net=host \
    --device=/dev/ttyS0 \
    dustynv/ros:galactic-ros-base-l4t-r32.6.1 \
    bash

echo "Done."
