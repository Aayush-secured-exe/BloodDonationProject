FROM tomcat:9-jdk17

# Remove default ROOT app (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file to Tomcat
COPY BloodDonation.war /usr/local/tomcat/webapps/BloodDonation.war

# Expose default Tomcat port
EXPOSE 8080

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]

