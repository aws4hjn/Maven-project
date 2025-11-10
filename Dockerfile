FROM tomcat:latest
RUN copy -R /var/lib/jenkins/workspace/cicd/target/*.war  /opt/tomcat9/webapps/

