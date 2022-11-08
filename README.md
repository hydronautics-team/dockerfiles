# dockerfiles
Repository for managing common Dockerfiles

---

# SAUVC container with all dependencies

> Run this container when you need to debug

## Build `sauvc` container on Jetson TX2
```bash
sudo docker build -t sauvc -f Dockerfile.tx2.noetic.pytorch .
```

## Run [sauvc](https://github.com/hidronautics/sauvc) on Jetson TX2
First, clone sauvc repo

```bash
git clone https://github.com/hidronautics/sauvc.git
git submodule update --init --recursive
```

### Then build container and run

```bash
sudo ./run_sauvc_tx2.sh 
```

### To build sauvc code inside container

```bash
cd sauvc
catkin_make 
source devel/setup.bash
```

# SAUVC autostart container

> Run this container for competitions

### Build `sauvc_autostart` container on Jetson TX2

```bash
sudo docker build -t sauvc_autostart -f Dockerfile.tx2.autostart_sauvc .
```

### Then to autostart code on Jetson

```bash
sudo ./run_sauvc_autostart.sh 
```

### To `attach` to container
```bash
sudo docker attach sauvc_container
```

### To `stop` autostart and `delete` container
```bash
sudo docker update --restart=no sauvc_container
sudo docker rm -f sauvc_container
```
