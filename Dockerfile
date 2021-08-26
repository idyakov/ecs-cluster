FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install apache2
RUN apt-get -y install curl
COPY index.html /var/www/html/
#COPY page2.html /var/www/html/
#COPY zoom.css /var/www/html/
#COPY city.jpg /var/www/html/
#COPY aws-certified-solutions-architect-associate.png /var/www/html/

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80