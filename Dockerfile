FROM tomcat:latest
RUN cp -R /var/lib/jenkins/workspace/dockercicd/target/*.war  /opt/tomcat9/webapps/

