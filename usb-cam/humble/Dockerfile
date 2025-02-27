FROM ros:humble-ros-base@sha256:e1af917f820be2e14ebacd00e503b3f40b1287e89119391e45873c98e61e45c5

RUN apt update && apt install -y --no-install-recommends ros-humble-usb-cam

WORKDIR /
COPY .bashrc /root/.bashrc
RUN chmod +x  /root/.bashrc

RUN echo 'source /opt/ros/humble/setup.bash' >> /root/.bashrc

CMD ["bash"]
