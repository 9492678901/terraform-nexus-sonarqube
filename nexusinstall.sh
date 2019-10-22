#!bin/bash
cd /opt
 #get url from sona nexus official site https://help.sonatype.com/repomanager3/download
 sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
 sudo tar -xf latest-unix.tar.gz
 sudo chown -R ec2-user:ec2-user sonatype-work/ nexus-3.19.1-01/
 sudo mv nexus-3.19.1-01/ nexus3
 sudo sh -c 'echo "" > nexus3/bin/nexus.rc
 sudo sh -c 'echo 'run as user ="ec2-user"' > nexus3/bin/nexus.rc
 sudo ln -s /opt/nexus3/bin/nexus /etc/init.d/nexus
 cd /etc/init.d
 sudo chkconfig --add nexus
 sudo chkconfig nexus on
 sudo service nexus start
