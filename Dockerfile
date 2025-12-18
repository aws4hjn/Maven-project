FROM tomcat:latest
COPY /var/lib/jenkins/workspace/dockercicd/target/*.war  /usr/share/tomcat9/webapps

