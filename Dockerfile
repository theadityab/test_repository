# Use the official Tomcat base image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your static content into the Tomcat webapps directory
COPY index.html /usr/local/tomcat/webapps/ROOT/
COPY styles.css /usr/local/tomcat/webapps/ROOT/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
