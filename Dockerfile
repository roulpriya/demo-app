FROM amazoncorretto:17
WORKDIR /app

  # Install dependencies
COPY . /app

  # Build the app
RUN ./mvnw package

  # Run the app
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]