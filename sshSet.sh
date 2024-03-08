ssh-keygen -t rsa
ip a
cat /root/.ssh/id_rsa.pub
echo '四个设备上均执行此脚本后记录其输出(ssh key & eth的ip)，保存后运行finSet.sh'
source /etc/profile