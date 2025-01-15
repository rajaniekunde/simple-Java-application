# Use an OpenJDK base image with GUI support
FROM openjdk:17-jdk-slim

# Install dependencies for GUI applications
RUN apt-get update && apt-get install -y \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the Java application
COPY App.java /app

# Compile the Java application
RUN javac App.java

# Set the display environment variable for GUI
ENV DISPLAY=:0

# Run the Java application
CMD ["java", "App"]
