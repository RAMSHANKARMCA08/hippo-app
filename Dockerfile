FROM httpd:2.4
MAINTAINER RamSoftTech
COPY **/*.war /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]
EXPOSE 7070
