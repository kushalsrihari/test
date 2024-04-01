FROM maven:3.8.4-jdk-11
WORKDIR /app
COPY pom.xml
COPY . . 
RUN mvn clean install
EXPOSE 9090
CMD ["java", "-jar", "target/app.jar"]
