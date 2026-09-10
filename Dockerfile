FROM amazonlinux:2023

# Install Apache
RUN dnf install -y httpd && dnf clean all

# Copy website files
COPY index.html /var/www/html/index.html

# Expose Apache port
EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
