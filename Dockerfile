from debian:stable-slim
RUN apt-get update && apt-get upgrade -yf  \
        && apt-get install -y php php-mysqli  php-gd php-imap php-xml php-mbstring php-apcu apache2 git cron rsyslog
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
