# Build a JAR File
#FROM maven:3.6.3-jdk-8-slim AS stage1
#WORKDIR /home/app
#COPY . /home/app/
#RUN mvn -f /home/app/pom.xml clean package

# Create an Image
#FROM openjdk:8-jdk-alpine
#EXPOSE 5000
#COPY --from=stage1 /home/app/target/hello-world-java.jar hello-world-java.jar
#ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java.jar"]


FROM java:8
WORKDIR /
ADD HelloWorld.jar HelloWorld.jar
EXPOSE 8080
CMD java -jar HelloWorld.jar