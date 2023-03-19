# FROM python:3
FROM httpd:2.4
#FROM ubuntu/apache2

# Installed dependencies
# RUN rm -rf /var/www/html/index.html

# Copy our project files to somewhere on the container filesystem

COPY ./website/ /usr/local/apache2/htdocs/

# CMD python code.py (based on location in the container)

#EXPOSE 
