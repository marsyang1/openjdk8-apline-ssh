###
### WARNING!! , The official docker image openjdk:8-jdk-alpine doesn't upgrade anymore , and the jdk version still at 8u212
### So it will need to create openjdk image by yourself , or just using other distribution open source jdk
###
FROM openjdk:8-jdk-alpine
### 
### https://hub.docker.com/layers/openjdk/library/openjdk/8-jdk-alpine/images/sha256-a3562aa0b991a80cfe8172847c8be6dbf6e46340b759c2b782f8b8be45342717?context=explore
###
# Install font var cURL , doc: https://www.jianshu.com/p/e39ee0cad05b
RUN echo -e "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main\n\
https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/community" > /etc/apk/repositories

RUN apk add --update openssh curl bash ttf-dejavu tzdata

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
