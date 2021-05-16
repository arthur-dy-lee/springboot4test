FROM registry.cn-hangzhou.aliyuncs.com/bimface_common/centos7-openjdk11:v1

RUN mkdir -p /data
WORKDIR /data
COPY  ./platform-foundation-service/target/platform-foundation-service.jar .
CMD java $JAVA_OPTS -jar platform-foundation-service.jar