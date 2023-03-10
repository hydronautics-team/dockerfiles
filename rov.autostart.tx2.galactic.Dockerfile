FROM dustynv/ros:galactic-ros-base-l4t-r32.6.1

RUN apt update 
RUN apt install -y --no-install-recommends git wget

RUN mkdir ws
RUN cd ws

# install sauvc dependencies
RUN ln -s /usr/lib/aarch64-linux-gnu/libboost_python-py36.so /usr/lib/aarch64-linux-gnu/libboost_python37.so
RUN ln -s /usr/lib/aarch64-linux-gnu/libboost_python-py36.a /usr/lib/aarch64-linux-gnu/libboost_python37.a

CMD ["bash"]
WORKDIR /
