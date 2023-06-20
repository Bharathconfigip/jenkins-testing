FROM centos:latest
Run yum install -y https \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
Run rm -rf photogenic photogenix.zip
CMD ["/use/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80