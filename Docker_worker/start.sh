cp /etc/hosts ~/hosts.news && sed -i "/invpm27/ s/.*/10.0.20.67\tinvpm27/g" ~/hosts.news &&\
echo '10.0.20.70 master' >> ~/hosts.news;\
yes | cp  ~/hosts.news /etc/hosts ;
