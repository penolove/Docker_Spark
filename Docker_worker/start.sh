cp /etc/hosts ~/hosts.news && sed -i "/invpm27/ s/.*/10.0.20.67\tinvpm27/g" ~/hosts.news &&\
echo '10.0.20.70 master' >> ~/hosts.news;\
yes | cp  ~/hosts.news /etc/hosts ;

sed -i "/export SPARK_MASTER_HOST=/ s/.*/export SPARK_MASTER_HOST=master/g" /usr/local/spark/conf/spark-env.sh;
sed -i "/export SPARK_MASTER_CORES=/ s/.*/export SPARK_MASTER_CORES=8/g" /usr/local/spark/conf/spark-env.sh;
sed -i "/export SPARK_MASTER_MEMORY=/ s/.*/export SPARK_MASTER_MEMORY=8000m/g" /usr/local/spark/conf/spark-env.sh;
