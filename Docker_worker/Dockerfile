FROM penolove/centos7:spark_core

COPY start.sh /root/start.sh

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh && /bin/bash;
