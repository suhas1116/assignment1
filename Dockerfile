# Use a base image with Java and Maven pre-installed
FROM maven:3.8.3-openjdk-11

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file to the working directory
COPY pom.xml .

# Download and cache Maven dependencies
RUN mvn dependency:resolve

# Copy the application source code to the container
COPY src ./src

# Build the application
RUN mvn package

# Expose the desired port (replace 8080 with your application's actual port)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/your-application.jar"]
