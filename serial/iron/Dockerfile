FROM ros:iron-ros-base@sha256:337f4fbb7fe3dbcca1e11cb68b9c01c9960b69a304657b5c7a156252b563c3f0

RUN apt update && apt install -y --no-install-recommends git wget libboost-system-dev

WORKDIR /additional_packages/src
RUN git clone https://github.com/jinmenglei/serial.git

WORKDIR /additional_packages
RUN /bin/bash -c "source /opt/ros/iron/setup.bash && colcon build"

WORKDIR /
COPY .bashrc /root/.bashrc
RUN chmod +x  /root/.bashrc

RUN echo 'source /opt/ros/iron/setup.bash' >> /root/.bashrc
RUN echo 'source /additional_packages/install/setup.bash' >> /root/.bashrc

CMD ["bash"]
