
#wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz
#wget https://builds.openlogic.com/downloadJDK/openlogic-openjdk/8u292-b10/openlogic-openjdk-8u292-b10-linux-x64.tar.gz

tar -vxf openlogic-openjdk-8u292-b10-linux-x64.tar.gz
#tar -xvf hadoop-2.7.7.tar.gz
#rm -rf /home/modules/hadoop-2.7.7

mkdir -p /usr/lib/jvm/openlogic-openjdk-8u292-b10-linux-x64
mv openlogic-openjdk-8u292-b10-linux-x64 /usr/lib/jvm/
#mkdir -p /home/modules/hadoop-2.7.7
#mv ./hadoop-2.7.7 /home/modules/
chmod -R 777 /home/modules/hadoop-2.7.7

echo "export JAVA_HOME=/usr/lib/jvm/openlogic-openjdk-8u292-b10-linux-x64/" >> /etc/profile
echo "export JAVA_HOME=/usr/lib/jvm/openlogic-openjdk-8u292-b10-linux-x64/" >> /home/modules/hadoop-2.7.7/etc/hadoop/hadoop-env.sh
echo "export HADOOP_HOME=/home/modules/hadoop-2.7.7" >> /etc/profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
echo "export PATH=\$HADOOP_HOME/bin:\$HADOOP_HOME/sbin:\$PATH" >> /etc/profile
echo "export HADOOP_CLASSPATH=/home/modules/hadoop-2.7.7/share/hadoop/tools/lib/*:\$HADOOP_CLASSPATH" >> /etc/profile
echo "source /etc/profile" >>/root/.bashrc
apt install nano -y
#java -version
