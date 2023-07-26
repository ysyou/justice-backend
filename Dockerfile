FROM openjdk:8-jre-alpine

MAINTAINER clamos <clamos.io>

ADD target/justice-backend-1.0.0.jar app.jar

EXPOSE 10050

ENTRYPOINT ["java","-Duser.timezone=Asia/Seoul","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
#docker build -t justice-backend .
#docker save -o justice-backend.tar justice-backend:latest

#justice-backend.tar 폴더 이동후
#docker load -i justice-backend.tar

# docker build -t justice-backend . & docker justice-backend -o justice-backend.tar justice-backend & docker rmi justice-backend

#개발서버
#docker-compose down && docker rmi justice-backend && docker load -i /root/docker/images/justice-backend.tar && docker-compose up -d
#본청
#docker-compose down && docker rmi justice-backend && docker load -i /docker/patrolcam/images/justice-backend.tar && docker-compose up -d




