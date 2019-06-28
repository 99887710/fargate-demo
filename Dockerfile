FROM openjdk:latest
MAINTAINER jeff.wu@retailmerchantservices.co.uk
WORKDIR /app
ADD target/fargate-demo-0.0.1-SNAPSHOT.jar /app
RUN chmod +x fargate-demo-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "fargate-demo-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080