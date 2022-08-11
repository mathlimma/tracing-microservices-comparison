## Microservices Tracing Comparison
### Jaeger x Zipkin

This is a modified source code for blog [Jaeger Integration With Spring Boot Application](https://medium.com/xebia-engineering/jaeger-integration-with-spring-boot-application-3c6ec4a96a6f).

The idea behind this example is generating names by concatenating famous scientist names with animal names.
After you run the project go to: http://localhost:9090/api/v1/names/random and start generating random names.

* To run the this project you must have the programs below installed on your local machine.
  - maven 
  - java
  - docker

This project benefits from [OpenTelemetry](https://opentelemetry.io/) as a generic way to collect and send spans to tracers.

You can run either with Jaeger
```
sudo bash docker-setup-with-jaeger.sh
```
then go to http://localhost:16686/search to check out the traces.

or Zipkin
```
sudo bash docker-setup-with-zipkin.sh
```
then go to http://localhost:9411 to check out the traces.

The command will install the dependencies and build necessary images to deploy all on docker using docker-compose.

To stop you can do
```
sudo docker-compose -f docker-compose-with-jaeger.yml down
```
or

```
sudo docker-compose -f docker-compose-with-zipkin.yml down
```

