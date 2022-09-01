# dockerfiles
Repository for managing common Dockerfiles

---

## Build `sauvc` container on Jetson TX2

```bash
sudo docker build -t sauvc -f Dockerfile.tx2.noetic.pytorch .
```

## Build `sauvc_autostart` container on Jetson TX2

```bash
sudo docker build -t sauvc_autostart -f Dockerfile.tx2.autostart_sauvc .
```

## Run [sauvc](https://github.com/hidronautics/sauvc) on Jetson TX2
First, clone sauvc repo

```bash
git clone https://github.com/hidronautics/sauvc.git
git submodule update --init --recursive
```

Then run container and build sauvc

```bash
sudo ./run_sauvc_tx2.sh 
```

In container

```bash
cd sauvc
catkin_make 
source devel/setup.bash
```

Then to autostart code on Jetson

```bash
sudo ./run_sauvc_autostart.sh 
```