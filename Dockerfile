FROM tomcat:9.0.56-jre17-temurin-focal
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY webapp/target/*.war /usr/local/tomcat/webapps

EXPOSE 8080
CMD ["catalina.sh", "run"]
