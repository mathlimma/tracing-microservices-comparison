FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/demo-*.jar
COPY ${JAR_FILE} /app/bin/app.jar

COPY opentelemetry-javaagent.jar /app/bin

CMD java -Dotel.traces.exporter=jaeger \
         -Dotel.exporter.jaeger.endpoint="http://jaeger:14250/" \
         -Dotel.service.name=animal-name-service \
         -Dapplication.home=/app/bin/ \
         -Dapplication.name=animal-name-service \
         -javaagent:/app/bin/opentelemetry-javaagent.jar \
         -jar \
         /app/bin/app.jar