FROM tomcat:latest
RUN cp -R /var/lib/jenkins/workspace/dockercicd/target/*.war  /usr/share/tomcat9/webapps

