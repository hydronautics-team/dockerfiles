# dockerfiles
Repository for managing common Dockerfiles

---

## Build container to run [sauvc](https://github.com/hidronautics/sauvc) on Jetson TX2

```bash
sudo docker build -t sauvc -f Dockerfile.tx2.noetic.pytorch .
```

## Run [sauvc](https://github.com/hidronautics/sauvc) on Jetson TX2

First, clone sauvc repo

```bash
git clone https://github.com/hidronautics/sauvc.git
cd sauvc
git checkout gate
cd src/stingray
git checkout develop
cd ../../
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