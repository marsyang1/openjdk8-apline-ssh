FROM 8-jdk-alpine
RUN apk add --update openssh

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
