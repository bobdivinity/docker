FROM debian:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install vim apache2 supervisor wget curl php5 php5-pgsql php5-gd php5-cli php5-curl php-apc php5-dev php-pear php5-intl php5-xsl php5-mcrypt


RUN echo "alias ll='ls -l'" >> /root/.bashrc


##
## CUSTOM (DEBUT)
##

# Suppression du fichier de configuration basique d'Apache
RUN rm -f /etc/apache2/sites-enabled/000-default.conf

# Ajout d'un fichier de configuration basique pour Apache
RUN ln -s /partage/example.conf /etc/apache2/sites-enabled/example.conf

# Mise en place d'une page de garde
RUN ln -s /partage/index.php /var/www/index.php

##
## CUSTOM (FIN)
##


RUN ln -s /partage/supervisord.conf /etc/supervisord.conf


ADD start.sh /usr/local/bin/start.sh
RUN chmod -v +x /usr/local/bin/start.sh

EXPOSE 80 443

CMD ["/usr/local/bin/start.sh"]
