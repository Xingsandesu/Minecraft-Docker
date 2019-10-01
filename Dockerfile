FROM openjdk:8u222                                                              
                                                                                
MAINTAINER DanDan_OvO 1021461238@qq.com                                         
                                                                                
#安 装 依 赖                                                                        
RUN apt-get update && \                                                                                                                       apt-get install -y screen && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/* && \                                            
    apt-get clean
                                                                          
#创建服务端文件夹                                                                            
RUN mkdir -p /server 
RUN mkdir -p /jar
RUN mkdir -p /sh

#添加核心文件
RUN wget -P /jar https://yun.teriri.cc/index.php/s/5Yqz3EED9FxfdxW/download & mv download catserver.jar
RUN wget -P /jar https://yun.teriri.cc/index.php/s/5Yqz3EED9FxfdxW/download & mv download spigot1.14.4.jar

#添加脚本文件
ADD start.sh /sh

#设 置 工 作 目 录                                                                    
WORKDIR /server    
                                                                                                       
#设置echo                                                                      
RUN echo eula=true > eula.txt                                              
                                                                                
#暴 露 端 口                                                                    
EXPOSE 25565

#启动脚本
ENTRYPOINT screen -dm -S mc sh /sh/start.sh

