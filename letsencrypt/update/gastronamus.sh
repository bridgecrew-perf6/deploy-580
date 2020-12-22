#!/bin/sh

/usr/bin/certbot certonly \
    --standalone \
    --email info@gastronamus.sacdis.com \
    --renew-by-default \
    --rsa-key-size 4096 \
    -d gastronamus.sacdis.com \
    --pre-hook 'systemctl stop nginx' \
    --post-hook 'systemctl start nginx'
