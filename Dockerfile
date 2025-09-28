# Use Java 25 so it matches your compiled classes
FROM openjdk:25

# Copy compiled classes into the container
COPY ./target/classes /tmp/classes

# Set working directory
WORKDIR /tmp

# Run the correct main class
ENTRYPOINT ["java", "-cp", "/tmp/classes", "com.napier.sems.App"]
