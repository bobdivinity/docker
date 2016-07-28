FROM debian:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install vim supervisor cron


RUN echo "alias ll='ls -l'" >> /root/.bashrc


##
## CUSTOM (DEBUT)
##

# Mise en place du fichier de la crontab
ADD crontab /var/spool/cron/crontabs/root

# Attribution des droits standard
RUN chmod 600 /var/spool/cron/crontabs/root

# Définition du user:group
RUN chown root:crontab /var/spool/cron/crontabs/root

##
## CUSTOM (FIN)
##


RUN ln -s /partage/supervisord.conf /etc/supervisord.conf


ADD start.sh /usr/local/bin/start.sh
RUN chmod -v +x /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]
