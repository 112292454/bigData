
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz
wget https://builds.openlogic.com/downloadJDK/openlogic-openjdk/8u292-b10/openlogic-openjdk-8u292-b10-linux-x64.tar.gz

tar -vxf openlogic-openjdk-8u292-b10-linux-x64.tar.gz
tar -xvf hadoop-2.7.7.tar.gz
rm -rf /home/modules/hadoop-2.7.7

mv openlogic-openjdk-8u292-b10-linux-x64 /usr/lib/jvm/
cp -r ./hadoop-2.7.7 /home/modules/
chmod -R 777 /home/modules/hadoop-2.7.7

echo "export JAVA_HOME=/usr/lib/jvm/openlogic-openjdk-8u292-b10-linux-x64/" >> /etc/profile
echo "export JAVA_HOME=/usr/lib/jvm/openlogic-openjdk-8u292-b10-linux-x64/" >> /home/modules/hadoop-2.7.7/etc/hadoop/hadoop-env.sh
echo "export HADOOP_HOME=/home/modules/hadoop-2.7.7" >> /etc/profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
echo "export PATH=\$HADOOP_HOME/bin:\$HADOOP_HOME/sbin:\$PATH" >> /etc/profile
echo "export HADOOP_CLASSPATH=/home/modules/hadoop-2.7.7/share/hadoop/tools/lib/*:\$HADOOP_CLASSPATH" >> /etc/profile
source /etc/profile
java -version

# 手动填充内容
mv /home/modules/hadoop-2.7.7/etc/hadoop/mapred-site.xml.template /home/modules/hadoop-2.7.7/etc/hadoop/mapred-site.xml

nano /home/modules/hadoop-2.7.7/etc/hadoop/core-site.xml

nano /home/modules/hadoop-2.7.7/etc/hadoop/hdfs-site.xml

nano /home/modules/hadoop-2.7.7/etc/hadoop/yarn-site.xml

nano /home/modules/hadoop-2.7.7/etc/hadoop/mapred-site.xml

nano /home/modules/hadoop-2.7.7/etc/hadoop/slaves

# 运行
#hadoop namenode -format
#start-all.sh


apt-get install openssh-client openssh-server
ssh-keygen -t rsa
cat /root/.ssh/id_rsa.pub

./finSet.sh


docker exec -it 657c00d3bae3 bash
docker exec -it 514a0e7d8c7c bash
docker exec -it 33e6899e43ef bash
docker exec -it 120827469e2d bash


./sshSet.sh


nano /etc/hosts

172.21.0.4 node1
172.21.0.3 node2
172.21.0.5 node3
172.21.0.2 node4


nano /root/.ssh/authorized_keys




ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDaSCbn34Me70irYWlFASNR6IBrG1dPlbunaIP84fT52/ImEaPEA0qVAVE+kwqRN2wHJlGtm+s887X+fsbIYXizIC7Y0WfAwS1ppHD9v6mF73+0fV5uVunCqOeNZ9kIorXibODmJLZhKcNNUKYkxceyrQg7ueLNdKwUHkyytOSoXh2QWaQl1MO4QI4Jya04UmK5bsscJVAwP6ZCz9fZZZF3jr2m7D63Nm1+fmwm7P8F9MPoTkM67qN04CWtrs/JkJwqLCbgIT8w1x43p8NCinDIP1jRhxZhdm7ML7rU1PE1Mgz+BcTSkzfkLorJ+oxspuELQdkBrC3tNFR0iMteUaT1 root@657c00d3bae3

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqYtipH2ab2zZ+nyJ7qzVHzK+gcU1p4o6Qu5QY3JIJ4BoJ2ecwKNYwE/4QW0V+jM9r2JX7EiQJhH2D3CikqJRd2kkWjZ2Rc49m0aRta70s/+zKA546skkh1sJ7feYMWmpzUO82VIcS7O0M0JUrxtV/DTvXN+8OtE8sJ2ZIe2XT3hqNhgaOM0oBOtTD2WmL/Lmlz9aOK+ITVz3N34gKO0Yy6VtCM5lI4Tacr/tczErQLmozAMy+3g1QBBZikFwkEvEZyf9Bho30lT7gJQyEVGuqPMPwXMAA3P7nLgVtCe3M4XfOtIaCTyKC20RPwoK7prxYp0HOI3jksshbPumz/byZ root@33e6899e43ef

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCaSzvMt80AKc37QzPzxaBQnwn0mf7zm+p2Rs17pDBOmxud49gYgDA/K7cDfIQHRKjS5S+x+LMk3g0So1udCsL2xMa8DKPU9lpRsBNy8eW49LvgPMrr83FwgDq7X9XY2l6iqfnvV7W5HUIbAzc5aqHF4z4q8Rg5GyQWKx8bOT6jqTdDYwriKBHRHmZSpncvnugxamH2FRH08ZnBh3twAFvI4uStFd+Pvk5dpicJpV0HgRCYBukH8ojh9WQQqyJr932k8eN2eOUfOuxsAWu06SCqzD1kYhsJuKwIYNuJhQ56G3mVSc12JYuWGzJLr7TgGgQAo6mkl2GWnFlELHMYB2Ib root@514a0e7d8c7c

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDyDq9fcIfnljDx9QMgUYvyFnY1L8LV1cOynpZ9bft3lNtEKvKXik/0u/k6s4ZwHypYgYfWiomojInpS/P0nN8L2BM3+FvaSbqbhsYxYpGbzfj4NSJcdS9nTvUlLmAxXyez9+ysnMWOkfI4lR3Wtc27z/6NZE+2DcxUZ3ug/xjfsBPn+bNWMdK4m1ehd7dnFJ7SvhaQ18tMOMN2MYjyuEM9NbsoNZ0gCQ680jYnhM00Q0bCSuvSN5ofShDplMp0Eoj5FNGlO140AvyROJ9rBE6DOvhALCXdy2haLsZoXBuZj6hhGjFpHuLk0Vnbeal3AUM2KIIfiX0YlRhtP0GTAJgl root@120827469e2d


source /etc/profile
jps

cp /home/modules/hadoop-2.7.7 /home/modules/hadoop-2.8.3 -r

