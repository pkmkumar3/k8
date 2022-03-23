FROM maven:3.8.4-jdk-11
WORKDIR /root
RUN mkdir spring
WORKDIR /home/redhat/work/1/s/target
COPY ./target/spring-petclinic-2.6.0-SNAPSHOT.jar /root/spring
WORKDIR /root/spring/
RUN ls -l
WORKDIR /root/spring
CMD java -jar spring-petclinic-2.6.0-SNAPSHOT.jar
