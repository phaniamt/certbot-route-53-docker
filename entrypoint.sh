#!/bin/bash

if [[ -z $EMAIL || -z $DOMAIN  || -z $AWS_ACCESS_KEY_ID || -z $AWS_SECRET_ACCESS_KEY ]]; then
        echo "EMAIL, DOMAIN, AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env vars required"
        env
        exit 1
fi

echo "aws_access_key_id=${AWS_ACCESS_KEY_ID}" >> /opt/aws-config
echo "aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}" >> /opt/aws-config

certbot certonly -d ${DOMAIN} --dns-route53  -m  ${EMAIL} --agree-tos --non-interactive --server https://acme-v02.api.letsencrypt.org/directory   || exit 1

