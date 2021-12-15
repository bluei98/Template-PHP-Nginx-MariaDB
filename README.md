# Template-PHP-Nginx-MariaDB

This Template is PHP, Nginx, MariaDB running on Docker Service.
For the https service, it also supports scripts that can generate ssl certificates.

## Version Infomation

* PHP: 8.0.13-fpm
* MariaDB: Latest version
* Nginx: Lastest version

## Quick Start

### Ubuntu 20.x
```sh
$ apt update -y && apt install docker.io docker-compose -y
$ git clone https://github.com/bluei98/Template-PHP-Nginx-MariaDB.git
$ cd Template-PHP-Nginx-MariaDB && docker-compose up -d
```

## Quick Install SSL Certification

### Ubuntu 20.x
```sh
$ ./initCertification.sh
```