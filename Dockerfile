FROM openjdk:17-alpine
LABEL maintainer="Bech Oleg Igorevich"
EXPOSE 8761
COPY ./target/eureka-server-1.0.jar ROOT.jar
ENTRYPOINT ["java",  "-jar", "ROOT.jar"]