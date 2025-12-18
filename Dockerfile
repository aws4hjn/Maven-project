FROM tomcat:latest
RUN cp -R /var/lib/jenkins/workspace/cicd/target/*.war  /opt/tomcat9/webapps/

