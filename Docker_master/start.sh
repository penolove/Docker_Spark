cp /etc/hosts ~/hosts.news && sed -i "/master/ s/.*/10.0.20.70\tmaster/g" ~/hosts.news &&\
echo '10.0.20.67 invpm27' >> ~/hosts.news;\
yes | cp  ~/hosts.news /etc/hosts ;
