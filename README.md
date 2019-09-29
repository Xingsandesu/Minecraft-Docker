# Minecraft-Docker
提供Dockerflie模板并附构建教程，让开服变得更简单


#使用方法

#把服务器核心重命名为mc.jar(可以自定义，但是Dockerfile也要做修改）并放到与Dockerfile同一文件夹

#进入此文件夹并docker build -t name . （后面的点不要去掉，name改自己喜欢的名字）

#使用docker run -it -d --name 进程名字 -p 25565:25565 -p 22:22 -v #/root/catserver:/server 镜像名字 启动容器

#使用docker exec -it 进程名字 /bin/bash 进入容器

#容器内输入 tmux a -t server进入后台

#关于k8s请自行按照官方文档部署

#关于镜像内的sshd服务如果不需要可删除

#按照我的启动容器命令，您需要创建/root/server这个目录，也可以自行修改，指定一个目录，您也需要关闭防火墙，或者开放25565和22端口，也可以修改，指定一个端口

#本项目码头工人毂公开仓库地址 https://hub.docker.com/r/1021461238/mcserver

#使用tag修改镜像标签并push到1021461238/mcserver:tagname支持此项目

#tagname命名规则：［核心名］［版本号］［M最大内存］［附加服务］

#例如 spigot14M4GSSH

#push命令示范 docker push 1021461238/mcserver:spigot14M4GSSH

#溪木容器云，让开服变得简单，QQ群：332973993
