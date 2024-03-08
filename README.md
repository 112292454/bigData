
#大数据docker版


## 使用

docker配置自强

`docker pull gzy1/bg-basic`

`docker compose up -d`

开四个bash，进入四个容器(`docker ps `,then `docker exec --it xxxxx bash`)，
进入之后运行`source /etc/profile`

之后分别`./sshSet.sh`,按提示及原版文档操作（配sshkey，以及host文件）(基本上就是allCmd的最后面那样，挨个复制粘贴)

最后分别运行`finSet.sh`

即可选一主节点`start-all.sh`


## 构建


`all_cmd`是总的指令（最开始写的是一个sh脚本，想法是尽可能把不需要手动的跑了，所以有wget获取包之类的）

然后改成创建docker，主要配置是``basicSet.sh``，
需要本目录下有相应的环境文件（前面wget那俩玩意，以及附的hadoop/etc ）
