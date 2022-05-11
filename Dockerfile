# 版本信息
#java：latest 为centos官方java运行环境镜像，600多M ,可以提前pull到主机本地
FROM java:latest 
MAINTAINER cds "352826256@qq.com"

#实际上可以配置成变量 
ADD cicd-demo-1.0.jar /usr/local/jar/

RUN mv ./target/cicd-demo-1.0.jar  /usr/local/jar/app.jar

#开启内部服务端口 cicd-demo 项目端口
EXPOSE 8090

CMD ["java","-jar","/usr/local/jar/app.jar"]

