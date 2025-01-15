# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the source code to the container
COPY App.java /app

# Compile the Java application
RUN javac App.java

# Set the command to run the Java application
CMD ["java", "App"]
