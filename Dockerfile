# 该镜像需要依赖的基础镜像
FROM 192.168.3.111:5000/openjdk8:latest
# 将targer目录下的jar包复制到docker容器/home/springboot目录下面目录下面
ADD ./target/springboot4test-1.0-SNAPSHOT.jar /home/springboot/springboot4test.jar
# 声明服务运行在8080端口
EXPOSE 8090
# 执行命令
CMD ["java","-jar","/home/springboot/springboot4test.jar"]

# 指定维护者的名字
MAINTAINER arthur.dy.lee
