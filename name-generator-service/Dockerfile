FROM openjdk:8-jdk-alpine
ADD target/demo-*.jar name-generator-service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","-Xms256m","-Xmx2048m","/name-generator-service.jar"]