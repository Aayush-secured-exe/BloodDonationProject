FROM tomcat:9-jdk23

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file
COPY BloodDonation.war /usr/local/tomcat/webapps/ROOT.war

# Add start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
