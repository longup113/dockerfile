# Get base image
FROM centos:7

# Author
MAINTAINER "Lo Tien Thanh"

#Install tools
RUN yum install -y httpd


#Set working Directory
WORKDIR /var/www/html

#copy code to working directory
ADD ./code /var/www/html

EXPOSE 80 443

# start httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
