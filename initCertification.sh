#!/bin/bash

SCRIPT=$(readlink -f "$0")
ROOT_DIR=$(dirname "$SCRIPT")

echo -c "What is domain name?"
read domain
echo -c "What is your email?"
read email

cd ~
curl https://get.acme.sh | sh -s

.acme.sh/acme.sh  --register-account  -m ${email} --server zerossl
.acme.sh/acme.sh --issue -d ${domain} -d www.${domain} --webroot ${ROOT_DIR}/src
.acme.sh/acme.sh --install-cert -d ${domain} -d www.${domain}  --webroot ${ROOT_DIR}/src --fullchain-file ${ROOT_DIR}/data/nginx/certs/default.crt --key-file ${ROOT_DIR}/data/nginx/certs/default.key --reloadcmd "docker-compose restart web"
.acme.sh/acme.sh --install-cronjob