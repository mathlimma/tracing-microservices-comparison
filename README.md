## Making it easy to choose tracing tool on JVM platform
### Microservices Tracing Comparison: Jaeger x Zipkin

###### *this project is a term paper made by Matheus Lima*

Due to the rise of the internet and the high growth in the number of users, software engineering was forced to look for more resilient architectures. One of the solutions found was to create independent systems that communicate over the network, an architectural pattern we know as microservices.

However, this architectural pattern brings with it a greater difficulty in relation to the observability of the system. Among the difficulties, we can mention the tracing, finding the path that a given request did through the system, because in this approach there are several systems interacting with each other. 

Therefore, the objective of this project is to facilitate the choice of tracing tools through a comparison of the two main open source products available for the JVM platform. In addition, make available this repository with an example project so that it serves as a reference for developers to consult the configuration and compare the benefits of each tool, thus making the best choice for their context.

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


This is a modified source code for blog [Jaeger Integration With Spring Boot Application](https://medium.com/xebia-engineering/jaeger-integration-with-spring-boot-application-3c6ec4a96a6f).
