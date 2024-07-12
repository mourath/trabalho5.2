# Use the official OpenJDK image from the Docker Hub
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java program
RUN javac OlaUnicamp.java

# Run the Java program
CMD ["java", "OlaUnicamp"]
