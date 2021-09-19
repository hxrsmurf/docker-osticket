# Description

This is based on [Debian Stable Slim](https://hub.docker.com/_/debian) and uses  [mariadb](https://hub.docker.com/_/mariadb) to install (osTicket)[https://github.com/osTicket/osTicket].

This is still a work in progress.

# To Do

1. Switch to alpine?
2. Create `support` user for incoming e-mails
3. Configure postfix for [SendGrid relay](https://docs.sendgrid.com/for-developers/sending-email/getting-started-smtp)?

# Notes (testing)

I install Postfix/Dovecot imapd on the Docker host. Have to allow the plaintext authentication
- /etc/dovecot/conf.d/10-auth.conf
