rom debian:stable-slim
RUN apt-get update && apt-get upgrade -yf  \
        && apt-get install -y php php-mysqli  php-gd php-imap php-xml  php-mbstring php-apcu apache2 git \
        && DEBIAN_FRONTEND=noninteractive apt-get install -yq  postfix \
        && apt-get install -y dovecot-imapd mutt \
        && git clone https://github.com/osTicket/osTicket \
        && cd osTicket \
        && php manage.php deploy --setup /var/www/html/ \
        && rm -rf osTicket \
        && cd /var/www/html/ && cp include/ost-sampleconfig.php include/ost-config.php \
        && chmod 0666 include/ost-config.php \
        && echo "support support" >> /etc/postfix/virtual && postmap /etc/postfix/virtual
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]