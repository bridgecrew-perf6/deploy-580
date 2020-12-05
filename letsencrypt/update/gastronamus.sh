#!/bin/sh

/usr/bin/certbot certonly \
    --standalone \
    --email info@gastronamus.doce.solutions \
    --renew-by-default \
    --rsa-key-size 4096 \
    -d gastronamus.doce.solutions \
    --pre-hook 'systemctl stop nginx' \
    --post-hook 'systemctl start nginx'
