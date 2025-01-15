# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code to the container
COPY App.java /app

# Compile the Java application
RUN javac App.java

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the HTTP server
CMD ["java", "App"]
