FROM httpd:2.4

# Change Apache to listen on port 8080
RUN sed -i 's/Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

# Create simple hello world page
RUN echo "Hello World from Docker + GitHub Actions!" > /usr/local/apache2/htdocs/index.html

EXPOSE 8080
