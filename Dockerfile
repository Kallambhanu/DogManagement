FROM maven:3.8-openjdk-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

FROM openjdk:17-jdk-slim
COPY --from=build /target/DogManagementSystems-0.0.1-SNAPSHOT.jar DogManagementSystems.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]