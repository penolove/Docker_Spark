cp /etc/hosts ~/hosts.news && sed -i "/master/ s/.*/10.0.20.70\tmaster/g" ~/hosts.news &&\
echo '10.0.20.67 invpm27' >> ~/hosts.news;\
yes | cp  ~/hosts.news /etc/hosts ;

sed -i "/export SPARK_MASTER_HOST=/ s/.*/export SPARK_MASTER_HOST=master/g" /usr/local/spark/conf/spark-env.sh;
sed -i "/localhost/ s/.*//g" /usr/local/spark/conf/slaves;
echo 'invpm27'>> /usr/local/spark/conf/slaves
