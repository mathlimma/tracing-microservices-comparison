FROM openjdk:8-jdk-alpine
ADD target/demo-*.jar animal-name-service.jar
EXPOSE 9000
ENTRYPOINT ["java", "-jar","-Xms256m","-Xmx2048m","/animal-name-service.jar"]
