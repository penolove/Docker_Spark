docker run -h invpm27 --name spark_core \
    -d penolove/centos7:spark_worker
#docker run -h master --name spark_core \
#    -d penolove/centos7:spark_master
sudo ./pipework.sh
