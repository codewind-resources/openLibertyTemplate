# Package the application as a war file
FROM maven:3.6.3-ibmjava-8-alpine AS builder
COPY pom.xml settings.xml ./
COPY src src/
COPY resources resources/
RUN mvn clean package

# Copy the war file over to the open liberty image
FROM openliberty/open-liberty:kernel-java8-openj9-ubi
ARG VERSION=1.0
ARG REVISION=SNAPSHOT

COPY --from=builder --chown=1001:0 src/main/liberty/config /config/
COPY --from=builder --chown=1001:0 target/io.openliberty.sample.getting.started.war /config/apps
COPY --from=builder --chown=1001:0 resources /opt/ol/wlp/output/defaultServerresources
RUN configure.sh 

