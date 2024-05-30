FROM tomcat:9.0.81-jre11-temurin-jammy
ADD target/DAPP02Practica03-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
