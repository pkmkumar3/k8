FROM maven:3.8.4-jdk-11
WORKDIR /root
RUN mkdir spring
WORKDIR /root/sp/spring-petclinic
RUN ls 
COPY . /root/spring
RUN ls -l
RUN java -version
WORKDIR /root/spring/
RUN ls -l
RUN mvn package
WORKDIR /root/spring/target
CMD java -jar spring-petclinic-2.6.0-SNAPSHOT.jar 
EXPOSE 8080
