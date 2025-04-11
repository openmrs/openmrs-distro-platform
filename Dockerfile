# Use a valid OpenMRS distro image
FROM openmrs/openmrs-distro-platform:2.5.11 as dev

# Optional: Add anything extra you need here


# Final stage
FROM openmrs/openmrs-distro-platform:2.5.11

# Copy any custom files if needed
COPY config/openmrs-server.properties /openmrs/openmrs-server.properties

# Expose the default port
EXPOSE 8080

CMD ["java", "-jar", "/openmrs/openmrs.war"]

