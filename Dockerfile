# syntax=docker/dockerfile:1

### Dev Stage
FROM openmrs/openmrs-core:dev as dev
WORKDIR /openmrs_distro

ARG OMRS_BUILD_RESULT="/openmrs_distro/target/distro/web"
ARG MVN_ARGS_SETTINGS="-s /usr/share/maven/ref/settings-docker.xml"
ARG MVN_ARGS="install"

# Copy build files
COPY pom.xml openmrs-distro.properties readme.txt ./

# Build the distro
RUN mvn $MVN_ARGS $MVN_ARGS_SETTINGS

RUN cp $OMRS_BUILD_RESULT/openmrs.war /openmrs/distribution/openmrs_core/ && \
    cp $OMRS_BUILD_RESULT/openmrs-distro.properties /openmrs/distribution/ && \
    cp -R $OMRS_BUILD_RESULT/modules /openmrs/distribution/openmrs_modules && \
    cp -R $OMRS_BUILD_RESULT/owa /openmrs/distribution/openmrs_owas

# Clean up after copying needed artifacts
RUN mvn clean $MVN_ARGS_SETTINGS

### Run Stage
# Replace 'nightly' with the exact version of openmrs-core built for production (if available)
FROM openmrs/openmrs-core:nightly

# Do not copy the war if using the correct openmrs-core image version
COPY --from=dev /openmrs/distribution/openmrs_core/openmrs.war /openmrs/distribution/openmrs_core/

COPY --from=dev /openmrs/distribution/openmrs-distro.properties /openmrs/distribution/
COPY --from=dev /openmrs/distribution/openmrs_modules /openmrs/distribution/openmrs_modules
COPY --from=dev /openmrs/distribution/openmrs_owas /openmrs/distribution/openmrs_owas
