FROM tomcat:9-jdk17

# Remove default ROOT app (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file to Tomcat
COPY BloodDonation.war /usr/local/tomcat/webapps/ROOT.war

# Copy the start script and give execution permissions
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

