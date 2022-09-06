FROM centos:latest
MAINTAINER ritztechs@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/metal.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip metal.zip
RUN cp -rvf metal-html/* .
RUN rm -rf metal-html metal.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
