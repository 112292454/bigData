#nano /root/.ssh/authorized_keys
#nano /etc/hosts
#nano /home/modules/hadoop-2.7.7/etc/hadoop/slaves
service ssh start

# 写入slave文件
if [ -z "$OTHER_NODE_1" ] || [ -z "$OTHER_NODE_2" ] || [ -z "$OTHER_NODE_3" ] || [ -z "$LOCAL_NODE_NAME" ]; then
    echo "One or more environment variables are missing."
    exit 1
fi
# 设置要替换的环境变量
LOCAL_NODE_NAME_VALUE=$LOCAL_NODE_NAME
OTHER_NODE_1_VALUE=$OTHER_NODE_1
OTHER_NODE_2_VALUE=$OTHER_NODE_2
OTHER_NODE_3_VALUE=$OTHER_NODE_3

# 替换 core-site.xml
sed -i "s|\${LOCAL_NODE_NAME}|$LOCAL_NODE_NAME_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/core-site.xml

# 替换 hdfs-site.xml
sed -i "s|\${LOCAL_NODE_NAME}|$LOCAL_NODE_NAME_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/hdfs-site.xml

# 替换 yarn-site.xml
sed -i "s|\${LOCAL_NODE_NAME}|$LOCAL_NODE_NAME_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/yarn-site.xml

# 替换 mapred-site.xml
sed -i "s|\${LOCAL_NODE_NAME}|$LOCAL_NODE_NAME_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/mapred-site.xml

# 替换 slaves 文件
sed -i "s|\${LOCAL_NODE_NAME}|$LOCAL_NODE_NAME_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/slaves
sed -i "s|\${OTHER_NODE_1}|$OTHER_NODE_1_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/slaves
sed -i "s|\${OTHER_NODE_2}|$OTHER_NODE_2_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/slaves
sed -i "s|\${OTHER_NODE_3}|$OTHER_NODE_3_VALUE|g" /home/modules/hadoop-2.7.7/etc/hadoop/slaves

chmod -R 777 /home/modules/hadoop-2.7.7

hdfs namenode -format
