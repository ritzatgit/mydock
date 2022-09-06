FROM centos:latest
MAINTAINER ritztechs@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/medi.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip medi.zip
RUN cp -rvf medi/* .
RUN rm -rf medi medi.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
