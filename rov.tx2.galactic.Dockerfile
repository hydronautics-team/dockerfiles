FROM dustynv/ros:galactic-ros-base-l4t-r32.6.1

RUN apt update 
RUN apt install -y --no-install-recommends git wget

RUN mkdir ws
RUN cd ws

CMD ["bash"]
WORKDIR /
