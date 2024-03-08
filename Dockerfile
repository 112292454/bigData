# 使用基础镜像
FROM debian:buster

RUN apt-get update &&apt-get install wget openssh-client openssh-server -y
RUN service ssh start

COPY ./openlogic-openjdk-8u292-b10-linux-x64.tar.gz /usr/src/app/
RUN mkdir /home/modules/ -p
COPY ./hadoop-2.7.7/ /home/modules/hadoop-2.7.7

COPY basicSet.sh /usr/src/app/
WORKDIR /usr/src/app
RUN /usr/src/app/basicSet.sh

# 可以在此添加其他的指令，比如复制源代码等
COPY ./.bashrc /root/.bashrc
COPY ./*.sh /usr/src/app/


# 设置容器启动命令
CMD ["bash", "-c", "while true; do sleep 1; done"]
