# Docker_Spark
#build docker
docker build --rm -t penolove/centos7:spark_master .

# run service
docker run -h master --name spark_core \
-ti penolove/centos7:spark_master

# add interface 
sudo ./pipework enp1s0f0  spark_core 10.0.20.70/24

## more lazy version
# make sure all setting in Docker_master(worker)/start.sh are right and the ip setting in the pipework.sh
- edit start.sh before build
- edit run_spark_core.sh
- edit stop_spark_core.sh

```
cd Docker_Spark/Docker_master;
./build.sh
cd ..
./run_spark_core.sh
```


library installed in Spark_core:
- spark
- python anaconda 2.7.1x
- ssh 
- yum -y groupinstall "X Window System" "Fonts"
- vim, tmux 
- git
- java 1.8

