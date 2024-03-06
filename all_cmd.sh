
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


ip a
nano /etc/hosts

172.20.0.4 node1
172.20.0.2 node2
172.20.0.5 node3
172.20.0.3 node4



nano /root/.ssh/authorized_keys

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHaKsFlgD2dmVyp30n9trDiSVhEfe8A6YVrrETAvvPYK90Hd81ICJQpV6aPAjxCfDh1z68juRmgFyDg2JMjyOvk9uIxinyhWaE2ZfjP68Z42W3deiugccARlQaAzR8txsKnwM50ajdYHAO5QfRfmTx6hEn3Kolt868UZCWXPX+ib5Lxr7p7iLUUIeK3NJj1QhRGljn2hCCrag3XxT9Tm1hI9d2aJ7bYYzUfKBPYFzjYQ+fX1J9uQBKdmadPKPNgAapxBJjKxx+TLDdlOQu4W0cXoatB13Uc3LhS5VDIdR/uKtPGXrYCS4zE87ABVs6L5ZKqWAJfEpiICGM/GEpL7fT root@99b764421b63

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChZ/iOzGkgmVI7myypWLDDGFp6Bw5eZLfSsXUWu5FP7JoWlG132XEiYVwNaUi5WgO99DAyFtk7Iden6gLqYwqLcDo5TCI9bAEQnM4SVn/Wsnouw3lSdrtrOBJDzK6WBc3Aa0Cefteom73eucxSMmZ8m4M5yJs+IJ0RjmZmA8JZAJJGTq0f/YQh/4WBiIJiJS8jm5Ydilqds4S9DXLO5Ccxbuuc8/r/wzLplWVWoSMwi+e4nCAhcY253Vy6jSr6ZfN3m4XGuX1q7dfD8a2uPaXP42mxmDedLKQg1XCT0hPeuPLjdqN2wv/7wUwnCqNxkvt8qMXbffW7aXKplYJCjCBF root@67689f337371

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDpbemBBnQlrKDr/FBa8FWXyyMHOcWLXtjjwu7gDia1m7g2QyqWgkpHqHgTtjKrY9FBI9vK4UBtXQWl25Yz0m7KWeSmIZ6Ra8OAYvcscsvu0vmfDnKZ48Nnns8uebYAIoVq7DOgWEmPhLwUMCmDPHKUfml+PWTwzyLlNB1OZQhvKmSmBkC+JGnPpwRwCsYxDsCCxJqdWkeIfy3uunWs7LiEd6cQ4vSvRzxPSO1fFOOzUvYUDNlvuXtGbMtKYz2v7aaFZBHN3rFCiBdboVu2+rNo9+Hd+ULt/6TRgRZKc2Eup31/jhPMIqjLuA7G+vI1EbwlDHx8SjENLOETlIafsUBt root@84209fd4903d

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCWWeGgXZ8FS4svGJabm6nPt3yrIK37d2GhzCCxymWE17Jgtx23HFp81YU4YruwA33qArw4CEKaxv8Jt+2PRPMQ8efs2szluUkVKoCqwHoH/v9OKYvpg31rhZjB1uQEdfp4Vl+YWDgqS/faih7YtEwJW5b/yxE4gLXITgfd6CiAGhevdyy3OjnV81aEzpX46EdgaykSlyyaohaPS663rwctUNbI+PFFeCVxheZgDFWoUkv+cvQ4GHUgRsVwQO4BrSVanmlnE1hV8M//bklN8Z/6+y7H4XfNMwCV5m6xuw0PqHp/NHHZzja0VD/2NvYzj7pHBUyMqPpj+YzdPDNQUiU7 root@10ccec83dea5


source /etc/profile
jps

cp /home/modules/hadoop-2.7.7 /home/modules/hadoop-2.8.3 -r

