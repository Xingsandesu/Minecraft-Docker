# Minecraft-Docker
提供Dockerfile模板并附构建教程，让开服变得更简单


#使用方法

#进入此文件夹并docker build -t name . （后面的点不要去掉，name改自己喜欢的名字）

#使用docker run -it -d --name 进程名字 -p 25565:25565 -p 22:22 -v /root/catserver:/server 镜像名字 启动容器

#使用docker exec -it 进程名字 /bin/bash 进入容器

#容器内输入screen -x进入后台

#关于k8s请自行按照官方文档部署


#按照我的启动容器命令，您需要创建/root/server这个目录，也可以自行修改，指定一个目录，您也需要关闭防火墙，或者开放25565端口，也可以修改，指定一个端口

#本项目码头工人毂公开仓库地址 https://hub.docker.com/r/1021461238/mcserver

#容器默认启动最大6G运存 可修改start.sh

#jar存储/jar sh脚本存储/sh 服务端存储/server

#溪木容器云，让开服变得简单，QQ群：332973993

v1.1更新记录:
1,删除sshd服务
2,更换tmux为screen
3,更换核心获取方法
4,增加启动脚本
