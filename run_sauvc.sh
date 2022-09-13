#!/usr/bin/env bash

docker run --rm -it \
    -v /home/hydro/sauvc:/sauvc \
    -v /home/hydro/stingray_video_records:/root/stingray_video_records \
    -v /dev/v4l/by-path:/dev/v4l/by-path \
    --env="ROS_IP=172.17.0.1" \
    --env="ROS_MASTER_URI=http://172.17.0.1:11311" \
    --net=host \
    --runtime=nvidia \
    --device=/dev/video0 \
    --device=/dev/video2 \
    --device=/dev/ttyS0 \
    -p 8080:8080 \
    --privileged \
    sauvc_autostart:latest \
    bash

echo "Done."
