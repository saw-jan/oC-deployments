#!/usr/bin/env bash

# combine config with ssl
cat /etc/apache2/templates/base >>/etc/apache2/templates/ssl

# enable ssl
a2enmod ssl

# start apache
/usr/local/bin/apachectl -e debug -D FOREGROUND
