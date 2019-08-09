#!/bin/bash

REPOSITORY=52.62.225.85:5000/auth-test:${Tag}
# build auth image
cat > Dockerfile << EOF
FROM mcr.microsoft.com/java/maven:8u192-zulu-debian9
RUN mkdir /auth
#copy package to work directory
COPY target/*.jar /auth
WORKDIR /auth
EXPOSE 10001:10001
ENTRYPOINT java -server -Xms128m -Xmx1g -jar *.jar
EOF
sudo docker build -t $REPOSITORY --no-cache .
sudo docker push $REPOSITORY
