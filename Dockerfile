# Dockerfile

FROM openmrs/openmrs-core:latest as dev

# Build steps...

FROM openmrs/openmrs-core:latest

# Copy WAR, modules, etc.
COPY --from=dev /openmrs/distribution/openmrs_core/openmrs.war /openmrs/distribution/openmrs_core/
COPY --from=dev /openmrs/distribution/openmrs-distro.properties /openmrs/distribution/
COPY --from=dev /openmrs/distribution/openmrs_modules /openmrs/distribution/openmrs_modules
COPY --from=dev /openmrs/distribution/openmrs_owas /openmrs/distribution/openmrs_owas

# ✅ Add this line to use your custom DB config
COPY config/openmrs-server.properties /openmrs/openmrs-server.properties

# ✅ Ensure OpenMRS binds to port 8080
EXPOSE 8080

CMD ["java", "-jar", "/openmrs/distribution/openmrs_core/openmrs.war"]
