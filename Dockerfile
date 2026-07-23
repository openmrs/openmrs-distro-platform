FROM maven:3.8.5-openjdk-11 as builder

# Clone openmrs-core
RUN git clone https://github.com/openmrs/openmrs-core.git /openmrs-core
WORKDIR /openmrs-core
RUN mvn clean install -DskipTests

FROM tomcat:9.0-jdk11
COPY --from=builder /openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps/openmrs.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
