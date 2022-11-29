# A simple Spring Boot Java 11 App

This just a simple Spring Boot Java 11 app for experimenting wis OpenShift s2i builders.

## Requirements

* Java 11
* Gradle 7.0.2+

## Build app

```bash
./gradlew clean build
```

## Run app with gradle

```bash
./gradlew bootRun
```

## Run app from artifact

```bash
./gradlew clean build
java -jar build/libs/foo-demo-0.0.1-SNAPSHOT.jar
```

