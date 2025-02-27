FROM ros:humble-ros-base@sha256:e1af917f820be2e14ebacd00e503b3f40b1287e89119391e45873c98e61e45c5

RUN apt update && apt install -y --no-install-recommends git wget libboost-system-dev

WORKDIR /additional_packages/src
RUN git clone https://github.com/jinmenglei/serial.git

WORKDIR /additional_packages
RUN /bin/bash -c "source /opt/ros/humble/setup.bash && colcon build"

WORKDIR /
COPY .bashrc /root/.bashrc
RUN chmod +x  /root/.bashrc

RUN echo 'source /opt/ros/humble/setup.bash' >> /root/.bashrc
RUN echo 'source /additional_packages/install/setup.bash' >> /root/.bashrc

CMD ["bash"]
