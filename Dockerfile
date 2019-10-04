FROM centos:7.6.1810                                                              
                                                                                
MAINTAINER DanDan_OvO 1021461238@qq.com     

#设置系统编码
RUN yum install kde-l10n-Chinese -y
RUN yum install glibc-common -y
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
#RUN export LANG=zh_CN.UTF-8
#RUN echo "export LANG=zh_CN.UTF-8" >> /etc/locale.conf
#ENV LANG zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8
                                                                                
#安 装 依 赖                                                                        
RUN yum install -y screen wget java-1.8.0-openjdk*
                                                                          
#创建服务端文件夹                                                                            
RUN mkdir -p /server 
RUN mkdir -p /jar
RUN mkdir -p /sh

#添加核心文件
ADD spigot1.14.4.jar /jar

#添加脚本文件
ADD start.sh /sh
ADD back.sh /sh
ADD run.sh /sh
RUN chmod -x /sh/run.sh
RUN chmod -x /sh/run.sh
RUN ln -s /sh/run.sh /usr/bin/run
RUN ln -s /sh/back.sh /usr/bin/back

#设置服务端
WORKDIR /server
RUN echo eula=true > eula.txt

#暴 露 端 口                                                                    
EXPOSE 25565

