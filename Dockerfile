FROM maven:3.6-jdk-8-alpine AS builder

WORKDIR /src
COPY . .
RUN mvn clean install

FROM java:8-jre-alpine
COPY --from=builder /src/web/target/home-notes.jar /home-notes.jar
ENTRYPOINT ["java","-jar","home-notes.jar"]


#docker build -t image_name .
#docker run  --network network_name -e "SPRING_PROFILES_ACTIVE=dev"-p 8080:8080 -d --name container_name image_name
#docker run --network skynet -e "SPRING_PROFILES_ACTIVE=dev" -p 8080:8080 config-server

