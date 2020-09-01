FROM centos:latest
MAINTAINER muzafferjoya@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/template-1.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip template-1.zip
RUN cp -rvf template-1/* .
RUN rm -rf template-1 template-1.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
