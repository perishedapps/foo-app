FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

COPY build/libs/*.jar /opt/app/fat.jar

RUN microdnf install java-11-openjdk-headless openssl ca-certificates \
    && echo "securerandom.source=file:/dev/urandom" >> /usr/lib/jvm/jre/lib/security/java.security \
    && microdnf clean all

ENV JAVA_APP_DIR=/opt/app \
    JAVA_MAJOR_VERSION=11 \
    JAVA_HOME=/etc/alternatives/jre

EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/opt/app/fat.jar"]
