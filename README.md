# Template-PHP-Nginx-MariaDB

* This Template using HTTPS(443 port) only.

## Version Infomation

* PHP: 8.0.13-fpm
* MariaDB: Latest version
* Nginx: Lastest version

## Quick Start

```sh
$ apt update -y && apt install docker.io docker-compose lrzsz -y
$ git clone https://github.com/bluei98/Template-PHP-Nginx-MariaDB.git
$ cd Template-PHP-Nginx-MariaDB && docker-compose up -d
```

## Quick Install SSL Certification

```sh
$ ./initCertification.sh
```