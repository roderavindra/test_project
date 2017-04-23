FROM centos:6

RUN yum install httpd -y\
                curl -y
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]

