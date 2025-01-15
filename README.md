# Dockerized Java Swing Application

This repository contains a Java Swing GUI application that displays "Welcome to GlobalLogic" with a custom background.

## Contents
- `App.java`: Java Swing application source code.
- `Dockerfile`: Dockerfile for building and running the application in a container.
- `README.md`: Documentation for building and running the containerized application.

## Prerequisites
- Docker installed on your machine.
- An X11 server for running GUI applications in Docker (e.g., `xhost` for Linux or `XQuartz` for macOS).

## Steps to Build and Run the Docker Container

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/DockerizedJavaApp.git
   cd DockerizedJavaApp
