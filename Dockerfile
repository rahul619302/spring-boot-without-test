FROM openjdk:8-jdk
ADD target/spring-boot-without-test.jar spring-boot-without-test.jar
EXPOSE 9066
ENTRYPOINT ['java', '-jar', 'spring-boot-without-test.jar']