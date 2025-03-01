FROM dustynv/ros:humble-ros-base-l4t-r36.3.0@sha256:15b670796051ee3be829a559862432c5bafbdcbc93f80555dc6741a90a0f9116

RUN apt update && apt install -y --no-install-recommends git python3-pip libopenblas-base libopenmpi-dev libomp-dev wget

RUN wget raw.githubusercontent.com/pytorch/pytorch/5c6af2b583709f6176898c017424dc9981023c28/.ci/docker/common/install_cusparselt.sh 
ENV CUDA_VERSION=12.2
RUN bash ./install_cusparselt.sh

# RUN python3 -m pip install --upgrade pip; python3 -m pip install numpy==’1.26.1’; python3 -m pip install --no-cache https://developer.download.nvidia.cn/compute/redist/jp/v60/pytorch/torch-2.4.0a0+07cecf4168.nv24.05.14710581-cp310-cp310-linux_aarch64.whl
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install numpy==1.26.1
RUN wget -O torch-2.3.0-cp310-cp310-linux_aarch64.whl https://nvidia.box.com/shared/static/mp164asf3sceb570wvjsrezk1p4ftj8t.whl 
RUN python3 -m pip install --no-cache torch-2.3.0-cp310-cp310-linux_aarch64.whl
RUN wget -O torchvision-0.18.0a0+6043bc2-cp310-cp310-linux_aarch64.whl https://nvidia.box.com/shared/static/xpr06qe6ql3l6rj22cu3c45tz1wzi36p.whl
RUN python3 -m pip install --no-cache  torchvision-0.18.0a0+6043bc2-cp310-cp310-linux_aarch64.whl

RUN pip3 install tqdm
RUN pip3 install pandas
RUN pip3 install scipy
RUN pip3 install pillow
RUN pip3 install ipython
RUN pip3 install seaborn
RUN pip3 install matplotlib

RUN apt update && apt install -y --no-install-recommends \
    libzbar-dev \
    build-essential \
    libatlas-base-dev \
    gfortran \
    libfreetype6-dev \
    ffmpeg \
    libyaml-cpp-dev \
    libogg-dev \
    libtheora-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libavutil-dev \
    libavdevice-dev

WORKDIR /additional_packages/src
RUN git clone -b humble https://github.com/ros-perception/vision_opencv.git
RUN mv vision_opencv/cv_bridge/ .
RUN rm -r vision_opencv/
RUN git clone -b humble https://github.com/ros-drivers/zbar_ros.git
RUN git clone -b humble https://github.com/ros-perception/image_common.git
RUN git clone -b humble https://github.com/ros-perception/image_transport_plugins.git
RUN git clone -b 0.7.0 https://github.com/ros-drivers/usb_cam.git

WORKDIR /additional_packages
RUN /bin/bash -c "source /opt/ros/humble/install/setup.bash && colcon build"

WORKDIR /
COPY .bashrc /root/.bashrc
RUN chmod +x  /root/.bashrc

RUN echo 'source /opt/ros/humble/install/setup.bash' >> /root/.bashrc
RUN echo 'source /additional_packages/install/setup.bash' >> /root/.bashrc

RUN rm /torch-2.3.0-cp310-cp310-linux_aarch64.whl
RUN rm /torchvision-0.18.0a0+6043bc2-cp310-cp310-linux_aarch64.whl
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean

CMD ["bash"]
