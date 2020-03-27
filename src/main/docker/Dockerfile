#基础镜像，运行环境
# 打包docker镜像出现无法初始化servlet
FROM openjdk:8-jdk-alpine

#FROM java:8

#一个特别指定的目录，用于存储数据，该命令的作用是在/var/lib/docker创建一个名为tmp的目录，在开启redis服务时，需要特别指定redis的数据存储在哪个文件夹，此时这个命令就十分有用
# VOLUME /tmp
#拷贝文件并且重命名
ADD springboot-fastdfs-0.0.1-SNAPSHOT.jar app.jar
#并不是真正的发布端口，这个只是容器部署人员与建立image的人员之间的交流，即建立image的人员告诉容器布署人员容器应该映射哪个端口给外界
EXPOSE 8000
#容器启动时运行的命令，相当于我们在命令行中输入java -jar xxxx.jar，为了缩短 Tomcat 的启动时间，添加java.security.egd的系统属性指向/dev/urandom作为 ENTRYPOINT
#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
