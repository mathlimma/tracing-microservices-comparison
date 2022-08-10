FROM openjdk:8-jdk-alpine
ADD target/demo-*.jar scientist-name-service.jar
EXPOSE 8090
ENTRYPOINT ["java", "-jar","-Xms256m","-Xmx2048m","/scientist-name-service.jar"]
